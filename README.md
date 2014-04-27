Human Activity Recognition Using Smartphones Dataset
========================================================


```r
# load and run script
source("run_analysis.R")
```

```
## Loading required package: reshape2
```

```r

# display sample
summary(df.c)
```

```
##     Subject                    Activity      AID       tBodyAcc-mean()-X
##  Min.   : 2.00   LAYING            :2   Min.   :1.00   Min.   :0.268    
##  1st Qu.: 9.25   SITTING           :3   1st Qu.:2.00   1st Qu.:0.271    
##  Median :12.00   STANDING          :2   Median :3.50   Median :0.276    
##  Mean   :12.57   WALKING           :2   Mean   :3.43   Mean   :0.274    
##  3rd Qu.:18.00   WALKING_DOWNSTAIRS:2   3rd Qu.:4.75   3rd Qu.:0.277    
##  Max.   :24.00   WALKING_UPSTAIRS  :3   Max.   :6.00   Max.   :0.279    
##  tBodyAcc-mean()-Y tBodyAcc-mean()-Z tBodyAcc-std()-X tBodyAcc-std()-Y
##  Min.   :-0.0209   Min.   :-0.116    Min.   :-0.992   Min.   :-0.939  
##  1st Qu.:-0.0188   1st Qu.:-0.110    1st Qu.:-0.674   1st Qu.:-0.597  
##  Median :-0.0177   Median :-0.108    Median :-0.631   Median :-0.516  
##  Mean   :-0.0175   Mean   :-0.108    Mean   :-0.645   Mean   :-0.542  
##  3rd Qu.:-0.0172   3rd Qu.:-0.106    3rd Qu.:-0.549   3rd Qu.:-0.408  
##  Max.   :-0.0134   Max.   :-0.101    Max.   :-0.425   Max.   :-0.259  
##  tBodyAcc-std()-Z tGravityAcc-mean()-X tGravityAcc-mean()-Y
##  Min.   :-0.972   Min.   :0.583        Min.   :-0.18002    
##  1st Qu.:-0.713   1st Qu.:0.657        1st Qu.:-0.06315    
##  Median :-0.649   Median :0.669        Median :-0.01531    
##  Mean   :-0.680   Mean   :0.690        Mean   : 0.00267    
##  3rd Qu.:-0.600   3rd Qu.:0.706        3rd Qu.: 0.07280    
##  Max.   :-0.506   Max.   :0.963        Max.   : 0.28147    
##  tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y
##  Min.   :-0.0495      Min.   :-0.996      Min.   :-0.976     
##  1st Qu.: 0.0663      1st Qu.:-0.973      1st Qu.:-0.961     
##  Median : 0.0984      Median :-0.966      Median :-0.957     
##  Mean   : 0.0904      Mean   :-0.968      Mean   :-0.957     
##  3rd Qu.: 0.1147      3rd Qu.:-0.960      3rd Qu.:-0.952     
##  Max.   : 0.1940      Max.   :-0.955      Max.   :-0.941     
##  tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y
##  Min.   :-0.974      Min.   :0.0572        Min.   :-0.00274     
##  1st Qu.:-0.957      1st Qu.:0.0775        1st Qu.: 0.00345     
##  Median :-0.945      Median :0.0785        Median : 0.00645     
##  Mean   :-0.947      Mean   :0.0775        Mean   : 0.00647     
##  3rd Qu.:-0.939      3rd Qu.:0.0801        3rd Qu.: 0.01067     
##  Max.   :-0.921      Max.   :0.0840        Max.   : 0.01538     
##  tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X tBodyAccJerk-std()-Y
##  Min.   :-0.014398     Min.   :-0.990       Min.   :-0.969      
##  1st Qu.:-0.007377     1st Qu.:-0.709       1st Qu.:-0.684      
##  Median :-0.004295     Median :-0.645       Median :-0.636      
##  Mean   :-0.003620     Mean   :-0.658       Mean   :-0.626      
##  3rd Qu.: 0.000489     3rd Qu.:-0.563       3rd Qu.:-0.458      
##  Max.   : 0.015534     Max.   :-0.414       Max.   :-0.426      
##  tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y
##  Min.   :-0.989       Min.   :-0.0703    Min.   :-0.0863   
##  1st Qu.:-0.830       1st Qu.:-0.0551    1st Qu.:-0.0788   
##  Median :-0.766       Median :-0.0321    Median :-0.0747   
##  Mean   :-0.799       Mean   :-0.0390    Mean   :-0.0719   
##  3rd Qu.:-0.737       3rd Qu.:-0.0257    3rd Qu.:-0.0683   
##  Max.   :-0.691       Max.   :-0.0145    Max.   :-0.0422   
##  tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y tBodyGyro-std()-Z
##  Min.   :0.0822     Min.   :-0.970    Min.   :-0.978    Min.   :-0.962   
##  1st Qu.:0.0878     1st Qu.:-0.773    1st Qu.:-0.772    1st Qu.:-0.722   
##  Median :0.0907     Median :-0.713    Median :-0.736    Median :-0.673   
##  Mean   :0.0926     Mean   :-0.741    Mean   :-0.727    Mean   :-0.683   
##  3rd Qu.:0.0964     3rd Qu.:-0.677    3rd Qu.:-0.652    3rd Qu.:-0.599   
##  Max.   :0.1091     Max.   :-0.598    Max.   :-0.486    Max.   :-0.461   
##  tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
##  Min.   :-0.1122        Min.   :-0.0457        Min.   :-0.0617       
##  1st Qu.:-0.0995        1st Qu.:-0.0434        1st Qu.:-0.0569       
##  Median :-0.0949        Median :-0.0416        Median :-0.0555       
##  Mean   :-0.0942        Mean   :-0.0416        Mean   :-0.0557       
##  3rd Qu.:-0.0884        3rd Qu.:-0.0398        3rd Qu.:-0.0533       
##  Max.   :-0.0727        Max.   :-0.0384        Max.   :-0.0515       
##  tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z
##  Min.   :-0.979        Min.   :-0.992        Min.   :-0.983       
##  1st Qu.:-0.777        1st Qu.:-0.885        1st Qu.:-0.795       
##  Median :-0.748        Median :-0.789        Median :-0.730       
##  Mean   :-0.752        Mean   :-0.815        Mean   :-0.753       
##  3rd Qu.:-0.658        3rd Qu.:-0.733        3rd Qu.:-0.690       
##  Max.   :-0.623        Max.   :-0.644        Max.   :-0.537       
##  tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean()
##  Min.   :-0.964     Min.   :-0.964    Min.   :-0.964       
##  1st Qu.:-0.628     1st Qu.:-0.661    1st Qu.:-0.628       
##  Median :-0.554     Median :-0.606    Median :-0.554       
##  Mean   :-0.596     Mean   :-0.629    Mean   :-0.596       
##  3rd Qu.:-0.490     3rd Qu.:-0.527    3rd Qu.:-0.490       
##  Max.   :-0.385     Max.   :-0.444    Max.   :-0.385       
##  tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std()
##  Min.   :-0.964       Min.   :-0.984         Min.   :-0.984       
##  1st Qu.:-0.661       1st Qu.:-0.720         1st Qu.:-0.705       
##  Median :-0.606       Median :-0.644         Median :-0.618       
##  Mean   :-0.629       Mean   :-0.676         Mean   :-0.646       
##  3rd Qu.:-0.527       3rd Qu.:-0.570         3rd Qu.:-0.543       
##  Max.   :-0.444       Max.   :-0.475         Max.   :-0.416       
##  tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroJerkMag-mean()
##  Min.   :-0.952      Min.   :-0.948     Min.   :-0.987         
##  1st Qu.:-0.691      1st Qu.:-0.748     1st Qu.:-0.838         
##  Median :-0.600      Median :-0.672     Median :-0.767         
##  Mean   :-0.642      Mean   :-0.701     Mean   :-0.787         
##  3rd Qu.:-0.576      3rd Qu.:-0.637     3rd Qu.:-0.732         
##  Max.   :-0.412      Max.   :-0.521     Max.   :-0.625         
##  tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y
##  Min.   :-0.986         Min.   :-0.990    Min.   :-0.950   
##  1st Qu.:-0.857         1st Qu.:-0.697    1st Qu.:-0.616   
##  Median :-0.788         Median :-0.638    Median :-0.558   
##  Mean   :-0.799         Mean   :-0.653    Mean   :-0.564   
##  3rd Qu.:-0.721         3rd Qu.:-0.571    3rd Qu.:-0.403   
##  Max.   :-0.653         Max.   :-0.419    Max.   :-0.325   
##  fBodyAcc-mean()-Z fBodyAcc-std()-X fBodyAcc-std()-Y fBodyAcc-std()-Z
##  Min.   :-0.976    Min.   :-0.993   Min.   :-0.937   Min.   :-0.972  
##  1st Qu.:-0.753    1st Qu.:-0.663   1st Qu.:-0.606   1st Qu.:-0.721  
##  Median :-0.689    Median :-0.630   Median :-0.526   Median :-0.657  
##  Mean   :-0.718    Mean   :-0.643   Mean   :-0.561   Mean   :-0.686  
##  3rd Qu.:-0.636    3rd Qu.:-0.541   3rd Qu.:-0.449   3rd Qu.:-0.612  
##  Max.   :-0.573    Max.   :-0.429   Max.   :-0.274   Max.   :-0.501  
##  fBodyAcc-meanFreq()-X fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z
##  Min.   :-0.29135      Min.   :-0.0957       Min.   :-0.10992     
##  1st Qu.:-0.22887      1st Qu.:-0.0305       1st Qu.:-0.00727     
##  Median :-0.19534      Median : 0.0322       Median : 0.05827     
##  Mean   :-0.18270      Mean   : 0.0273       Mean   : 0.05132     
##  3rd Qu.:-0.16189      3rd Qu.: 0.0990       3rd Qu.: 0.08572     
##  Max.   : 0.00799      Max.   : 0.1364       Max.   : 0.24324     
##  fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
##  Min.   :-0.990        Min.   :-0.969        Min.   :-0.987       
##  1st Qu.:-0.726        1st Qu.:-0.703        1st Qu.:-0.814       
##  Median :-0.660        Median :-0.653        Median :-0.746       
##  Mean   :-0.676        Mean   :-0.644        Mean   :-0.782       
##  3rd Qu.:-0.577        3rd Qu.:-0.481        3rd Qu.:-0.717       
##  Max.   :-0.437        Max.   :-0.450        Max.   :-0.655       
##  fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z
##  Min.   :-0.991       Min.   :-0.971       Min.   :-0.990      
##  1st Qu.:-0.718       1st Qu.:-0.686       1st Qu.:-0.847      
##  Median :-0.661       Median :-0.642       Median :-0.784      
##  Mean   :-0.671       Mean   :-0.631       Mean   :-0.815      
##  3rd Qu.:-0.576       3rd Qu.:-0.472       3rd Qu.:-0.747      
##  Max.   :-0.444       Max.   :-0.420       Max.   :-0.726      
##  fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y
##  Min.   :-0.2192           Min.   :-0.3161          
##  1st Qu.:-0.0878           1st Qu.:-0.2368          
##  Median :-0.0576           Median :-0.2042          
##  Mean   :-0.0280           Mean   :-0.2062          
##  3rd Qu.: 0.0281           3rd Qu.:-0.1820          
##  Max.   : 0.1805           Max.   :-0.0237          
##  fBodyAccJerk-meanFreq()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y
##  Min.   :-0.2903           Min.   :-0.966     Min.   :-0.983    
##  1st Qu.:-0.1582           1st Qu.:-0.721     1st Qu.:-0.801    
##  Median :-0.1110           Median :-0.661     Median :-0.738    
##  Mean   :-0.1049           Mean   :-0.691     Mean   :-0.745    
##  3rd Qu.:-0.0809           3rd Qu.:-0.599     3rd Qu.:-0.656    
##  Max.   : 0.1362           Max.   :-0.532     Max.   :-0.526    
##  fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z
##  Min.   :-0.967     Min.   :-0.972    Min.   :-0.977    Min.   :-0.964   
##  1st Qu.:-0.720     1st Qu.:-0.791    1st Qu.:-0.778    1st Qu.:-0.749   
##  Median :-0.640     Median :-0.735    Median :-0.727    Median :-0.711   
##  Mean   :-0.669     Mean   :-0.758    Mean   :-0.720    Mean   :-0.718   
##  3rd Qu.:-0.604     3rd Qu.:-0.695    3rd Qu.:-0.655    3rd Qu.:-0.634   
##  Max.   :-0.431     Max.   :-0.621    Max.   :-0.461    Max.   :-0.522   
##  fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z
##  Min.   :-0.3070        Min.   :-0.4033        Min.   :-0.22984      
##  1st Qu.:-0.1415        1st Qu.:-0.2391        1st Qu.:-0.09609      
##  Median :-0.1029        Median :-0.1452        Median :-0.05039      
##  Mean   :-0.1081        Mean   :-0.1798        Mean   :-0.06024      
##  3rd Qu.:-0.0566        3rd Qu.:-0.1000        3rd Qu.:-0.00689      
##  Max.   : 0.0389        Max.   : 0.0734        Max.   : 0.09955      
##  fBodyAccMag-mean() fBodyAccMag-std() fBodyAccMag-meanFreq()
##  Min.   :-0.971     Min.   :-0.965    Min.   :-0.0422       
##  1st Qu.:-0.664     1st Qu.:-0.711    1st Qu.: 0.0447       
##  Median :-0.597     Median :-0.674    Median : 0.0794       
##  Mean   :-0.620     Mean   :-0.694    Mean   : 0.0902       
##  3rd Qu.:-0.508     3rd Qu.:-0.610    3rd Qu.: 0.1347       
##  Max.   :-0.408     Max.   :-0.553    Max.   : 0.2578       
##  fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std()
##  Min.   :-0.983             Min.   :-0.984           
##  1st Qu.:-0.701             1st Qu.:-0.713           
##  Median :-0.615             Median :-0.626           
##  Mean   :-0.642             Mean   :-0.654           
##  3rd Qu.:-0.531             3rd Qu.:-0.556           
##  Max.   :-0.398             Max.   :-0.446           
##  fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean()
##  Min.   :0.064                  Min.   :-0.965         
##  1st Qu.:0.119                  1st Qu.:-0.777         
##  Median :0.159                  Median :-0.700         
##  Mean   :0.173                  Mean   :-0.729         
##  3rd Qu.:0.197                  3rd Qu.:-0.658         
##  Max.   :0.364                  Max.   :-0.547         
##  fBodyBodyGyroMag-std() fBodyBodyGyroMag-meanFreq()
##  Min.   :-0.948         Min.   :-0.3146            
##  1st Qu.:-0.774         1st Qu.:-0.1027            
##  Median :-0.712         Median :-0.0185            
##  Mean   :-0.736         Mean   :-0.0518            
##  3rd Qu.:-0.678         3rd Qu.: 0.0158            
##  Max.   :-0.588         Max.   : 0.0626            
##  fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
##  Min.   :-0.987              Min.   :-0.986            
##  1st Qu.:-0.856              1st Qu.:-0.871            
##  Median :-0.790              Median :-0.799            
##  Mean   :-0.801              Mean   :-0.811            
##  3rd Qu.:-0.727              3rd Qu.:-0.740            
##  Max.   :-0.659              Max.   :-0.670            
##  fBodyBodyGyroJerkMag-meanFreq()
##  Min.   :-0.00802               
##  1st Qu.: 0.09328               
##  Median : 0.13020               
##  Mean   : 0.11864               
##  3rd Qu.: 0.16066               
##  Max.   : 0.22300
```


