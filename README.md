Human Activity Recognition Using Smartphones Dataset - Getting and Cleaning
=========================================================================

Script downloads HAR dataset [1] from server, extracts files, combines test and
train data into one tidy data frame with average values for all mean and standard
deviation features grouped by test subject and activity. Resulting data is written
to HAR_tidy.csv file.

See [CodeBook](CodeBook.md) for feature description. Important steps described
in script comments.

Download and extract zip file or clone in your working directory. Run as shell script

```{shell}
R -f run_analysis.R
```

or run in R environment as shown below.


```r
# load and run script
source("run_analysis.R")
```

```
## Loading required package: reshape2
```

```r

# display summary
summary(tidy)
```

```
##     Subject                    Activity      AID       tBodyAcc-mean()-X
##  Min.   : 1.00   LAYING            :6   Min.   :1.00   Min.   :0.266    
##  1st Qu.: 8.75   SITTING           :7   1st Qu.:2.00   1st Qu.:0.271    
##  Median :15.50   STANDING          :7   Median :3.50   Median :0.275    
##  Mean   :15.38   WALKING           :6   Mean   :3.48   Mean   :0.274    
##  3rd Qu.:22.00   WALKING_DOWNSTAIRS:6   3rd Qu.:5.00   3rd Qu.:0.278    
##  Max.   :30.00   WALKING_UPSTAIRS  :8   Max.   :6.00   Max.   :0.280    
##  tBodyAcc-mean()-Y tBodyAcc-mean()-Z tBodyAcc-std()-X tBodyAcc-std()-Y
##  Min.   :-0.0209   Min.   :-0.1183   Min.   :-0.992   Min.   :-0.972  
##  1st Qu.:-0.0186   1st Qu.:-0.1100   1st Qu.:-0.668   1st Qu.:-0.591  
##  Median :-0.0177   Median :-0.1087   Median :-0.619   Median :-0.532  
##  Mean   :-0.0175   Mean   :-0.1088   Mean   :-0.628   Mean   :-0.531  
##  3rd Qu.:-0.0164   3rd Qu.:-0.1067   3rd Qu.:-0.554   3rd Qu.:-0.422  
##  Max.   :-0.0134   Max.   :-0.0996   Max.   :-0.127   Max.   : 0.121  
##  tBodyAcc-std()-Z tGravityAcc-mean()-X tGravityAcc-mean()-Y
##  Min.   :-0.976   Min.   :0.475        Min.   :-0.18002    
##  1st Qu.:-0.705   1st Qu.:0.647        1st Qu.:-0.06255    
##  Median :-0.647   Median :0.674        Median : 0.01905    
##  Mean   :-0.645   Mean   :0.679        Mean   : 0.00437    
##  3rd Qu.:-0.578   3rd Qu.:0.703        3rd Qu.: 0.06738    
##  Max.   :-0.083   Max.   :0.963        Max.   : 0.28147    
##  tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y
##  Min.   :-0.2849      Min.   :-0.996      Min.   :-0.983     
##  1st Qu.: 0.0395      1st Qu.:-0.972      1st Qu.:-0.962     
##  Median : 0.0916      Median :-0.966      Median :-0.957     
##  Mean   : 0.0862      Mean   :-0.966      Mean   :-0.956     
##  3rd Qu.: 0.1428      3rd Qu.:-0.959      3rd Qu.:-0.951     
##  Max.   : 0.2392      Max.   :-0.934      Max.   :-0.901     
##  tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y
##  Min.   :-0.974      Min.   :0.0572        Min.   :-0.00310     
##  1st Qu.:-0.954      1st Qu.:0.0768        1st Qu.: 0.00383     
##  Median :-0.943      Median :0.0782        Median : 0.00720     
##  Mean   :-0.942      Mean   :0.0781        Mean   : 0.00745     
##  3rd Qu.:-0.930      3rd Qu.:0.0819        3rd Qu.: 0.01064     
##  Max.   :-0.881      Max.   :0.0866        Max.   : 0.02005     
##  tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X tBodyAccJerk-std()-Y
##  Min.   :-0.019672     Min.   :-0.994       Min.   :-0.9872     
##  1st Qu.:-0.007373     1st Qu.:-0.700       1st Qu.:-0.6785     
##  Median :-0.003981     Median :-0.637       Median :-0.6220     
##  Mean   :-0.004458     Mean   :-0.655       Mean   :-0.6208     
##  3rd Qu.:-0.000788     3rd Qu.:-0.576       3rd Qu.:-0.5029     
##  Max.   : 0.015534     Max.   :-0.172       Max.   : 0.0041     
##  tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y
##  Min.   :-0.991       Min.   :-0.0703    Min.   :-0.1014   
##  1st Qu.:-0.828       1st Qu.:-0.0419    1st Qu.:-0.0829   
##  Median :-0.782       Median :-0.0276    Median :-0.0773   
##  Mean   :-0.778       Mean   :-0.0314    Mean   :-0.0750   
##  3rd Qu.:-0.727       3rd Qu.:-0.0208    3rd Qu.:-0.0706   
##  Max.   :-0.387       Max.   : 0.0078    Max.   :-0.0422   
##  tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y tBodyGyro-std()-Z
##  Min.   :0.0483     Min.   :-0.988    Min.   :-0.986    Min.   :-0.986   
##  1st Qu.:0.0840     1st Qu.:-0.767    1st Qu.:-0.767    1st Qu.:-0.724   
##  Median :0.0883     Median :-0.720    Median :-0.727    Median :-0.688   
##  Mean   :0.0884     Mean   :-0.735    Mean   :-0.703    Mean   :-0.671   
##  3rd Qu.:0.0960     3rd Qu.:-0.677    3rd Qu.:-0.644    3rd Qu.:-0.597   
##  Max.   :0.1163     Max.   :-0.353    Max.   :-0.217    Max.   :-0.169   
##  tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
##  Min.   :-0.1144        Min.   :-0.0501        Min.   :-0.0644       
##  1st Qu.:-0.1039        1st Qu.:-0.0440        1st Qu.:-0.0571       
##  Median :-0.0977        Median :-0.0415        Median :-0.0551       
##  Mean   :-0.0963        Mean   :-0.0422        Mean   :-0.0547       
##  3rd Qu.:-0.0914        3rd Qu.:-0.0400        3rd Qu.:-0.0527       
##  Max.   :-0.0589        Max.   :-0.0372        Max.   :-0.0419       
##  tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z
##  Min.   :-0.9927       Min.   :-0.993        Min.   :-0.994       
##  1st Qu.:-0.7790       1st Qu.:-0.871        1st Qu.:-0.796       
##  Median :-0.7350       Median :-0.808        Median :-0.757       
##  Mean   :-0.7382       Mean   :-0.797        Mean   :-0.744       
##  3rd Qu.:-0.6742       3rd Qu.:-0.724        3rd Qu.:-0.694       
##  Max.   :-0.0342       Max.   :-0.300        Max.   :-0.051       
##  tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean()
##  Min.   :-0.9803    Min.   :-0.975    Min.   :-0.9803      
##  1st Qu.:-0.6169    1st Qu.:-0.659    1st Qu.:-0.6169      
##  Median :-0.5413    Median :-0.598    Median :-0.5413      
##  Mean   :-0.5732    Mean   :-0.613    Mean   :-0.5732      
##  3rd Qu.:-0.5002    3rd Qu.:-0.545    3rd Qu.:-0.5002      
##  Max.   :-0.0554    Max.   :-0.105    Max.   :-0.0554      
##  tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std()
##  Min.   :-0.975       Min.   :-0.992         Min.   :-0.9915      
##  1st Qu.:-0.659       1st Qu.:-0.706         1st Qu.:-0.6881      
##  Median :-0.598       Median :-0.659         Median :-0.6260      
##  Mean   :-0.613       Mean   :-0.665         Mean   :-0.6435      
##  3rd Qu.:-0.545       3rd Qu.:-0.584         3rd Qu.:-0.5567      
##  Max.   :-0.105       Max.   :-0.154         Max.   :-0.0879      
##  tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroJerkMag-mean()
##  Min.   :-0.980      Min.   :-0.981     Min.   :-0.995         
##  1st Qu.:-0.694      1st Qu.:-0.745     1st Qu.:-0.830         
##  Median :-0.620      Median :-0.678     Median :-0.783         
##  Mean   :-0.627      Mean   :-0.679     Mean   :-0.772         
##  3rd Qu.:-0.550      3rd Qu.:-0.607     3rd Qu.:-0.713         
##  Max.   :-0.176      Max.   :-0.201     Max.   :-0.203         
##  tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y
##  Min.   :-0.994         Min.   :-0.992    Min.   :-0.975   
##  1st Qu.:-0.864         1st Qu.:-0.690    1st Qu.:-0.611   
##  Median :-0.801         Median :-0.623    Median :-0.556   
##  Mean   :-0.787         Mean   :-0.642    Mean   :-0.556   
##  3rd Qu.:-0.723         3rd Qu.:-0.578    3rd Qu.:-0.438   
##  Max.   :-0.237         Max.   :-0.134    Max.   : 0.102   
##  fBodyAcc-mean()-Z fBodyAcc-std()-X fBodyAcc-std()-Y  fBodyAcc-std()-Z 
##  Min.   :-0.983    Min.   :-0.993   Min.   :-0.9717   Min.   :-0.9741  
##  1st Qu.:-0.744    1st Qu.:-0.658   1st Qu.:-0.6056   1st Qu.:-0.7132  
##  Median :-0.688    Median :-0.615   Median :-0.5429   Median :-0.6515  
##  Mean   :-0.691    Mean   :-0.624   Mean   :-0.5492   Mean   :-0.6506  
##  3rd Qu.:-0.630    3rd Qu.:-0.548   3rd Qu.:-0.4582   3rd Qu.:-0.5920  
##  Max.   :-0.273    Max.   :-0.127   Max.   : 0.0592   Max.   :-0.0598  
##  fBodyAcc-meanFreq()-X fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z
##  Min.   :-0.349        Min.   :-0.1646       Min.   :-0.14060     
##  1st Qu.:-0.243        1st Qu.:-0.0283       1st Qu.: 0.00582     
##  Median :-0.218        Median : 0.0375       Median : 0.05171     
##  Mean   :-0.204        Mean   : 0.0217       Mean   : 0.05565     
##  3rd Qu.:-0.180        3rd Qu.: 0.0715       3rd Qu.: 0.09099     
##  Max.   : 0.008        Max.   : 0.1364       Max.   : 0.28431     
##  fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
##  Min.   :-0.994        Min.   :-0.9869       Min.   :-0.989       
##  1st Qu.:-0.717        1st Qu.:-0.6975       1st Qu.:-0.809       
##  Median :-0.660        Median :-0.6415       Median :-0.768       
##  Mean   :-0.672        Mean   :-0.6414       Mean   :-0.760       
##  3rd Qu.:-0.602        3rd Qu.:-0.5405       3rd Qu.:-0.709       
##  Max.   :-0.209        Max.   :-0.0872       Max.   :-0.353       
##  fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z
##  Min.   :-0.994       Min.   :-0.9886      Min.   :-0.991      
##  1st Qu.:-0.710       1st Qu.:-0.6794      1st Qu.:-0.846      
##  Median :-0.655       Median :-0.6224      Median :-0.797      
##  Mean   :-0.670       Mean   :-0.6246      Mean   :-0.795      
##  3rd Qu.:-0.586       3rd Qu.:-0.5047      3rd Qu.:-0.743      
##  Max.   :-0.207       Max.   : 0.0355      Max.   :-0.420      
##  fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y
##  Min.   :-0.2709           Min.   :-0.4003          
##  1st Qu.:-0.0922           1st Qu.:-0.2493          
##  Median :-0.0410           Median :-0.1983          
##  Mean   :-0.0301           Mean   :-0.2013          
##  3rd Qu.: 0.0170           3rd Qu.:-0.1645          
##  Max.   : 0.2577           Max.   : 0.0884          
##  fBodyAccJerk-meanFreq()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y
##  Min.   :-0.3046           Min.   :-0.9861    Min.   :-0.987    
##  1st Qu.:-0.1654           1st Qu.:-0.7126    1st Qu.:-0.800    
##  Median :-0.1051           Median :-0.6733    Median :-0.746    
##  Mean   :-0.1042           Mean   :-0.6840    Mean   :-0.724    
##  3rd Qu.:-0.0717           3rd Qu.:-0.6300    3rd Qu.:-0.642    
##  Max.   : 0.1362           Max.   :-0.0788    Max.   :-0.249    
##  fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z
##  Min.   :-0.986     Min.   :-0.988    Min.   :-0.985    Min.   :-0.987   
##  1st Qu.:-0.712     1st Qu.:-0.786    1st Qu.:-0.774    1st Qu.:-0.753   
##  Median :-0.667     Median :-0.737    Median :-0.725    Median :-0.719   
##  Mean   :-0.658     Mean   :-0.752    Mean   :-0.695    Mean   :-0.708   
##  3rd Qu.:-0.602     3rd Qu.:-0.691    3rd Qu.:-0.649    3rd Qu.:-0.639   
##  Max.   :-0.082     Max.   :-0.445    Max.   :-0.151    Max.   :-0.226   
##  fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z
##  Min.   :-0.3070        Min.   :-0.4033        Min.   :-0.26617      
##  1st Qu.:-0.1438        1st Qu.:-0.2377        1st Qu.:-0.07761      
##  Median :-0.1023        Median :-0.1594        Median :-0.04409      
##  Mean   :-0.1009        Mean   :-0.1728        Mean   :-0.04262      
##  3rd Qu.:-0.0393        3rd Qu.:-0.0961        3rd Qu.:-0.00305      
##  Max.   : 0.1225        Max.   : 0.0846        Max.   : 0.26578      
##  fBodyAccMag-mean() fBodyAccMag-std() fBodyAccMag-meanFreq()
##  Min.   :-0.9814    Min.   :-0.975    Min.   :-0.0682       
##  1st Qu.:-0.6582    1st Qu.:-0.708    1st Qu.: 0.0381       
##  Median :-0.5929    Median :-0.669    Median : 0.0849       
##  Mean   :-0.6063    Mean   :-0.678    Mean   : 0.0843       
##  3rd Qu.:-0.5174    3rd Qu.:-0.619    3rd Qu.: 0.1400       
##  Max.   :-0.0563    Max.   :-0.274    Max.   : 0.2578       
##  fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std()
##  Min.   :-0.991             Min.   :-0.991           
##  1st Qu.:-0.684             1st Qu.:-0.689           
##  Median :-0.618             Median :-0.639           
##  Mean   :-0.637             Mean   :-0.655           
##  3rd Qu.:-0.541             3rd Qu.:-0.582           
##  Max.   :-0.076             Max.   :-0.110           
##  fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean()
##  Min.   :-0.0235                Min.   :-0.986         
##  1st Qu.: 0.1217                1st Qu.:-0.772         
##  Median : 0.1770                Median :-0.727         
##  Mean   : 0.1815                Mean   :-0.710         
##  3rd Qu.: 0.2162                3rd Qu.:-0.650         
##  Max.   : 0.4035                Max.   :-0.156         
##  fBodyBodyGyroMag-std() fBodyBodyGyroMag-meanFreq()
##  Min.   :-0.980         Min.   :-0.3146            
##  1st Qu.:-0.771         1st Qu.:-0.1121            
##  Median :-0.708         Median :-0.0399            
##  Mean   :-0.716         Mean   :-0.0454            
##  3rd Qu.:-0.659         3rd Qu.: 0.0149            
##  Max.   :-0.377         Max.   : 0.2862            
##  fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
##  Min.   :-0.994              Min.   :-0.994            
##  1st Qu.:-0.865              1st Qu.:-0.872            
##  Median :-0.803              Median :-0.810            
##  Mean   :-0.789              Mean   :-0.800            
##  3rd Qu.:-0.719              3rd Qu.:-0.743            
##  Max.   :-0.253              Max.   :-0.271            
##  fBodyBodyGyroJerkMag-meanFreq()
##  Min.   :-0.0080                
##  1st Qu.: 0.0658                
##  Median : 0.1293                
##  Mean   : 0.1309                
##  3rd Qu.: 0.1818                
##  Max.   : 0.3322
```


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
