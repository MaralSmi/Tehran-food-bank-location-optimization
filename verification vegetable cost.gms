Sets
    a       foodgroups           /Cereal, Vegetables, Fruit, Fats_and_oils, Dairy, Fish, Meat, Eggs, Pulses/  
    p       Population groups    /Men_9_13, Women_9_13, Men_14_18, Women_14_18, Men_19_30, Women_19_30, Men_31_50, Women_31_50, Men_51_70, Women_51_70, Men_71_75, Women_71_75/  
    pr      nutrients            /Carbohydrates, Fibre, Lipids, Linoleic_Acid, Alfalinoleic_Acid, Protein/     
    fv(a)   fruit and vegetables /Fruit , Vegetables /
    s       suppliers            / s1 , s2 , s3, s4, s5, s6, s7, s8 ,s9 /
    z       districts            / d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22/
    j       food bank location   / f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,f21,f22/;
Parameter
    pre(a) Costs of Each Food Group(1kg-toman)
    /Cereal 20500, Vegetables 420000, Fruit 57500, Fats_and_oils 54000, Dairy 23970, Fish 245000, Meat 600000, Eggs 36870, Pulses 230000/;
    

parameter
   don_a(a)  Amount of donations
   /Cereal 120000, Vegetables 50000 , Fruit 40000,Fats_and_oils 35000, Dairy 60000, Fish 500, Meat 1200, Eggs 2200 , Pulses 35000/;

parameter
    sabad_kala(a)
    /Cereal 3.276 , Vegetables 6.509 , Fruit 0.014 ,Fats_and_oils 0.201, Dairy 0.02, Fish  0.0002 , Meat 0.0005, Eggs 0.007 , Pulses 0.011/;
    
    
parameter needy_num(z)
/d1 80028,d2 92943,d3 70533,d4 141820,d5 138198,d6 101448,d7 105123,d8 111948,d9 138478,d10 147718,d11 146548,d12 142520,d13 142940,d14 159110,d15 306948,d16 143148,d17 283658,d18 295208,d19 285008,d20 292208,d21 99033,d22 98298/;
 
Parameter  demand(z)  kg ersali be har mantaghe 
/d1 10500000, d2 77231840, d3 58610080, d4 117846720, d5 114837000, d6 84300000, d7 87352960, d8 93024240, d9 115069600, d10 122747680, d11 121775520, d12 118428400, d13 118777360, d14 132213800, d15 255061440, d16 118950240, d17 235701760, d18 245306000, d19 236830240, d20 242813120, d21 82292400, d22 81681680
/;
parameter
   minDist(a) 'minimum distributed quantity of food group a (kg/week)'
   / Cereal        80000
     Vegetables    60000
     Fruit         50000
     Fats_and_oils 30000
     Dairy         70000
     Fish          1000
     Meat          2000
     Eggs          25000
     Pulses        40000/;

 
table    nec(p,pr) Nutritional requirements per population group and nutrient  
                 Carbohydrates  Fibre   Lipids   Linoleic_Acid   Alfalinoleic_Acid   Protein   
 Men_9_13          0.910         0.217   0.389    0.084            0.008               0.238    
 Women_9_13        0.910         0.182   0.342    0.070            0.007               0.238    
 Men_14_18         0.910         0.266   0.529    0.112            0.011               0.364    
 Women_14_18       0.910         0.182   0.389    0.077            0.008               0.322    
 Men_19_30         0.910         0.266   0.436    0.119            0.011               0.392  
 Women_19_30       0.910         0.175   0.342    0.084            0.008               0.322    
 Men_31_50         0.910         0.266   0.389    0.119            0.011               0.392    
 Women_31_50       0.910         0.175   0.303    0.084            0.008               0.322    
 Men_51_70         0.910         0.210   0.319    0.098            0.011               0.392    
 Women_51_70       0.910         0.147   0.272    0.077            0.008               0.322    
 Men_71_75         0.910         0.210   0.311    0.098            0.011               0.392    
 Women_71_75       0.910         0.147   0.264    0.077            0.008               0.322    ;
 
Table   pen_pr(p,pr)  cost of nutrients not supplied(toman-kg) (hamon 1000 dar nazar migirim to mahdodiat)
                         Carbohydrates  Fibre      Lipids    Linoleic_Acid Alfalinoleic_Acid Protein    
 Men_9_13                  4305000      4025000    2646000   378000        205800             168000000          
 Women_9_13                3946250      3542000    2268000   302400        171500             147000000
 Men_14_18                 5022500      4830000    3024000   453600        274400             231000000   
 Women_14_18               4305000      4186000    2646000   378000        188650             189000000   
 Men_19_30                 5453000      5313000    3213000   529200        274400             252000000
 Women_19_30               4305000      4508000    2646000   415800        188650             210000000
 Men_31_50                 5022500      4991000    3024000   529200        274400             235200000
 Women_31_50               4305000      4025000    2646000   415800        188650             193200000    
 Men_51_70                 4735500      4830000    2835000   491400        274400             235200000   
 Women_51_70               4018000      3381000    2475000   415800        188650             193200000
 Men_71_75                 4448000      4508000    2646000   415800        257250             235200000
 Women_71_75               3874500      3220000    2268000   378000        188650             183200000 ;
 
parameter 
 card_p(p)  Number of people by population group
  /Men_9_13 160000, Women_9_13  150000, Men_14_18 180000,
  Women_14_18 170000, Men_19_30 500000,Women_19_30 480000, Men_31_50 600000, Women_31_50 580000, Men_51_70 400000
  , Women_51_70 380000, Men_71_75 100000, Women_71_75 110000/;
 
Parameter
 cal(a)  food energy
 /Cereal 3231.424, Vegetables 438.705 , Fruit 732.678, Fats_and_oils 8557.613 , Dairy 750.534, Fish 1359.269,
 Meat 1897.343, Eggs 1387.487, Pulses 2952.075/;
 

parameter 
 MCALr(pr)  max sahm mojaz pr dar tamin energy
 /Carbohydrates 0.65, Lipids 0.35, Protein 0.35, Fibre 0.00, Linoleic_Acid 0.012,
 Alfalinoleic_Acid 0.1/;
 
Parameter   
 NECp_ener(p) niaz be energy baraye har fard dar p
 /Men_9_13 17500, Women_9_13 15400, Men_14_18 23800, Women_14_18 17500, Men_19_30 19600, Women_19_30 15400, Men_31_50 17500, Women_31_50 13650, Men_51_70 14350, Women_51_70 12250, Men_71_75 14000, Women_71_75 11900/;

parameter
B(s) meghdar ghazaye kharidari shode
/ s7 9078061600, s2 18186557600, s3 8000000, s6 541614400, s5 8000000, s8 400000, s1 640000, s9 18240000, s4 4000000/;
Parameters
qfv_g(p)   minimum amount of fruits and vegetables to be consumed(kg_1 week)
 /Men_9_13 2, Women_9_13 2, Men_14_18 2, Women_14_18 2, Men_19_30 2, Women_19_30 2, Men_31_50 2
 , Women_31_50 2, Men_51_70 2, Women_51_70 2,Men_71_75 2, Women_71_75 2 / ;

table nut(a,pr)   mosharekat har goroh ghazayi dar tamin niaz moghazi(KG)
                Carbohydrates   Fibre     lipids    Linoleic_Acid   Alfalinoleic_Acid    Protein     
Cereal          0.591568        0.033017  0.052669  0.007102           0.000444           0.084367   
Vegetables      0.085626        0.018125  0.002778  0.000228           0.000099           0.017024    
Fruit           0.129716        0.018594  0.012380  0.001362           0.000125           0.012063    
Fats_and_oils   0.000713        0.000     0.967151  0.083183           0.003791           0.000860    
Dairy           0.064445        0.000178  0.036964  0.003897           0.000598           0.044913    
Fish            0.002745        0.000     0.069556  0.023223           0.007117           0.167528   
Meat            0.003846        0.000     0.121615  0.029703           0.003442           0.170717   
Eggs            0.000           0.000     0.102321  0.008161           0.000770           0.121487    
Pulses          0.435433        0.086444  0.027740  0.004425           0.000038           0.179292    ;

Parameter 
nuta_energy (a)
/Cereal         3231.424, Vegetables  438.750, Fruit  732.678, Fats_and_oils   8557.613 ,Dairy   750.534 ,Fish   1359.269
Meat     1897.343  , Eggs   1387.487 ,  Pulses    2952.075 /;   

Parameter
 cal_pr(pr)  cal mavad moghazi
/Carbohydrates  4000 ,Fibre 0 ,Lipids 9000, Protein 4000, Linoleic_Acid 9000 ,Alfalinoleic_Acid 9000 /;



Table dist(z,j) distance of districs and foodbanks

       f1    f2    f3    f4    f5    f6    f7    f8    f9    f10   f11   f12   f13   f14   f15   f16   f17   f18   f19   f20   f21   f22
d1     0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5  40.0  42.5  45.0  47.5  50.0  52.5
d2     2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5  40.0  42.5  45.0  47.5  50.0
d3     5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5  40.0  42.5  45.0  47.5
d4     7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5  40.0  42.5  45.0
d5     10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5  40.0  42.5
d6     12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5  40.0
d7     15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0  37.5
d8     17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5  35.0
d9     20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0  32.5
d10    22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5  30.0
d11    25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0  27.5
d12    27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5  25.0
d13    30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0  22.5
d14    32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5  20.0
d15    35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0  17.5
d16    37.5  35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5  15.0
d17    40.0  37.5  35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0  12.5
d18    42.5  40.0  37.5  35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5   10.0
d19    45.0  42.5  40.0  37.5  35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0   7.5
d20    47.5  45.0  42.5  40.0  37.5  35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5   5.0
d21    50.0  47.5  45.0  42.5  40.0  37.5  35.0  32.5  30.0  27.5  25.0  22.5  20.0  17.5  15.0  12.5  10.0  7.5   5.0   2.5   0.0   2.5
d22    52.5  50.0  47.5  45    42.5  40    37.5  35    32.5  30    27.5  25    22.5  20   17.5   15    12.5  10    7.5   5     2.5   0 ;

table  supply(s,j)  distance between suppliers and foodbank

       f1     f2     f3     f4     f5     f6     f7     f8     f9     f10    f11    f12    f13    f14    f15    f16    f17    f18    f19    f20    f21    f22
s1     37.5   35.0   32.5   30.0   27.5   25.0   22.5   25.0   27.5   30.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0   52.5   55.0   57.5   60.0
s2     42.5   40.0   37.5   35.0   32.5   30.0   27.5   30.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0   52.5   55.0   57.5   60.0   62.5   65.0
s3     45.0   42.5   40.0   37.5   35.0   32.5   30.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0   52.5   55.0   57.5   60.0   62.5   65.0   67.5
s4     27.5   25.0   22.5   20.0   17.5   15.0   12.5   15.0   17.5   20.0   22.5   25.0   27.5   30.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0
s5     47.5   45.0   42.5   40.0   37.5   35.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0   52.5   55.0   57.5   60.0   62.5   65.0   67.5   70.0
s6     15.0   12.5   10.0   7.5    5.0    2.5    0.0    2.5    5.0    7.5    10.0   12.5   15.0   17.5   20.0   22.5   25.0   27.5   30.0   32.5   35.0   37.5
s7     15.0   12.5   10.0   7.5    5.0    2.5    0.0    2.5    5.0    7.5    10.0   12.5   15.0   17.5   20.0   22.5   25.0   27.5   30.0   32.5   35.0   37.5
s8     35.0   32.5   30.0   27.5   25.0   22.5   20.0   22.5   25.0   27.5   30.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0   52.5   55.0   57.5
s9     42.5   40.0   37.5   35.0   32.5   30.0   27.5   30.0   32.5   35.0   37.5   40.0   42.5   45.0   47.5   50.0   52.5   55.0   57.5   60.0   62.5   65.0
;




Variables
    sap(a,p)         Amounts of distributed food(kg)
    ca(a)            Amounts of purchased food(kg)
    ea(a)            Excess of food f
    cnspr(p,pr)      non_suplied nutrients
    M(s,j)           cost of s to foodbank
    N(j,z)           cost of food bank ti districs
    y(j)             binary  variable to choose food bank place 
    obj              Objective function;

Positive Variables sap, ca, ea, cnspr,M , N ;
Binary Variable y ;

Equations
    cost                     Objective function
    tnt_limit(p,pr)          mahdodiat tami niaz taghziei    
    cal_limit(a,pr)             mahdodiat calory
    fDistribution_limit(a)   mahdodiat tozi ghaza
    min_f_v(p)               mahdodiat min mive o sabzijat
    minDistribution(a) 'ensure minimum total distribution of each food group'
    chosen_districs   entekhab makan banj ghaza
    conditional_choosing_s(s,j) shar ekhab bank ghaza ba motagheyere binary
    conditional_choosing_z(z,j) shart entekhab bank ghaza ba motaghere binary
    cost_of_sending(s,j)      hazine ersal az foroshandegan be bank
    cost_of_recieving(z,j)     hazine ersal az bank be manategh
    max_distance (z,j)        hadaksar faseli ghabel ghabol
    ;


  cost  ..  obj =e= sum((a), Pre(a) * ca(a)) + sum((p,pr),  pen_pr(p,pr) * cnspr(p,pr))+ (sum((s,j) , M(s,j))+sum((j,z) , N(j,z)))/10;
  

  chosen_districs .. sum(j,y(j))=e=1;
  
  conditional_choosing_s(s,j) .. y(j)*1000000000000 =g= M(s,j);
  
  conditional_choosing_z(z,j) ..  y(j)*1000000000000 =g= N(j,z);
  
  cost_of_sending(s,j)  ..   M(s,j) =e= B(s)* supply(s,j) * y(j);
  
  cost_of_recieving(z,j) ..  N(j,z) =e= demand(z) * dist(z,j) *y(j);
  
  max_distance (z,j) ..  dist(z,j) * y(j)  =l= 35;


  tnt_limit(p,pr)  ..  sum(a, sap(a,p) * nut(a,pr)) + cnspr(p,pr) =g= nec(p,pr) * card_p(p);


  cal_limit(a,pr)  ..  sum( p , sap(a,p)  * nut(a,pr))*cal_pr(pr) =l= sum(p,  NECp_ener(p) * card_p(p))*MCALr(pr);



  fDistribution_limit(a)  ..  sum(p,sap(a,p))=e= ca(a) + don_a(a) - ea(a);


  min_f_v(p)  ..  sum(a$(fv(a)), sap(a,p)) =g= qfv_g(p) ;
  
  minDistribution(a) ..
   sum(p, sap(a,p)) =G= minDist(a);


Model foodBank /all/;


Option lp = cplex;
Solve foodBank using MIP minimizing obj; 

Display sap.l, ca.l, ea.l, cnspr.l , obj.l ,y.l ;
