# 1 files combined:
# 	/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/pyrate_mcmc_logs/canid_occ_1_marginal_rates.log

# 95% HPDs calculated using code from Biopy (https://www.cs.auckland.ac.nz/~yhel002/biopy/)

pdf(file='/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/pyrate_mcmc_logs/canid_occ_1_marginal_rates_RTT.pdf',width=0.6*9, height=16.8)
par(mfrow=c(4,1))
library(scales)
L_hpd_m95=c(0.182149632472, 0.182149632472,0.182149632472,0.166117863976,0.112336618376,0.0487238476777,0.0355732148021,0.0355732148021,0.0419003604731,0.0419003604731,0.0430782491893,0.0430782491893,0.0430782491893,0.0430782491893,0.0419003604731,0.0448672899229,0.0489539876378,0.0823460347932,0.0877289084242,0.0913544517865,0.0929411335071,0.099929367136,0.0999336080344,0.0999336080344,0.0999336080344,0.0999336080344,0.0999336080344,0.0929411335071,0.0929411335071,0.0913544517865,0.0883876444871,0.100286846317,0.127494077303,0.127494077303,0.118321118745,0.136481112663,0.127494077303,0.127494077303,0.118321118745,0.118321118745,0.118321118745,0.111355838634,0.111355838634,0.111355838634,0.111355838634,0.111355838634,0.111355838634,0.111355838634,0.111355838634,0.111355838634)
L_hpd_M95=c(0.37215996988, 0.37215996988,0.37215996988,0.366707663004,0.356357144679,0.349910197578,0.183232202603,0.141715522428,0.141715522428,0.141715522428,0.142223309173,0.142223309173,0.142223309173,0.142223309173,0.141715522428,0.150200875068,0.173978585864,0.18990507719,0.18990507719,0.18990507719,0.18990507719,0.19342525212,0.19342525212,0.19342525212,0.19342525212,0.18990507719,0.18990507719,0.18990507719,0.18990507719,0.19342525212,0.295865058423,0.384189195641,0.416561866743,0.416561866743,0.416561866743,0.431703911742,0.416561866743,0.416561866743,0.41262795612,0.416561866743,0.416561866743,0.41262795612,0.41262795612,0.416561866743,0.416561866743,0.416561866743,0.416561866743,0.416561866743,0.416561866743,0.416561866743)
M_hpd_m95=c(0.865529423965, 0.865529423965,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.0930906064166,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.092178077692,0.0893894365041,0.0893894365041,0.0794086326211,0.0640352140407,0.0568390170489,0.0568390170489,0.0568390170489,0.0487960100535,0.046006718971,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0445145657402,0.0395122593183,0.0424260269958,0.0390805243416,0.0390805243416,0.0362360674982,0.0362360674982,0.0362360674982,0.0362360674982,0.0362360674982,0.0362360674982,0.0362360674982)
M_hpd_M95=c(1.53119395385, 1.53119395385,0.154332156407,0.154332156407,0.154332156407,0.154332156407,0.152897632056,0.151983594567,0.151983594567,0.143590955889,0.143590955889,0.143590955889,0.142655877278,0.142655877278,0.142655877278,0.142655877278,0.142655877278,0.142655877278,0.143590955889,0.143611673721,0.143611673721,0.143611673721,0.141800087936,0.135643237598,0.135643237598,0.135643237598,0.133819058632,0.116414185385,0.109269457185,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.103381915923,0.0984583023224,0.105322638429,0.106968941417,0.21144452536,0.21144452536,0.21144452536,0.21144452536,0.21144452536,0.21144452536,0.21144452536,0.21144452536)
R_hpd_m95=c(-1.22573913477, -1.22573913477,0.0689972584094,0.0576046509471,0.000316810670183,-0.0762618299647,-0.131059474929,-0.0943316584759,-0.0943316584759,-0.0824725142761,-0.0790790716856,-0.0790790716856,-0.0790790716856,-0.0790790716856,-0.0784104117851,-0.0790790716856,-0.0750789983917,-0.036685746069,-0.0405065028816,-0.038200738055,-0.038200738055,-0.0312517897705,-0.0340605106467,-0.0239927320755,-0.0239927320755,-0.0239927320755,-0.0126373204893,-0.000482858783868,0.00639202622366,0.00639202622366,0.0134068664051,0.033009627613,0.0407838465043,0.0481916005958,0.0576276846944,0.0576276846944,0.0634712629778,0.0634712629778,0.0576276846944,0.0576276846944,0.0540626958117,0.033009627613,0.0146617913075,0.0349457294049,0.0349457294049,0.0349457294049,0.0349457294049,0.0349457294049,0.0349457294049,0.0349457294049)
R_hpd_M95=c(-0.5723503675, -0.5723503675,0.28248418854,0.289684107135,0.254800595239,0.240926289571,0.036946039713,0.034402567377,0.0200076911529,0.0200669272781,0.0231168966326,0.0231168966326,0.0241662093974,0.0241662093974,0.0281232184193,0.034402567377,0.0614794963765,0.0807153069849,0.0756163113036,0.0725760272952,0.0725760272952,0.0807153069849,0.0859829061112,0.099781408139,0.101904899844,0.104297678572,0.118037157507,0.118037157507,0.118932539633,0.130507676603,0.244541883983,0.325813569282,0.347865159157,0.358349966993,0.367925361025,0.365100644929,0.369523025821,0.369523025821,0.365100644929,0.369523025821,0.369523025821,0.354250211822,0.369523025821,0.413514226267,0.413514226267,0.413514226267,0.413514226267,0.429181833895,0.429181833895,0.429181833895)
L_mean=c(0.283652891798, 0.283652891798,0.283652891798,0.282578478419,0.276607759727,0.213307687616,0.086535904066,0.0822870425439,0.0801738246652,0.0801738246652,0.0797739047168,0.0798870050805,0.0802199694708,0.0802199694708,0.0813749103491,0.0839720353507,0.113903581716,0.138745135384,0.14007729377,0.141109988547,0.141699407594,0.142223326497,0.142519246285,0.142519246285,0.142518806858,0.142349661845,0.142351552816,0.143058408455,0.143058408455,0.145263261654,0.161918180321,0.221674908421,0.280300696435,0.289817478155,0.298213510891,0.297397610436,0.297225901147,0.296498125135,0.296917242942,0.296976750058,0.299460288123,0.299708180067,0.299944356109,0.300194743119,0.299180159555,0.300051726624,0.300051726624,0.300305473908,0.300305473908,0.300305473908)
M_mean=c(1.20516719157, 1.20516719157,0.12265547224,0.12265547224,0.12265547224,0.122677039143,0.121569413824,0.121394487355,0.120213083113,0.116525173384,0.116056246287,0.115904621229,0.115701984368,0.115694895679,0.115694895679,0.115694895679,0.115633380541,0.11561655473,0.115956208675,0.116743930835,0.116743930835,0.1163297378,0.110414754733,0.10664196508,0.101088135195,0.0971433901849,0.0865714274718,0.0797232161417,0.0750560870147,0.0739380885511,0.0739380885511,0.0737800380402,0.0737800380402,0.0737800380402,0.0737800380402,0.0737800380402,0.0737800380402,0.0737800380402,0.0737800380402,0.0742495362433,0.0752699465205,0.0778398252872,0.0859337899802,0.0860507249766,0.0860507249766,0.0860507249766,0.0860507249766,0.0860507249766,0.0860507249766,0.0860507249766)
R_mean=c(-0.921514299775, -0.921514299775,0.160997419557,0.159923006179,0.153952287487,0.0906306484722,-0.0350335097583,-0.0391074448114,-0.0400392584473,-0.0363513487192,-0.0362823415703,-0.0360176161489,-0.0354820148967,-0.0354749262086,-0.0343199853304,-0.0317228603288,-0.00172979882481,0.0231285806541,0.0241210850945,0.0243660577122,0.0249554767592,0.0258935886968,0.0321044915524,0.0358772812052,0.0414306716628,0.04520627166,0.0557801253443,0.063335192313,0.06800232144,0.071325173103,0.0879800917703,0.14789487038,0.206520658395,0.216037440115,0.224433472851,0.223617572396,0.223445863107,0.222718087095,0.223137204902,0.222727213814,0.224190341602,0.22186835478,0.214010566129,0.214144018142,0.213129434579,0.214001001648,0.214001001648,0.214254748932,0.214254748932,0.214254748932)
trans=0.5
age=(0:(50-1))* -1
plot(age,age,type = 'n', ylim = c(0, 0.474874302916), xlim = c(-52.5,2.5), ylab = 'Speciation rate', xlab = 'Ma',main='canid' )
polygon(c(age, rev(age)), c(L_hpd_M95, rev(L_hpd_m95)), col = alpha("#4c4cec",trans), border = NA)
lines(rev(age), rev(L_mean), col = "#4c4cec", lwd=3)
plot(age,age,type = 'n', ylim = c(0, 1.68431334923), xlim = c(-52.5,2.5), ylab = 'Extinction rate', xlab = 'Ma' )
polygon(c(age, rev(age)), c(M_hpd_M95, rev(M_hpd_m95)), col = alpha("#e34a33",trans), border = NA)
lines(rev(age), rev(M_mean), col = "#e34a33", lwd=3)
plot(age,age,type = 'n', ylim = c(-1.34831304824, 0.472100017284), xlim = c(-52.5,2.5), ylab = 'Net diversification rate', xlab = 'Ma' )
abline(h=0,lty=2,col="darkred")
polygon(c(age, rev(age)), c(R_hpd_M95, rev(R_hpd_m95)), col = alpha("#504A4B",trans), border = NA)
lines(rev(age), rev(R_mean), col = "#504A4B", lwd=3)
plot(age,age,type = 'n', ylim = c(0, max(1/M_mean)), xlim = c(-52.5,2.5), ylab = 'Longevity (Myr)', xlab = 'Ma' )
lines(rev(age), rev(1/M_mean), col = "#504A4B", lwd=3)
n <- dev.off()