% Load diurnal parameters from MB16.
% 
% Reference:
%    Morak?Bozzo, S., Merchant, C. J., Kent, E. C., Berry, D. I., & Carella, G. (2016). 
%    Climatological diurnal variability in sea surface temperature characterized 
%    from drifting buoy data. Geoscience Data Journal, 3(1), 20-28.

function [fit_coeffs,u_avg] = DIURNAL_function_morak_DA_coefficient


    u_avg = [       
           NaN       NaN       NaN       NaN       NaN
        6.2217    6.6121    8.6508    5.7672    6.6431
        7.4348    7.6413    7.6501    7.8218    7.6009
        7.7212    7.8548    7.8201    7.8638    7.8231
        7.6025    7.7042    7.7971    7.7532    7.7148
        7.2370    7.3991    7.5483    7.4170    7.4144
        7.1229    7.1903    7.2385    7.1698    7.1870
        6.6162    7.0503    7.2813    7.1415    7.1439
        6.4288    5.7558    7.0511    6.9701    6.9765
        6.9304    7.0468    7.0979    6.9523    7.0644
        7.3064    7.1685    7.2238    7.1616    7.2223
        7.2989    7.1491    7.1505    7.2075    7.1994
        7.5899    7.3779    7.1075    7.3273    7.3913
        7.7499    7.4799    7.2241    7.5292    7.5247
        7.8348    7.5744    7.3337    7.7111    7.6379
        7.7724    7.5504    7.2290    7.7499    7.6082
        7.5671    7.3285    7.0919    7.3864    7.3539
        6.6995    6.3077    6.2771    6.5025    6.9570]';
    

    fit_coeffs(:,:,1) = [
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN
           NaN   NaN   NaN   NaN   NaN];

    fit_coeffs(:,:,2) = [
       0.074750699102879   0.060141798108816   1.091255784034729  -0.216054767370224   0.295224487781525
      -0.068142235279083  -0.001288697822019  -0.060664501041174   0.003941650036722   0.004419782664627
       0.435622930526733  -0.067364737391472  -0.897015035152435   0.181731864809990  -0.471282839775085
      -0.006277384236455  -0.004996637348086  -0.090938657522202   0.017070962116122  -0.024465050548315
       0.005679923575372   0.000103007580037   0.005056275986135  -0.000375279225409  -0.000378346507205
      -0.036218203604221   0.005637526512146   0.074771992862225  -0.013851383700967   0.039176244288683
      -0.138032451272011  -0.058987546712160  -1.815099120140076  -0.390684604644775  -0.432007998228073
      -0.343370676040649   0.009732620790601   1.710349678993225   0.268558651208878   0.460196197032928
      -0.145009368658066  -0.128265649080276  -0.823385357856750   0.076494693756104  -0.148198693990707
      -0.122788473963737   0.081726931035519   0.858353018760681  -0.154578432440758   0.032597083598375
       0.147301793098450   0.004856132436544  -0.344879269599915  -0.070144973695278  -0.009683229029179
      -0.195072993636131   0.028525659814477   0.447275668382645   0.098244234919548   0.105758488178253
       0.021367870271206  -0.002586148679256  -0.024094104766846   0.158498212695122   0.023194544017315
       0.025762647390366   0.033151321113110  -0.046063542366028  -0.181959807872772  -0.002627670764923];


    fit_coeffs(:,:,3) = [
       0.020925745368004   0.006981166079640  -0.008049908094108  -0.010502770543098   0.006382203660905
      -0.004368457011878  -0.000146657548612  -0.002234543440863  -0.001644175383262  -0.001084086718038
       0.011855470016599  -0.006522099953145   0.038125030696392   0.028445871546865   0.007422320079058
      -0.001751384581439  -0.000579689454753   0.000675490824506   0.000863589288201  -0.000531735771801
       0.000364821520634   0.000012201016943   0.000185353797860   0.000136953283800   0.000090255132818
      -0.000986305414699   0.000540234846994  -0.003174511250108  -0.002350955037400  -0.000617856974714
      -0.078763239085674  -0.022974886000156   0.050692625343800  -0.002984671853483  -0.026561347767711
      -0.007394064217806   0.025214109569788  -0.076065212488174  -0.049574155360460   0.002174744382501
      -0.031350135803223  -0.003751184791327  -0.007287392858416  -0.028288532048464  -0.011809983290732
      -0.003704434726387   0.001084720250219   0.009358243085444  -0.012752247974277   0.001198365003802
       0.025535931810737   0.006477780174464   0.016036212444305   0.009771342389286   0.016278829425573
      -0.015698615461588  -0.005423158872873  -0.027225792407990  -0.003406106261536  -0.011709754355252
       0.004250351339579  -0.002633911091834  -0.004664903972298   0.005442412570119   0.000888388603926
       0.003976959735155   0.004003184381872   0.004941700026393   0.011990886181593   0.005955392494798];


    fit_coeffs(:,:,4) = [
       0.032774951308966  -0.001673042774200   0.003380743088201   0.009250472299755   0.001731444615871
      -0.005992678925395   0.000037866691855  -0.000353438837919  -0.001796182943508  -0.000870061398018
       0.017251355573535   0.000976189330686   0.000699281459674   0.005459690932184   0.008526770398021
      -0.002730917651206   0.000139766591019  -0.000281296321191  -0.000770844810177  -0.000144055273267
       0.000499416375533  -0.000003165205953   0.000029461894883   0.000149641404278   0.000072496928624
      -0.001438473118469  -0.000081510057498  -0.000058971138060  -0.000454373599496  -0.000710674794391
      -0.090407371520996  -0.010547497309744   0.006447737570852  -0.037139900028706  -0.028591476380825
      -0.012180734425783   0.010321580804884  -0.010842468589544  -0.017143839970231   0.005189592484385
      -0.021945666521788  -0.000974328257143  -0.010684977285564  -0.015494868159294  -0.012600725516677
      -0.010624310001731  -0.003193421522155   0.010059875436127  -0.013032707385719   0.001335210865363
       0.040052060037851   0.009120063856244   0.006317715626210   0.019882068037987   0.022901907563210
      -0.029132032766938  -0.006022982764989  -0.007915801368654  -0.005362528376281  -0.015631830319762
       0.014292715117335   0.004829773679376   0.001000006217510   0.009030675515532   0.006991328671575
      -0.006988003849983  -0.003515396267176   0.000818128231913   0.002653732895851   0.000882709398866];


    fit_coeffs(:,:,5) = [
       0.018944339826703   0.002641770988703   0.001446389709599   0.002586858347058  -0.000371821573935
      -0.004864839371294  -0.000293752760626  -0.000035517066863  -0.002695923903957  -0.001195199554786
       0.007031414192170   0.003558661555871  -0.001354124280624   0.015530714765191   0.009551230818033
      -0.001579807256348  -0.000219457171625  -0.000120628479635  -0.000215593827306   0.000030412164051
       0.000405430648243   0.000024412829589   0.000002967551609   0.000224611736485   0.000099587145087
      -0.000585349567700  -0.000296678859740   0.000112807072583  -0.001293899840675  -0.000795308093075
      -0.194048970937729  -0.069486923515797  -0.009798474609852  -0.097106941044331  -0.094256415963173
       0.046086981892586   0.032990131527185   0.002187130507082   0.001812959671952   0.027024609968066
      -0.050299819558859  -0.027541266754270  -0.011666807346046  -0.048112727701664  -0.036435071378946
       0.007282239850610   0.008009715937078   0.005590415559709   0.006367242895067   0.009111034683883
       0.054156821221113   0.032130312174559   0.010488552041352   0.041645027697086   0.042215976864100
      -0.017247816547751  -0.012942465953529  -0.003802296705544  -0.014294540509582  -0.017687346786261
       0.020054277032614   0.010811084881425   0.002501093782485   0.022602908313274   0.015310447663069
      -0.011462897062302  -0.000707525759935   0.003233494237065  -0.007533237338066  -0.003099113702774];


    fit_coeffs(:,:,6) = [
      -0.004444584250450   0.005071395076811   0.004989808890969  -0.007046831771731  -0.006398582365364
      -0.001611128449440   0.000829149386846   0.000100118282717  -0.001558266463690   0.000734642555472
      -0.002751990454271  -0.002570710144937  -0.000210016907658   0.007049539592117   0.000946582062170
       0.000372295413399  -0.000422362645622  -0.000415498972870   0.000586921756621   0.000533501442987
       0.000134132613312  -0.000069107234594  -0.000008419148799   0.000129856707645  -0.000061242251832
       0.000228099190281   0.000214381288970   0.000018052473024  -0.000587301386986  -0.000078918208601
      -0.314627200365067  -0.121058739721775  -0.053035825490952  -0.192213743925095  -0.177341803908348
       0.096180222928524   0.057803861796856   0.023553900420666   0.056211024522781   0.080112911760807
      -0.114433154463768  -0.064938403666019  -0.034978851675987  -0.098818108439445  -0.079582974314690
       0.032776143401861   0.024886321276426   0.010121343657374   0.028697833418846   0.029779871925712
       0.094108246266842   0.055083770304918   0.031582705676556   0.076730452477932   0.069504737854004
      -0.021222667768598  -0.019978122785687  -0.012821456417441  -0.024886084720492  -0.026726322248578
       0.021610593423247   0.017755914479494   0.011857347562909   0.031712204217911   0.022626651450992
      -0.011216308921576  -0.007835667580366  -0.003378119319677  -0.013035416603088  -0.009204804897308];


    fit_coeffs(:,:,7) = [
      -0.021835988387465  -0.007909680716693  -0.007099372334778  -0.020051343366504  -0.018120920285583
       0.003121466143057   0.002109769033268   0.000982801546343   0.000053454572480   0.002072780160233
      -0.016151787713170   0.003783354768530   0.005897297058254   0.011915883049369   0.002033611759543
       0.001818139688112   0.000658491218928   0.000591093034018   0.001669017714448   0.001508658984676
      -0.000260041095316  -0.000175716617377  -0.000081932819739  -0.000004718091077  -0.000172775384272
       0.001344890450127  -0.000315365818096  -0.000489624682814  -0.000986139639281  -0.000166423909832
      -0.386434614658356  -0.157888859510422  -0.086788997054100  -0.238796576857567  -0.198055326938629
       0.170584082603455   0.080785058438778   0.029793052002788   0.064911343157291   0.082485035061836
      -0.171034693717957  -0.099301919341087  -0.062395185232162  -0.139772698283195  -0.111620210111141
       0.059851720929146   0.041342377662659   0.016516515985131   0.035130865871906   0.036541420966387
       0.126133531332016   0.083422154188156   0.055306673049927   0.100840382277966   0.092891424894333
      -0.031102051958442  -0.039163552224636  -0.022561725229025  -0.030990891158581  -0.033955413848162
       0.026778060942888   0.023422317579389   0.016647741198540   0.037115927785635   0.027125243097544
      -0.011146396398544  -0.010678786784410  -0.004485104233027  -0.015410117805004  -0.011919468641281];


    fit_coeffs(:,:,8) = [
      -0.051167134195566  -0.032351765781641  -0.013405591249466  -0.040987078100443  -0.035549107939005
       0.006613107398152   0.006792909000069   0.002991739194840   0.006389503832906   0.005991239566356
      -0.001156238839030  -0.012866670265794  -0.006945960223675  -0.023676799610257  -0.012046736665070
       0.004257569555193   0.002696273848414   0.001119696185924   0.003408992895856   0.002962158294395
      -0.000550647557247  -0.000566106871702  -0.000249401753535  -0.000532049220055  -0.000498950015754
       0.000100409015431   0.001074039959349   0.000577871978749   0.001979212043807   0.001002653501928
      -0.398948401212692  -0.222567334771156  -0.137714520096779  -0.310562103986740  -0.248984843492508
       0.233155086636543   0.078104786574841   0.055955126881599   0.169881567358971   0.105271138250828
      -0.194556295871735  -0.131429910659790  -0.092699289321899  -0.188310578465462  -0.145174294710159
       0.089000962674618   0.035015806555748   0.038505438715219   0.079469256103039   0.049653504043818
       0.157325133681297   0.110947832465172   0.074759840965271   0.127638116478920   0.115340717136860
      -0.061098847538233  -0.026703251525760  -0.023236937820911  -0.040408160537481  -0.032463274896145
       0.022652219980955   0.026825584471226   0.018088929355145   0.041330017149448   0.027964308857918
      -0.003226645290852  -0.006069168448448  -0.008050464093685  -0.019080772995949  -0.009037591516972];


    fit_coeffs(:,:,9) = [
      -0.134049147367477  -0.047283377498388  -0.032160665839911  -0.047778606414795  -0.053035065531731
       0.019581409171224   0.007446283474565   0.006753797177225   0.005009666550905   0.007384316064417
       0.007651035208255  -0.007351851090789  -0.025055857375264   0.006301868241280   0.000735564623028
       0.011675537563860   0.003928655758500   0.002680301899090   0.003977209795266   0.004411330912262
      -0.001724200788885  -0.000619653903414  -0.000562721572351  -0.000416178023443  -0.000614606833551
      -0.000386562081985   0.000620090402663   0.002088312525302  -0.000539675238542  -0.000058065983467
      -0.308847844600677  -0.345011651515961  -0.202121540904045  -0.267217874526978  -0.281843453645706
       0.170623943209648   0.159822136163712   0.086279071867466   0.097274251282215   0.129086896777153
      -0.205057099461555  -0.219672560691833  -0.126094654202461  -0.198171153664589  -0.184616595506668
       0.084365025162697   0.085792288184166   0.033059835433960   0.070497699081898   0.073825232684612
       0.186824321746826   0.173859342932701   0.108329936861992   0.141597479581833   0.146446168422699
      -0.081100791692734  -0.063283450901508  -0.027122624218464  -0.048353750258684  -0.059817720204592
       0.037156090140343   0.047308035194874   0.025744393467903   0.047313839197159   0.041448216885328
      -0.026885762810707  -0.018726259469986  -0.008389204740524  -0.016997173428535  -0.019408680498600];


    fit_coeffs(:,:,10) = [
      -0.042040832340717  -0.042520109564066  -0.021530346944928  -0.037611376494169  -0.032925620675087
       0.005264450330287   0.007633106317371   0.002335543977097   0.002834646962583   0.004025245085359
       0.000010318122804  -0.021782178431749   0.007826535962522   0.025740379467607   0.004348944872618
       0.003510064445436   0.003548417473212   0.001792095019482   0.003126841038465   0.002743713324890
      -0.000437224254711  -0.000623301893938  -0.000194067411940  -0.000237233121879  -0.000335147866281
      -0.000018297767383   0.001680058543570  -0.000653324997984  -0.002127017593011  -0.000362295686500
      -0.229192897677422  -0.334805577993393  -0.245717793703079  -0.280503809452057  -0.275018006563187
       0.086685009300709   0.169913634657860   0.089125968515873   0.129421085119247   0.125091850757599
      -0.142690494656563  -0.212486252188683  -0.137402683496475  -0.206435531377792  -0.177899107336998
       0.052647255361080   0.096010997891426   0.044208399951458   0.105318918824196   0.079798676073551
       0.127581238746643   0.148352921009064   0.118838183581829   0.141200453042984   0.132819890975952
      -0.050259616225958  -0.054834231734276  -0.051367342472076  -0.073510289192200  -0.059102222323418
       0.027031529694796   0.044797532260418   0.025275319814682   0.057249873876572   0.039217807352543
      -0.006451599299908  -0.018490970134735  -0.006740227341652  -0.030048474669456  -0.016225993633270];


    fit_coeffs(:,:,11) = [
      -0.020458621904254  -0.053940866142511  -0.033799808472395  -0.043994620442390  -0.038711600005627
       0.004606821108609   0.006979665253311   0.002420341828838   0.000137298484333   0.004457243718207
      -0.016177382320166  -0.009677475318313   0.023870294913650   0.078279264271259   0.010795241221786
       0.001705900998786   0.004495008848608   0.002813864266500   0.003667433047667   0.003225013380870
      -0.000384242681321  -0.000582239823416  -0.000201344329980  -0.000011993145563  -0.000371204689145
       0.001352689112537   0.000816954649054  -0.001987579511479  -0.006521441042423  -0.000899648875929
      -0.188403218984604  -0.322993874549866  -0.284412413835526  -0.193783625960350  -0.254725068807602
       0.099434338510036   0.135997846722603   0.093357063829899  -0.002369348425418   0.093973256647587
      -0.110942840576172  -0.188492625951767  -0.141920819878578  -0.147572681307793  -0.152539238333702
       0.035158257931471   0.067507274448872   0.035387888550758   0.034054271876812   0.048089690506458
       0.097165562212467   0.137899160385132   0.125712543725967   0.136494576931000   0.124371394515038
      -0.038172975182533  -0.044756725430489  -0.051188085228205  -0.083340473473072  -0.050229378044605
       0.020758617669344   0.033931873738766   0.024584982544184   0.038382858037949   0.030769750475883
      -0.005273688584566  -0.010243564844131  -0.007027603685856  -0.010707244277000  -0.008608609437943];


    fit_coeffs(:,:,12) = [
      -0.013051026500762  -0.038460548967123  -0.037834148854017  -0.011492243967950  -0.025418372824788
       0.002359694102779   0.002068147994578   0.004819871857762   0.005731939338148   0.005205781199038
       0.011161660775542   0.023804990574718  -0.002509315731004  -0.022519072517753  -0.008949588984251
       0.001089489087462   0.003203387372196   0.003162079025060   0.000957479991484   0.002118208678439
      -0.000196611086722  -0.000172009589733  -0.000400423246901  -0.000477438239614  -0.000433718378190
      -0.000933050527237  -0.001984168076888   0.000178625690751   0.001874546171166   0.000744822376873
      -0.095630407333374  -0.283024817705154  -0.398767232894897  -0.182040348649025  -0.237365409731865
       0.029844820499420   0.099764361977577   0.186387851834297   0.086911268532276   0.105649165809155
      -0.068058960139751  -0.142169818282127  -0.181701615452766  -0.123850598931313  -0.127151221036911
       0.021149409934878   0.046606659889221   0.077930286526680   0.046268928796053   0.047042433172464
       0.062256027013063   0.119933575391769   0.131978273391724   0.085014171898365   0.099529094994068
      -0.026686007156968  -0.046796612441540  -0.040988478809595  -0.024480123072863  -0.032168284058571
       0.017797932028770   0.028808705508709   0.033643230795860   0.035516541451216   0.031029745936394
      -0.006971716880798  -0.009122990071774  -0.018982589244843  -0.013401091098785  -0.012761808931828];


    fit_coeffs(:,:,13) = [
      -0.000217637352762  -0.027081880718470  -0.025305520743132   0.001717207604088  -0.016728177666664
       0.001192388823256   0.001402800320648   0.001025123870932   0.003009761683643   0.003292594105005
       0.000674209557474   0.006826186086982  -0.005787743721157  -0.001360262045637  -0.005333699751645
       0.000016188130758   0.002253307728097   0.002111175330356  -0.000143186407513   0.001393896644004
      -0.000099254546512  -0.000116729730507  -0.000085176892753  -0.000250792421866  -0.000274481659289
      -0.000054735195590  -0.000565212802030   0.000475625973195   0.000113837581011   0.000446489342721
      -0.064728520810604  -0.255425870418549  -0.386652797460556  -0.141198277473450  -0.230042919516563
       0.032507576048374   0.114314101636410   0.157638639211655   0.081249937415123   0.137061521410942
      -0.045930340886116  -0.116728432476521  -0.159096151590347  -0.089078620076180  -0.108771488070488
       0.017406612634659   0.051962405443192   0.075425371527672   0.043314624577761   0.059304293245077
       0.037508085370064   0.090419217944145   0.113580957055092   0.062905520200729   0.083680480718613
      -0.013911229558289  -0.031761374324560  -0.033031243830919  -0.028392905369401  -0.035476464778185
       0.014796389266849   0.029529897496104   0.033072620630264   0.025933859869838   0.029473099857569
      -0.007057186216116  -0.017651416361332  -0.025961581617594  -0.013063121587038  -0.017539896070957];


    fit_coeffs(:,:,14) = [
       0.001411249046214  -0.017829844728112  -0.020725771784782   0.002981248311698  -0.017987377941608
       0.000354044139385  -0.000550061871763  -0.002053617499769   0.001414582366124   0.001801893115044
      -0.002693834016100   0.013958468101919   0.000044722441089  -0.000327150482917   0.003523845691234
      -0.000118270218081   0.001484747626819   0.001727075548843  -0.000247386080446   0.001499036094174
      -0.000029443095627   0.000045977474656   0.000171351392055  -0.000118074283819  -0.000150099629536
       0.000224420538871  -0.001163458335213  -0.000004639702183   0.000027963242246  -0.000294148310786
      -0.035074453800917  -0.220749437808990  -0.342777162790298  -0.106329858303070  -0.175701171159744
       0.029704930260777   0.113549374043941   0.178123906254768   0.072236321866512   0.098211139440536
      -0.023041032254696  -0.090149760246277  -0.106925785541534  -0.058228943496943  -0.071109503507614
       0.016981732100248   0.052429832518101   0.064904414117336   0.036241922527552   0.044529628008604
       0.018479978665709   0.071937479078770   0.081125557422638   0.047422476112843   0.061148717999458
      -0.010449356399477  -0.033276736736298  -0.022773252800107  -0.024086944758892  -0.026115415617824
       0.011128708720207   0.022283565253019   0.016282847151160   0.020988019183278   0.021355997771025
      -0.009985714219511  -0.013176057487726  -0.008942693471909  -0.013650581240654  -0.011808566749096];


    fit_coeffs(:,:,15) = [
       0.001236874726601  -0.004181617405266   0.014544147066772   0.015017109923065   0.003339490853250
       0.000013363161997  -0.001732772332616  -0.005092714913189  -0.000264276110101   0.000098060671007
      -0.001499787205830   0.018548483029008   0.006673417519778  -0.003974254243076   0.000075050775195
      -0.000103096368548   0.000349417678080  -0.001209299894981  -0.001253207447007  -0.000278607796645
      -0.000001154685606   0.000144571080455   0.000424406840466   0.000022117112167  -0.000008133540177
       0.000125630947878  -0.001550315297209  -0.000558809726499   0.000331893388648  -0.000006446044608
      -0.008282712660730  -0.127011090517044  -0.205524608492851  -0.052288908511400  -0.107316412031651
       0.008984674699605   0.045849673449993   0.067352704703808   0.035353265702724   0.046843778342009
      -0.005823386833072  -0.058565441519022  -0.064216472208500  -0.028487633913755  -0.041017699986696
       0.004653266631067   0.028346685692668   0.034642491489649   0.019435016438365   0.024852167814970
       0.004357369150966   0.041141219437122   0.047782417386770   0.022096609696746   0.031144302338362
      -0.003155372105539  -0.019853750243783  -0.016148012131453  -0.016333350911736  -0.010032601654530
       0.001832815818489   0.015561763197184   0.013140191324055   0.010483580641448   0.015244873240590
      -0.001998163992539  -0.005129311233759  -0.009127832949162  -0.008536258712411  -0.006088107824326];


    fit_coeffs(:,:,16) = [
      -0.004468553699553  -0.010943477042019  -0.011265104636550   0.007417499553412  -0.000673998030834
       0.000716289272532   0.000636804616079  -0.001795533578843   0.000417991424911   0.000958166026976
      -0.003393935039639   0.003723818110302   0.016853246837854  -0.003524568863213  -0.001899451017380
       0.000370208697859   0.000913307885639   0.000934868876357  -0.000618445395958   0.000056271197536
      -0.000059625679569  -0.000053199877584   0.000150029765791  -0.000034825541661  -0.000079991485109
       0.000284858833766  -0.000310221133986  -0.001402301830240   0.000293968012556   0.000159923700267
      -0.006130116060376  -0.127459079027176  -0.207839027047157  -0.034195866435766  -0.116080038249493
       0.012266721576452   0.066494785249233   0.088218845427036   0.030565913766623   0.075132913887501
       0.007970134727657  -0.052165571600199  -0.066355809569359  -0.024099860340357  -0.039638407528400
      -0.009734417311847   0.020597139373422   0.035300280898809   0.020728100091219   0.026012662798166
      -0.001892967266031   0.018049696460366   0.029075331985950   0.021888008341193   0.017760161310434
       0.004923426080495  -0.001178109669127  -0.004056088626385  -0.023455789312720  -0.003564996877685
       0.004517586901784   0.014894107356668   0.010580518282950   0.006723745726049   0.010312220081687
      -0.005564212333411  -0.007572092115879  -0.008160581812263  -0.008424017578363  -0.003499630838633];


    fit_coeffs(:,:,17) = [
       0.004392803180963  -0.017522459849715  -0.026887986809015   0.004616389982402  -0.002713816473261
       0.001305444980972  -0.001892535248771  -0.001029264647514   0.001858608680777   0.000653123424854
      -0.017384983599186   0.043661393225193   0.037604380398989  -0.010839367285371   0.003495138604194
      -0.000369054760085   0.001459733466618   0.002256293315440  -0.000384779734304   0.000225996525842
      -0.000108202148112   0.000157743037562   0.000085979387222  -0.000154969122377  -0.000054398013162
       0.001447333488613  -0.003638240508735  -0.003159973770380   0.000904303975403  -0.000291336415103
       0.001767847221345  -0.031863652169704  -0.123995460569859  -0.019559744745493  -0.058084052056074
       0.003335666609928  -0.010318264365196   0.026403488591313   0.019455002620816   0.043777275830507
      -0.011899258941412  -0.021359462291002  -0.083134800195694  -0.018025221303105  -0.037730347365141
       0.014102120883763   0.005153698846698   0.044636663049459   0.017041858285666   0.033029768615961
       0.000131412089104   0.027492240071297   0.021208573132753   0.009127826429904   0.015290996991098
       0.003155023092404  -0.032566394656897  -0.015105242840946  -0.008001279085875  -0.012206493876874
       0.002417322015390   0.003471367992461  -0.006469745188951   0.003686093725264   0.002985060214996
      -0.002713322872296   0.001649001613259   0.006883430294693  -0.005361880641431   0.000129826366901];


    fit_coeffs(:,:,18) = [
                       0  -0.008313307538629  -0.022001624107361   0.013132559135556  -0.039017640054226
                       0  -0.033519860357046  -0.002360919024795  -0.002932746428996  -0.018567357212305
                       0   0.283377170562744   0.018661810085177   0.016392802819610   0.258566260337830
                       0   0.000692219589837   0.001849598134868  -0.001082400907762   0.003259834134951
                       0   0.002793668769300   0.000198580426513   0.000242582449573   0.001546334126033
                       0  -0.023621335625648  -0.001592170563526  -0.001366862794384  -0.021554363891482
                       0   0.091055765748024  -0.064222961664200  -0.025975814089179   0.070007197558880
                       0  -0.258788347244263  -0.083602234721184   0.011268256232142  -0.230749383568764
                       0   0.003105729818344  -0.296134203672409   0.001932184444740  -0.007256621029228
                       0  -0.001419286127202  -0.044086389243603  -0.004368811845779  -0.020927241072059
                       0   0.035892840474844  -0.031783439218998   0.005006129387766   0.064385160803795
                       0  -0.100976184010506   0.050132766366005  -0.016161475330591  -0.138345912098885
                       0  -0.019471473991871  -0.065183565020561   0.016589604318142  -0.016782175749540
                       0   0.024601275101304   0.087232202291489  -0.018052205443382   0.015574384480715];
         
end