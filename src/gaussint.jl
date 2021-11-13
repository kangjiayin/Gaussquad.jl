# This module is made for Gauss quadrature.
## 2021.8.14
## Powered by Ashen
## Nankai University


########################################################################
########################################################################
################# 高斯勒让德积分 #########################################
########################################################################


function gausslegendreint64(f)
    x,w= ([-0.9993050417357722, -0.9963401167719553, -0.9910133714767443, -0.983336253884626, -0.973326827789911, -0.9610087996520538, -0.9464113748584028, -0.9295691721319396, -0.9105221370785028, -0.8893154459951141, -0.8659993981540929, -0.8406292962525803, -0.8132653151227975, -0.7839723589433414, -0.7528199072605318, -0.7198818501716109, -0.6852363130542332, -0.6489654712546573, -0.6111553551723933, -0.571895646202634, -0.5312794640198947, -0.4894031457070531, -0.4463660172534642, -0.4022701579639918, -0.35722015833766824, -0.31132287199021125, -0.26468716220876765, -0.21742364374000725, -0.1696444204239929, -0.12146281929612088, -0.07299312178779943, -0.024350292663424446, 0.024350292663424446, 0.07299312178779943, 0.12146281929612088, 0.1696444204239929, 0.21742364374000725, 0.26468716220876765, 0.31132287199021125, 0.35722015833766824, 0.4022701579639918, 0.4463660172534642, 0.4894031457070531, 0.5312794640198947, 0.571895646202634, 0.6111553551723933, 0.6489654712546573, 0.6852363130542332, 0.7198818501716109, 0.7528199072605318, 0.7839723589433414, 0.8132653151227975, 0.8406292962525803, 0.8659993981540929, 0.8893154459951141, 0.9105221370785028, 0.9295691721319396, 0.9464113748584028, 0.9610087996520538, 0.973326827789911, 0.983336253884626, 0.9910133714767443, 0.9963401167719553, 0.9993050417357722], [0.0017832807216964326, 0.004147033260562467, 0.006504457968978363, 0.008846759826363949, 0.011168139460131126, 0.013463047896718644, 0.01572603047602472, 0.01795171577569734, 0.020134823153530212, 0.02227017380838325, 0.024352702568710864, 0.026377469715054655, 0.028339672614259476, 0.030234657072402478, 0.03205792835485155, 0.03380516183714161, 0.035472213256882386, 0.03705512854024003, 0.03855015317861562, 0.039953741132720336, 0.04126256324262353, 0.04247351512365358, 0.043583724529323443, 0.044590558163756545, 0.04549162792741815, 0.0462847965813144, 0.04696818281620999, 0.0475401657148303, 0.047999388596458276, 0.04834476223480293, 0.04857546744150339, 0.04869095700913967, 0.04869095700913967, 0.04857546744150339, 0.04834476223480293, 0.047999388596458276, 0.0475401657148303, 0.04696818281620999, 0.0462847965813144, 0.04549162792741815, 0.044590558163756545, 0.043583724529323443, 0.04247351512365358, 0.04126256324262353, 0.039953741132720336, 0.03855015317861562, 0.03705512854024003, 0.035472213256882386, 0.03380516183714161, 0.03205792835485155, 0.030234657072402478, 0.028339672614259476, 0.026377469715054655, 0.024352702568710864, 0.02227017380838325, 0.020134823153530212, 0.01795171577569734, 0.01572603047602472, 0.013463047896718644, 0.011168139460131126, 0.008846759826363949, 0.006504457968978363, 0.004147033260562467, 0.0017832807216964326])
    result=0.
    for i in eachindex(x)
        result+=f(x[i])*w[i]
    end
    return result
end

function gausslegendreint128(f)
    x,w= ([-0.9998248879471319, -0.9990774599773758, -0.997733248625514, -0.9957927585349812, -0.9932571129002129, -0.9901278184917344, -0.9864067427245862, -0.9820961084357185, -0.9771984914639074, -0.9717168187471366, -0.9656543664319652, -0.9590147578536999, -0.9518019613412644, -0.9440202878302202, -0.9356743882779164, -0.9267692508789479, -0.9173101980809605, -0.9073028834017568, -0.8967532880491582, -0.8856677173453972, -0.8740527969580317, -0.8619154689395485, -0.849262987577969, -0.836102915060907, -0.8224431169556438, -0.8082917575079136, -0.7936572947621934, -0.7785484755064119, -0.7629743300440948, -0.746944166797062, -0.7304675667419089, -0.7135543776835874, -0.6962147083695143, -0.6784589224477193, -0.660297632272646, -0.6417416925623075, -0.6228021939105849, -0.6034904561585486, -0.5838180216287632, -0.5637966482266181, -0.5434383024128105, -0.5227551520511754, -0.5017595591361445, -0.4804640724041721, -0.4588814198335524, -0.4370245010371044, -0.4149063795522749, -0.39254027503326766, -0.3699395553498589, -0.34711772859763534, -0.3240884350244137, -0.3008654388776775, -0.27746262017790435, -0.25389396642269435, -0.23017356422665974, -0.20631559090207907, -0.18233430598533729, -0.1582440427142251, -0.1340591994611879, -0.10979423112764418, -0.08546364050451555, -0.06108196960413982, -0.03666379096873337, -0.01222369896061586, 0.01222369896061586, 0.03666379096873337, 0.06108196960413982, 0.08546364050451555, 0.10979423112764418, 0.1340591994611879, 0.1582440427142251, 0.18233430598533729, 0.20631559090207907, 0.23017356422665974, 0.25389396642269435, 0.27746262017790435, 0.3008654388776775, 0.3240884350244137, 0.34711772859763534, 0.3699395553498589, 0.39254027503326766, 0.4149063795522749, 0.4370245010371044, 0.4588814198335524, 0.4804640724041721, 0.5017595591361445, 0.5227551520511754, 0.5434383024128105, 0.5637966482266181, 0.5838180216287632, 0.6034904561585486, 0.6228021939105849, 0.6417416925623075, 0.660297632272646, 0.6784589224477193, 0.6962147083695143, 0.7135543776835874, 0.7304675667419089, 0.746944166797062, 0.7629743300440948, 0.7785484755064119, 0.7936572947621934, 0.8082917575079136, 0.8224431169556438, 0.836102915060907, 0.849262987577969, 0.8619154689395485, 0.8740527969580317, 0.8856677173453972, 0.8967532880491582, 0.9073028834017568, 0.9173101980809605, 0.9267692508789479, 0.9356743882779164, 0.9440202878302202, 0.9518019613412644, 0.9590147578536999, 0.9656543664319652, 0.9717168187471366, 0.9771984914639074, 0.9820961084357185, 0.9864067427245862, 0.9901278184917344, 0.9932571129002129, 0.9957927585349812, 0.997733248625514, 0.9990774599773758, 0.9998248879471319], [0.00044938096029209035, 0.0010458126793403486, 0.0016425030186690292, 0.0022382884309626186, 0.002832751471457991, 0.0034255260409102152, 0.004016254983738643, 0.004604584256702955, 0.005190161832676331, 0.0057726375428656974, 0.006351663161707189, 0.006926892566898814, 0.007497981925634727, 0.00806458989048606, 0.008626377798616748, 0.009183009871660874, 0.009734153415006804, 0.010279479015832156, 0.010818660739503072, 0.011351376324080415, 0.01187730737274028, 0.012396139543950925, 0.012907562739267344, 0.013411271288616331, 0.013906964132951989, 0.014394345004166843, 0.014873122602147317, 0.015343010768865146, 0.015803728659399344, 0.016255000909785183, 0.016696557801589202, 0.01712813542311137, 0.017549475827117706, 0.017960327185008687, 0.01836044393733134, 0.01874958694054471, 0.019127523609950937, 0.0194940280587066, 0.019848881232830858, 0.020191871042130043, 0.020522792486960068, 0.02084144778075115, 0.021147646468221346, 0.021441205539208457, 0.02172194953805207, 0.021989710668460487, 0.022244328893799768, 0.022485652032744968, 0.02271353585023646, 0.022927844143686843, 0.023128448824387023, 0.023315229994062762, 0.023488076016535915, 0.023646883584447616, 0.0237915577810034, 0.023922012136703454, 0.02403816868102405, 0.02413995798901929, 0.024227319222815246, 0.024300200167971863, 0.024358557264690626, 0.02440235563384958, 0.024431569097850044, 0.024446180196262518, 0.024446180196262518, 0.024431569097850044, 0.02440235563384958, 0.024358557264690626, 0.024300200167971863, 0.024227319222815246, 0.02413995798901929, 0.02403816868102405, 0.023922012136703454, 0.0237915577810034, 0.023646883584447616, 0.023488076016535915, 0.023315229994062762, 0.023128448824387023, 0.022927844143686843, 0.02271353585023646, 0.022485652032744968, 0.022244328893799768, 0.021989710668460487, 0.02172194953805207, 0.021441205539208457, 0.021147646468221346, 0.02084144778075115, 0.020522792486960068, 0.020191871042130043, 0.019848881232830858, 0.0194940280587066, 0.019127523609950937, 0.01874958694054471, 0.01836044393733134, 0.017960327185008687, 0.017549475827117706, 0.01712813542311137, 0.016696557801589202, 0.016255000909785183, 0.015803728659399344, 0.015343010768865146, 0.014873122602147317, 0.014394345004166843, 0.013906964132951989, 0.013411271288616331, 0.012907562739267344, 0.012396139543950925, 0.01187730737274028, 0.011351376324080415, 0.010818660739503072, 0.010279479015832156, 0.009734153415006804, 0.009183009871660874, 0.008626377798616748, 0.00806458989048606, 0.007497981925634727, 0.006926892566898814, 0.006351663161707189, 0.0057726375428656974, 0.005190161832676331, 0.004604584256702955, 0.004016254983738643, 0.0034255260409102152, 0.002832751471457991, 0.0022382884309626186, 0.0016425030186690292, 0.0010458126793403486, 0.00044938096029209035])
    result=0.
    for i in eachindex(x)
        result+=f(x[i])*w[i]
    end
    return result
end

function gausslegendreint512(f)
    x,w=([-0.9999889909843819, -0.9999419946068456, -0.9998574463699794, -0.9997353306710427, -0.9995756497983108, -0.9993784092025992, -0.9991436161123782, -0.9988712792754494, -0.9985614088900397, -0.9982140165816128, -0.9978291153935629, -0.9974067197828498, -0.9969468456176038, -0.9964495101755774, -0.9959147321429772, -0.9953425316134658, -0.9947329300872282, -0.9940859504700559, -0.9934016170724148, -0.9926799556084865, -0.9919209931951715, -0.9911247583510481, -0.9902912809952868, -0.9894205924465157, -0.988512725421635, -0.9875677140345829, -0.9865855937950492, -0.9855664016071379, -0.9845101757679784, -0.983416955966284, -0.9822867832808596, -0.9811197001790571, -0.9799157505151782, -0.9786749795288263, -0.9773974338432059, -0.9760831614633703, -0.974732211774417, -0.9733446355396325, -0.9719204848985836, -0.9704598133651587, -0.9689626758255566, -0.9674291285362238, -0.9658592291217407, -0.964253036572656, -0.9626106112432703, -0.9609320148493677, -0.9592173104658972, -0.9574665625246019, -0.9556798368115988, -0.953857200464906, -0.9519987219719198, -0.950104471166842, -0.9481745192280551, -0.946208938675448, -0.9442078033676905, -0.9421711884994589, -0.9400991705986094, -0.9379918275233031, -0.9358492384590805, -0.9336714839158854, -0.9314586457250403, -0.9292108070361712, -0.9269280523140828, -0.9246104673355856, -0.9222581391862719, -0.9198711562572436, -0.9174496082417911, -0.9149935861320229, -0.912503182215446, -0.9099784900714992, -0.9074196045680355, -0.904826621857758, -0.9021996393746068, -0.8995387558300979, -0.8968440712096138, -0.8941156867686465, -0.8913537050289927, -0.8885582297749018, -0.8857293660491754, -0.882867220149221, -0.8799718996230571, -0.8770435132652723, -0.8740821711129373, -0.8710879844414698, -0.8680610657604539, -0.8650015288094115, -0.8619094885535289, -0.8587850611793374, -0.8556283640903465, -0.8524395159026327, -0.8492186364403826, -0.8459658467313907, -0.8426812690025105, -0.8393650266750627, -0.8360172443601974, -0.8326380478542114, -0.8292275641338213, -0.8257859213513925, -0.8223132488301236, -0.818809677059187, -0.815275337688825, -0.8117103635254042, -0.8081148885264244, -0.8044890477954846, -0.800832977577207, -0.7971468152521175, -0.793430699331483, -0.7896847694521073, -0.785909166371083, -0.7821040319605043, -0.7782695092021338, -0.7744057421820317, -0.7705128760851405, -0.7665910571898299, -0.7626404328624002, -0.7586611515515449, -0.7546533627827726, -0.7506172171527881, -0.7465528663238341, -0.7424604630179923, -0.7383401610114443, -0.7341921151286931, -0.7300164812367465, -0.7258134162392593, -0.7215830780706378, -0.7173256256901053, -0.7130412190757285, -0.7087300192184071, -0.7043921881158238, -0.7000278887663572, -0.6956372851629569, -0.6912205422869817, -0.6867778261019992, -0.682309303547551, -0.6778151425328788, -0.6732955119306152, -0.6687505815704384, -0.6641805222326905, -0.6595855056419603, -0.6549657044606303, -0.6503212922823892, -0.6456524436257091, -0.6409593339272864, -0.6362421395354517, -0.6315010377035416, -0.6267362065832394, -0.6219478252178795, -0.6171360735357213, -0.612301132343187, -0.6074431833180683, -0.6025624090026995, -0.5976589927970977, -0.5927331189520723, -0.5877849725623008, -0.5828147395593744, -0.5778226067048111, -0.5728087615830374, -0.5677733925943407, -0.5627166889477891, -0.5576388406541221, -0.5525400385186102, -0.5474204741338867, -0.5422803398727462, -0.5371198288809178, -0.5319391350698067, -0.5267384531092079, -0.5215179784199908, -0.5162779071667574, -0.5110184362504698, -0.5057397633010523, -0.5004420866699643, -0.49512560542274864, -0.4897905193315499, -0.4844370288676086, -0.4790653351937283, -0.4736756401567168, -0.4682681462798002, -0.462843056755015, -0.45740057543557106, -0.45194090682819393, -0.44646425608543727, -0.4409708289979767, -0.4354608319868749, -0.4299344720958267, -0.42439195698337867, -0.4188334949151264, -0.4132592947558877, -0.40766956596185583, -0.4020645185727269, -0.3964443632038106, -0.39080931103811234, -0.3851595738184008, -0.3794953638392507, -0.3738168939390634, -0.36812437749207333, -0.36241802840032655, -0.3566980610856457, -0.3509646904815715, -0.34521813202528684, -0.33945860164952096, -0.3336863157744372, -0.32790149129949836, -0.3221043455953188, -0.3162950964954948, -0.3104739622884203, -0.30464116170908445, -0.2987969139308509, -0.2929414385572245, -0.2870749556135981, -0.2811976855389849, -0.2753098491777348, -0.26941166777123854, -0.26350336294961024, -0.2575851567233627, -0.25165727147506334, -0.24571992995097935, -0.23977335525270627, -0.23381777082878594, -0.22785340046630947, -0.22188046828250904, -0.21589919871633542, -0.20990981652002375, -0.20391254675065223, -0.19790761476168062, -0.191895246194484, -0.18587566696987579, -0.17984910327961603, -0.17381578157791336, -0.16777592857291607, -0.16172977121819213, -0.15567753670420206, -0.14961945244976138, -0.143555746093496, -0.1374866454852881, -0.13141237867771338, -0.1253331739174746, -0.1192492596368204, -0.11316086444496669, -0.10706821711950283, -0.10097154659779696, -0.09487108196839251, -0.08876705246240127, -0.08265968744488698, -0.07654921640625069, -0.07043586895360471, -0.06431987480214428, -0.058201463766518316, -0.05208086575219212, -0.0459583107468089, -0.03983402881154859, -0.03370825007248051, -0.02758120471191989, -0.021453122959775108, -0.015324235084898318, -0.009194771386432996, -0.0030649621851592656, 0.0030649621851592656, 0.009194771386432996, 0.015324235084898318, 0.021453122959775108, 0.02758120471191989, 0.03370825007248051, 0.03983402881154859, 0.0459583107468089, 0.05208086575219212, 0.058201463766518316, 0.06431987480214428, 0.07043586895360471, 0.07654921640625069, 0.08265968744488698, 0.08876705246240127, 0.09487108196839251, 0.10097154659779696, 0.10706821711950283, 0.11316086444496669, 0.1192492596368204, 0.1253331739174746, 0.13141237867771338, 0.1374866454852881, 0.143555746093496, 0.14961945244976138, 0.15567753670420206, 0.16172977121819213, 0.16777592857291607, 0.17381578157791336, 0.17984910327961603, 0.18587566696987579, 0.191895246194484, 0.19790761476168062, 0.20391254675065223, 0.20990981652002375, 0.21589919871633542, 0.22188046828250904, 0.22785340046630947, 0.23381777082878594, 0.23977335525270627, 0.24571992995097935, 0.25165727147506334, 0.2575851567233627, 0.26350336294961024, 0.26941166777123854, 0.2753098491777348, 0.2811976855389849, 0.2870749556135981, 0.2929414385572245, 0.2987969139308509, 0.30464116170908445, 0.3104739622884203, 0.3162950964954948, 0.3221043455953188, 0.32790149129949836, 0.3336863157744372, 0.33945860164952096, 0.34521813202528684, 0.3509646904815715, 0.3566980610856457, 0.36241802840032655, 0.36812437749207333, 0.3738168939390634, 0.3794953638392507, 0.3851595738184008, 0.39080931103811234, 0.3964443632038106, 0.4020645185727269, 0.40766956596185583, 0.4132592947558877, 0.4188334949151264, 0.42439195698337867, 0.4299344720958267, 0.4354608319868749, 0.4409708289979767, 0.44646425608543727, 0.45194090682819393, 0.45740057543557106, 0.462843056755015, 0.4682681462798002, 0.4736756401567168, 0.4790653351937283, 0.4844370288676086, 0.4897905193315499, 0.49512560542274864, 0.5004420866699643, 0.5057397633010523, 0.5110184362504698, 0.5162779071667574, 0.5215179784199908, 0.5267384531092079, 0.5319391350698067, 0.5371198288809178, 0.5422803398727462, 0.5474204741338867, 0.5525400385186102, 0.5576388406541221, 0.5627166889477891, 0.5677733925943407, 0.5728087615830374, 0.5778226067048111, 0.5828147395593744, 0.5877849725623008, 0.5927331189520723, 0.5976589927970977, 0.6025624090026995, 0.6074431833180683, 0.612301132343187, 0.6171360735357213, 0.6219478252178795, 0.6267362065832394, 0.6315010377035416, 0.6362421395354517, 0.6409593339272864, 0.6456524436257091, 0.6503212922823892, 0.6549657044606303, 0.6595855056419603, 0.6641805222326905, 0.6687505815704384, 0.6732955119306152, 0.6778151425328788, 0.682309303547551, 0.6867778261019992, 0.6912205422869817, 0.6956372851629569, 0.7000278887663572, 0.7043921881158238, 0.7087300192184071, 0.7130412190757285, 0.7173256256901053, 0.7215830780706378, 0.7258134162392593, 0.7300164812367465, 0.7341921151286931, 0.7383401610114443, 0.7424604630179923, 0.7465528663238341, 0.7506172171527881, 0.7546533627827726, 0.7586611515515449, 0.7626404328624002, 0.7665910571898299, 0.7705128760851405, 0.7744057421820317, 0.7782695092021338, 0.7821040319605043, 0.785909166371083, 0.7896847694521073, 0.793430699331483, 0.7971468152521175, 0.800832977577207, 0.8044890477954846, 0.8081148885264244, 0.8117103635254042, 0.815275337688825, 0.818809677059187, 0.8223132488301236, 0.8257859213513925, 0.8292275641338213, 0.8326380478542114, 0.8360172443601974, 0.8393650266750627, 0.8426812690025105, 0.8459658467313907, 0.8492186364403826, 0.8524395159026327, 0.8556283640903465, 0.8587850611793374, 0.8619094885535289, 0.8650015288094115, 0.8680610657604539, 0.8710879844414698, 0.8740821711129373, 0.8770435132652723, 0.8799718996230571, 0.882867220149221, 0.8857293660491754, 0.8885582297749018, 0.8913537050289927, 0.8941156867686465, 0.8968440712096138, 0.8995387558300979, 0.9021996393746068, 0.904826621857758, 0.9074196045680355, 0.9099784900714992, 0.912503182215446, 0.9149935861320229, 0.9174496082417911, 0.9198711562572436, 0.9222581391862719, 0.9246104673355856, 0.9269280523140828, 0.9292108070361712, 0.9314586457250403, 0.9336714839158854, 0.9358492384590805, 0.9379918275233031, 0.9400991705986094, 0.9421711884994589, 0.9442078033676905, 0.946208938675448, 0.9481745192280551, 0.950104471166842, 0.9519987219719198, 0.953857200464906, 0.9556798368115988, 0.9574665625246019, 0.9592173104658972, 0.9609320148493677, 0.9626106112432703, 0.964253036572656, 0.9658592291217407, 0.9674291285362238, 0.9689626758255566, 0.9704598133651587, 0.9719204848985836, 0.9733446355396325, 0.974732211774417, 0.9760831614633703, 0.9773974338432059, 0.9786749795288263, 0.9799157505151782, 0.9811197001790571, 0.9822867832808596, 0.983416955966284, 0.9845101757679784, 0.9855664016071379, 0.9865855937950492, 0.9875677140345829, 0.988512725421635, 0.9894205924465157, 0.9902912809952868, 0.9911247583510481, 0.9919209931951715, 0.9926799556084865, 0.9934016170724148, 0.9940859504700559, 0.9947329300872282, 0.9953425316134658, 0.9959147321429772, 0.9964495101755774, 0.9969468456176038, 0.9974067197828498, 0.9978291153935629, 0.9982140165816128, 0.9985614088900397, 0.9988712792754494, 0.9991436161123782, 0.9993784092025992, 0.9995756497983108, 0.9997353306710427, 0.9998574463699794, 0.9999419946068456, 0.9999889909843819], [2.8252637373934688e-5, 6.57657316592402e-5, 0.00010333190349691323, 0.00014089901738819851, 0.00017846180554595328, 0.00021601817797699084, 0.00025356654357058654, 0.00029110543025148846, 0.0003286334028523335, 0.00036614904003562674, 0.0004036509265333198, 0.00044113765017954066, 0.0004786078006679509, 0.0005160599690007673, 0.0005534927472403894, 0.0005909047284032232, 0.0006282945064244356, 0.0006656606761599342, 0.000703001833408741, 0.0007403165749469819, 0.0007776034985686975, 0.0008148612031307818, 0.0008520882886004808, 0.0008892833561045004, 0.0009264450079791585, 0.0009635718478212056, 0.001000662480539091, 0.0010377155124045077, 0.0010747295511041243, 0.0011117032057914326, 0.0011486350871386503, 0.0011855238073886604, 0.001222367980406954, 0.001259166221733556, 0.0012959171486349255, 0.0013326193801558187, 0.0013692715371711026, 0.0014058722424375165, 0.0014424201206453765, 0.0014789137984702173, 0.0015153519046243596, 0.0015517330699084187, 0.0015880559272627266, 0.0016243191118186897, 0.001660521260950056, 0.0016966610143241087, 0.0017327370139527706, 0.001768747904243624, 0.001804692332050843, 0.0018405689467260314, 0.0018763764001689714, 0.0019121133468782765, 0.001947778444001943, 0.001983370351387809, 0.002018887731633912, 0.002054329250138731, 0.002089693575151347, 0.002124979377821473, 0.0021601853322493884, 0.0021953101155357635, 0.0022303524078313595, 0.0022653108923866338, 0.0023001842556012063, 0.002334971187073223, 0.002369670379648598, 0.002404280529470124, 0.0024388003360264732, 0.0024732285022010586, 0.0025075637343207747, 0.0025418047422046145, 0.002575950239212142, 0.0026099989422918397, 0.0026439495720293233, 0.002677800852695418, 0.0027115515122940878, 0.002745200282610239, 0.002778745899257372, 0.002812187101725092, 0.0028455226334264724, 0.0028787512417452737, 0.002911871678083013, 0.002944882697905876, 0.00297778306079149, 0.0030105715304755273, 0.0030432468748981577, 0.0030758078662503534, 0.0031082532810200124, 0.003140581900037945, 0.0031727925085236813, 0.0032048838961311115, 0.003236854856993974, 0.0032687041897711644, 0.003300430697691875, 0.0033320331886005678, 0.0033635104750017694, 0.00339486137410469, 0.003426084707867678, 0.003457179303042465, 0.0034881439912182767, 0.0035189776088657195, 0.0035496789973805125, 0.0035802470031270138, 0.003610680477481574, 0.0036409782768756986, 0.0036711392628390144, 0.003701162302042053, 0.0037310462663388342, 0.0037607900328092566, 0.0037903924838012964, 0.0038198525069729978, 0.003849168995334278, 0.003878340847288517, 0.003907366966673954, 0.003936246262804879, 0.003964977650512608, 0.003993560050186275, 0.00402199238781338, 0.004050273595020158, 0.004078402609111728, 0.004106378373112013, 0.004134199835803465, 0.00416186595176656, 0.0041893756814190925, 0.0042167279910552205, 0.004243921852884324, 0.004270956245069615, 0.0042978301517665445, 0.004324542563160961, 0.004351092475507065, 0.004377478891165122, 0.004403700818638955, 0.004429757272613187, 0.004455647273990282, 0.004481369849927326, 0.004506924033872585, 0.004532308865601825, 0.004557523391254389, 0.004582566663369048, 0.004607437740919592, 0.004632135689350198, 0.004656659580610546, 0.004681008493190686, 0.004705181512155669, 0.004729177729179929, 0.004752996242581413, 0.004776636157355452, 0.004800096585208407, 0.004823376644591041, 0.004846475460731642, 0.004869392165668899, 0.004892125898284511, 0.004914675804335544, 0.004937041036486537, 0.004959220754341334, 0.004981214124474667, 0.005003020320463474, 0.005024638522917943, 0.005046067919512321, 0.00506730770501541, 0.005088357081320853, 0.005109215257477102, 0.005129881449717156, 0.005150354881487997, 0.005170634783479772, 0.005190720393654719, 0.005210610957275772, 0.005230305726934944, 0.005249803962581402, 0.005269104931549276, 0.005288207908585191, 0.005307112175875518, 0.005325817023073351, 0.005344321747325183, 0.005362625653297345, 0.005380728053202108, 0.005398628266823537, 0.005416325621543052, 0.0054338194523647, 0.005451109101940146, 0.005468193920593368, 0.0054850732663450745, 0.005501746504936828, 0.005518213009854867, 0.005534472162353665, 0.00555052335147917, 0.0055663659740917614, 0.005581999434888912, 0.00559742314642757, 0.005612636529146216, 0.005627639011386655, 0.00564243002941548, 0.005657009027445273, 0.005671375457655482, 0.005685528780213002, 0.005699468463292459, 0.005713193983096208, 0.005726704823873997, 0.005740000477942356, 0.005753080445703674, 0.005765944235664973, 0.00577859136445637, 0.005791021356849248, 0.005803233745774101, 0.0058152280723381, 0.0058270038858423325, 0.005838560743798724, 0.005849898211946682, 0.005861015864269407, 0.005871913283009899, 0.005882590058686661, 0.005893045790109078, 0.005903280084392496, 0.005913292556972986, 0.005923082831621791, 0.005932650540459466, 0.005941995323969707, 0.005951116831012846, 0.005960014718839055, 0.005968688653101225, 0.005977138307867532, 0.005985363365633671, 0.005993363517334803, 0.006001138462357158, 0.006008687908549342, 0.006016011572233294, 0.006023109178214962, 0.00602998045979465, 0.006036625158777019, 0.006043043025480803, 0.006049233818748191, 0.006055197305953876, 0.006060933263013818, 0.006066441474393642, 0.006071721733116753, 0.0060767738407720975, 0.0060815976075216435, 0.006086192852107483, 0.006090559401858673, 0.006094697092697698, 0.006098605769146651, 0.006102285284333077, 0.00610573549999548, 0.006108956286488522, 0.006111947522787908, 0.006114709096494918, 0.006117240903840628, 0.006119542849689829, 0.006121614847544582, 0.0061234568195474804, 0.006125068696484565, 0.0061264504177879365, 0.006127601931538024, 0.006128523194465533, 0.006129214171953085, 0.006129674838036499, 0.006129905175405784, 0.006129905175405784, 0.006129674838036499, 0.006129214171953085, 0.006128523194465533, 0.006127601931538024, 0.0061264504177879365, 0.006125068696484565, 0.0061234568195474804, 0.006121614847544582, 0.006119542849689829, 0.006117240903840628, 0.006114709096494918, 0.006111947522787908, 0.006108956286488522, 0.00610573549999548, 0.006102285284333077, 0.006098605769146651, 0.006094697092697698, 0.006090559401858673, 0.006086192852107483, 0.0060815976075216435, 0.0060767738407720975, 0.006071721733116753, 0.006066441474393642, 0.006060933263013818, 0.006055197305953876, 0.006049233818748191, 0.006043043025480803, 0.006036625158777019, 0.00602998045979465, 0.006023109178214962, 0.006016011572233294, 0.006008687908549342, 0.006001138462357158, 0.005993363517334803, 0.005985363365633671, 0.005977138307867532, 0.005968688653101225, 0.005960014718839055, 0.005951116831012846, 0.005941995323969707, 0.005932650540459466, 0.005923082831621791, 0.005913292556972986, 0.005903280084392496, 0.005893045790109078, 0.005882590058686661, 0.005871913283009899, 0.005861015864269407, 0.005849898211946682, 0.005838560743798724, 0.0058270038858423325, 0.0058152280723381, 0.005803233745774101, 0.005791021356849248, 0.00577859136445637, 0.005765944235664973, 0.005753080445703674, 0.005740000477942356, 0.005726704823873997, 0.005713193983096208, 0.005699468463292459, 0.005685528780213002, 0.005671375457655482, 0.005657009027445273, 0.00564243002941548, 0.005627639011386655, 0.005612636529146216, 0.00559742314642757, 0.005581999434888912, 0.0055663659740917614, 0.00555052335147917, 0.005534472162353665, 0.005518213009854867, 0.005501746504936828, 0.0054850732663450745, 0.005468193920593368, 0.005451109101940146, 0.0054338194523647, 0.005416325621543052, 0.005398628266823537, 0.005380728053202108, 0.005362625653297345, 0.005344321747325183, 0.005325817023073351, 0.005307112175875518, 0.005288207908585191, 0.005269104931549276, 0.005249803962581402, 0.005230305726934944, 0.005210610957275772, 0.005190720393654719, 0.005170634783479772, 0.005150354881487997, 0.005129881449717156, 0.005109215257477102, 0.005088357081320853, 0.00506730770501541, 0.005046067919512321, 0.005024638522917943, 0.005003020320463474, 0.004981214124474667, 0.004959220754341334, 0.004937041036486537, 0.004914675804335544, 0.004892125898284511, 0.004869392165668899, 0.004846475460731642, 0.004823376644591041, 0.004800096585208407, 0.004776636157355452, 0.004752996242581413, 0.004729177729179929, 0.004705181512155669, 0.004681008493190686, 0.004656659580610546, 0.004632135689350198, 0.004607437740919592, 0.004582566663369048, 0.004557523391254389, 0.004532308865601825, 0.004506924033872585, 0.004481369849927326, 0.004455647273990282, 0.004429757272613187, 0.004403700818638955, 0.004377478891165122, 0.004351092475507065, 0.004324542563160961, 0.0042978301517665445, 0.004270956245069615, 0.004243921852884324, 0.0042167279910552205, 0.0041893756814190925, 0.00416186595176656, 0.004134199835803465, 0.004106378373112013, 0.004078402609111728, 0.004050273595020158, 0.00402199238781338, 0.003993560050186275, 0.003964977650512608, 0.003936246262804879, 0.003907366966673954, 0.003878340847288517, 0.003849168995334278, 0.0038198525069729978, 0.0037903924838012964, 0.0037607900328092566, 0.0037310462663388342, 0.003701162302042053, 0.0036711392628390144, 0.0036409782768756986, 0.003610680477481574, 0.0035802470031270138, 0.0035496789973805125, 0.0035189776088657195, 0.0034881439912182767, 0.003457179303042465, 0.003426084707867678, 0.00339486137410469, 0.0033635104750017694, 0.0033320331886005678, 0.003300430697691875, 0.0032687041897711644, 0.003236854856993974, 0.0032048838961311115, 0.0031727925085236813, 0.003140581900037945, 0.0031082532810200124, 0.0030758078662503534, 0.0030432468748981577, 0.0030105715304755273, 0.00297778306079149, 0.002944882697905876, 0.002911871678083013, 0.0028787512417452737, 0.0028455226334264724, 0.002812187101725092, 0.002778745899257372, 0.002745200282610239, 0.0027115515122940878, 0.002677800852695418, 0.0026439495720293233, 0.0026099989422918397, 0.002575950239212142, 0.0025418047422046145, 0.0025075637343207747, 0.0024732285022010586, 0.0024388003360264732, 0.002404280529470124, 0.002369670379648598, 0.002334971187073223, 0.0023001842556012063, 0.0022653108923866338, 0.0022303524078313595, 0.0021953101155357635, 0.0021601853322493884, 0.002124979377821473, 0.002089693575151347, 0.002054329250138731, 0.002018887731633912, 0.001983370351387809, 0.001947778444001943, 0.0019121133468782765, 0.0018763764001689714, 0.0018405689467260314, 0.001804692332050843, 0.001768747904243624, 0.0017327370139527706, 0.0016966610143241087, 0.001660521260950056, 0.0016243191118186897, 0.0015880559272627266, 0.0015517330699084187, 0.0015153519046243596, 0.0014789137984702173, 0.0014424201206453765, 0.0014058722424375165, 0.0013692715371711026, 0.0013326193801558187, 0.0012959171486349255, 0.001259166221733556, 0.001222367980406954, 0.0011855238073886604, 0.0011486350871386503, 0.0011117032057914326, 0.0010747295511041243, 0.0010377155124045077, 0.001000662480539091, 0.0009635718478212056, 0.0009264450079791585, 0.0008892833561045004, 0.0008520882886004808, 0.0008148612031307818, 0.0007776034985686975, 0.0007403165749469819, 0.000703001833408741, 0.0006656606761599342, 0.0006282945064244356, 0.0005909047284032232, 0.0005534927472403894, 0.0005160599690007673, 0.0004786078006679509, 0.00044113765017954066, 0.0004036509265333198, 0.00036614904003562674, 0.0003286334028523335, 0.00029110543025148846, 0.00025356654357058654, 0.00021601817797699084, 0.00017846180554595328, 0.00014089901738819851, 0.00010333190349691323, 6.57657316592402e-5, 2.8252637373934688e-5])
    result=0.
    for i in eachindex(x)
        result+=f(x[i])*w[i]
    end
    return result
end

function gausslegendreint(f::Function,a::Float64,b::Float64,step::Int,n::Int)
    ```
    从a到b的高斯积分，
    分为n类
    第一类是从a到b的排列是直接拉伸
    第二类是从a到b的指数伸长
    ```
    x,w= gausslegendre(step)
    result=0.::Float64
    if n==1
        #放缩系数k
        k1= (b-a)/2
        k2= (a+b)/2
        x=k2 .+(k1 .*x)
        for i in eachindex(x)
            result+=f(x[i])*w[i]
        end
        result*=(b-a)/2
    elseif n==2
        a=sqrt(a)
        b=sqrt(b)
        x=a*b*(b/a).^x
        for i in eachindex(x)
            w[i]*=x[i]*(log(b)-log(a))
            result+=f(x[i])*w[i]
        end
    end
    result
end






########################################################################
########################################################################
################# 高斯切比雪夫积分 ########################################
########################################################################
# 第二类高斯切比雪夫积分
function gausschebyshevint64(f)
    x,w= ([-0.9988322268323265, -0.9953316347176486, -0.9895063994510511, -0.9813701261394134, -0.9709418174260519, -0.9582458291091662, -0.943311813257743, -0.9261746489577763, -0.9068743608505454, -0.8854560256532098, -0.8619696668800491, -0.8364701380102267, -0.8090169943749473, -0.7796743540632223, -0.7485107481711012, -0.7155989607441211, -0.6810158587867969, -0.6448422127361707, -0.6071625078187112, -0.5680647467311557, -0.5276402441061325, -0.48598341324260613, -0.44319154559924123, -0.3993645835656953, -0.35460488704253545, -0.30901699437494734, -0.26270737819858675, -0.21578419676780602, -0.16835704134703852, -0.12053668025532288, -0.0724348001617625, -0.024163745236132295, 0.024163745236132416, 0.0724348001617624, 0.12053668025532323, 0.16835704134703863, 0.21578419676780614, 0.262707378198587, 0.30901699437494745, 0.35460488704253557, 0.39936458356569565, 0.44319154559924134, 0.4859834132426062, 0.5276402441061327, 0.5680647467311559, 0.6071625078187113, 0.6448422127361706, 0.681015858786797, 0.7155989607441211, 0.7485107481711012, 0.7796743540632224, 0.8090169943749475, 0.8364701380102267, 0.8619696668800493, 0.8854560256532099, 0.9068743608505454, 0.9261746489577766, 0.943311813257743, 0.9582458291091662, 0.970941817426052, 0.9813701261394134, 0.9895063994510511, 0.9953316347176486, 0.9988322268323266], [0.00011281616981006609, 0.0004502113450594091, 0.0010090353579028952, 0.0017840706190995188, 0.0027680808332373324, 0.003951878562074035, 0.005324411005172348, 0.006872863196919793, 0.008582777656409636, 0.010438189373044986, 0.012421774867540984, 0.014515013936583516, 0.01669836257097739, 0.018951435432794466, 0.021253196187781292, 0.023582153915944187, 0.025916563766478683, 0.028234629983582803, 0.030514709407556222, 0.032735513551151244, 0.03487630736444211, 0.03691710283239958, 0.038838845597601625, 0.040623592865634925, 0.04225468093213172, 0.04371688076728787, 0.044996540205210746, 0.04608171141051389, 0.046962262432036814, 0.047629971802143074, 0.04807860529834849, 0.04830397415057664, 0.04830397415057664, 0.04807860529834849, 0.047629971802143074, 0.046962262432036814, 0.04608171141051389, 0.044996540205210746, 0.043716880767287865, 0.04225468093213172, 0.04062359286563491, 0.038838845597601625, 0.03691710283239958, 0.03487630736444211, 0.032735513551151244, 0.030514709407556222, 0.028234629983582785, 0.025916563766478693, 0.023582153915944187, 0.021253196187781292, 0.018951435432794452, 0.01669836257097738, 0.014515013936583516, 0.012421774867540994, 0.010438189373044983, 0.008582777656409636, 0.006872863196919782, 0.005324411005172357, 0.003951878562074035, 0.0027680808332373346, 0.0017840706190995152, 0.0010090353579028943, 0.0004502113450594096, 0.00011281616981006701])
    result= 0.::Float64
    for i in eachindex(x)
        result+= f(x[i])*w[i]
    end
    result
end