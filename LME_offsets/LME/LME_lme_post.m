function out = LME_lme_post(M,lme,D,P)

    N_rnd = P.do_sampling;
    clear('out')

    % *********************************************************************
    % Assigning parameters
    % *********************************************************************
    if P.do_region == 1,
        N_region = M.N_region;
    end
    if P.do_season == 1,
        N_season = M.N_season;
    end
    if P.do_decade == 1,
        N_decade = M.N_decade;
    end

    % *********************************************************************
    % fixed effects
    % *********************************************************************
    disp('Staring Post Process ...')
    clear('b_fixed','b_fixed_std','b_random','b_random_std')
    clear('bias_temp','bias_std_temp')
    [b_fixed,~,STATS_fixed] = fixedEffects(lme);
    b_fixed_std = STATS_fixed.SE;
    out.bias_fixed = b_fixed(1:end);
    out.bias_fixed_std = b_fixed_std(1:end);
    out.unique_grp = D.unique_grp;

    if P.do_sampling ~= 0,
        out.Covariance_fixed = lme.CoefficientCovariance;
        rng(100);
        out.bias_fixed_random = mvnrnd(b_fixed,out.Covariance_fixed,N_rnd);
    end

    % *********************************************************************
    % Random effects
    % *********************************************************************
    if M.do_random ~= 0,

        [b_random,b_name,STATS_random] = randomEffects(lme);

        if P.do_sampling ~= 0,
            if 0,
                % !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                % use Woodbury matrix identity,                           !
                % ref:                                                    !
                % https://en.wikipedia.org/wiki/Woodbury_matrix_identity  !
                % !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                disp(' ')
                disp('Computing covariance matrix for random effects ...')
                tic;
                clear('O_inv')
                O_inv = sparse(size(M.W,1),size(M.W,1));
                for ct = 1:size(M.W,1)
                    O_inv(ct,ct) = M.W(ct) ./ lme.MSE;
                end

                clear('Z_sum','N_rnd_eff')
                Z_sum = [];
                for ct = 1:numel(M.Z_in)
                    Z_sum = [Z_sum M.Z_in{ct}];
                    N_rnd_eff(ct) = size(M.Z_in{ct},2);
                end

                clear('G_list')
                G_list = [];
                for ct = 1:numel(N_rnd_eff)
                    G_list = [G_list; diag(lme.covarianceParameters{ct})];
                end

                clear('G','G_inv')
                G = sparse(size(Z_sum,2),size(Z_sum,2));
                G_inv = sparse(size(Z_sum,2),size(Z_sum,2));
                for ct = 1:size(Z_sum,2)
                    G(ct,ct) = G_list(ct);
                    G_inv(ct,ct) = 1./G_list(ct);
                end

                ZT_O_inv_Z = Z_sum' * O_inv * Z_sum;
                only_inv = inv(G_inv + ZT_O_inv_Z);

                out.Covariance_conditional = G - G * ZT_O_inv_Z * G + ...
                    G * ZT_O_inv_Z * only_inv * ZT_O_inv_Z * G;
                disp('Computing covariance matrix for random effects Completes')
                disp(['Took ',num2str(toc),' seconds!'])
                disp(' ')

            else   % Directly compute Matrix inversion ...
                % ---------------------------------------------------------
                % Compute the conditional covariance structure
                % ---------------------------------------------------------
                disp(' ')
                disp('Computing covariance matrix for random effects ...')
                tic;
                O = diag(1 ./ M.W) .* lme.MSE;
                V = zeros(size(M.X_in,1));
                Z_sum = [];
                for i = 1:numel(M.Z_in)
                    V = V + M.Z_in{i} * lme.covarianceParameters{i} * M.Z_in{i}';
                    Z_sum = [Z_sum M.Z_in{i}];
                    N_rnd_eff(i) = size(M.Z_in{i},2);
                end
                V = V + O;
                inv_V = inv(V);

                clear('G')
                for i = 1:numel(N_rnd_eff)
                    dim = [1:N_rnd_eff(i)] + sum(N_rnd_eff(1:i-1));
                    G(dim,dim) = lme.covarianceParameters{i};
                end

                out.Covariance_conditional = G - G * Z_sum' * inv_V * Z_sum * G;
                disp('Computing covariance matrix for random effects Completes')
                disp(['Took ',num2str(toc),' seconds!'])
                disp(' ')
            end

            b_random_std = sqrt(diag(out.Covariance_conditional));
            temp = (out.Covariance_conditional + out.Covariance_conditional')/2;
            rng(1000);
            b_random_random = mvnrnd(b_random,temp,N_rnd);

        end

        % -----------------------------------------------------------------
        % Prepare to put the things into the field
        % -----------------------------------------------------------------
        [~,~,J]=unique(b_name(:,1));
        for i = 1:max(J)
            BB.bias_temp{i} = b_random(J == i);
            if P.do_sampling ~= 0,
                BB.bias_std_temp{i} = b_random_std(J == i);
                BB.bias_random_temp{i} = b_random_random(:,J == i);
            end
        end

        % -----------------------------------------------------------------
        % Put regional effect back
        % -----------------------------------------------------------------
        if P.do_region == 1,
            temp = LME_lme_post_random(BB,M.logic_region,M.reg_id,...
                                      N_region,P.N_groups,P.do_sampling);
            out.bias_region = temp.bias_random;
            if P.do_sampling ~= 0,
                out.bias_region_std = temp.bias_random_std;
                out.bias_region_rnd = temp.bias_random_rnd;
            end
        end

        % -----------------------------------------------------------------
        % Put seasonal effect back
        % -----------------------------------------------------------------
        if P.do_season == 1,
            temp = LME_lme_post_random(BB,M.logic_season,M.sea_id,...
                                      N_season,P.N_groups,P.do_sampling);
            out.bias_season = temp.bias_random;
            if P.do_sampling ~= 0,
                out.bias_season_std = temp.bias_random_std;
                out.bias_season_rnd = temp.bias_random_rnd;
            end
        end

        % -----------------------------------------------------------------
        % Put decadal effect back
        % -----------------------------------------------------------------
        if P.do_decade == 1,
            temp = LME_lme_post_random(BB,M.logic_decade,M.dcd_id,...
                                      N_decade,P.N_groups,P.do_sampling);
            out.bias_decade = temp.bias_random;
            if P.do_sampling ~= 0,
                out.bias_decade_std = temp.bias_random_std;
                out.bias_decade_rnd = temp.bias_random_rnd;
            end
        end
    end

    out.MSE = lme.MSE;
    out.Y_hat = lme.fitted;
    out.Y_raw = M.Y;
end
