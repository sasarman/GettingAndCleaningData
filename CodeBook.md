---
title: "CodeBook"
author: "Chris Sasarman"
date: "Saturday, October 25, 2014"
output: html_document
---

### Source of Raw Data
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy.  
activityrecognition '@' smartlab.ws  
www.smartlab.ws  


### Raw Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.  

The raw data for this set came from the accelerometer and gyroscope 3-axial raw signals (-XYZ) over time (TimeAccelerator-XYZ and TimeGyroscope-XYZ). The acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ). Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMag, TimeGravityAccelerationMag, TimeBodyAccelerationJerkMag, TimeBodyGyroscopeMag, TimeBodyGyroscopeJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FFTBodyAcceleration-XYZ, FFTBodyAccelerationJerk-XYZ, FFTBodyGyroscope-XYZ, FFTBodyAccelerationJerkMag, FFTBodyGyroscopeMag, FFTBodyGyroscopeJerkMag.


### Transformations to Raw Data
The raw data set produced a set of 10299 observations for 561 variables. The raw variables were estimated from these signals using statistical functions: mean(), std(), mad(), max(), min(), sma(), energy(), iqr(), entropy(), arCoeff(), correlation(), maxInds(), meanFreq(), skewness(), kurtosis(), bandsEnergy(), angle() and additional vectors obtained by averaging the signals in a signal window sample.  

The first transformation of the raw data is to extract only the measurements on the mean (Mean) and standard deviation (Std) for each measurement. All other variables for statistical functions and average signals in signal window sample were left out of this study.

The second transformation of data creates another tidy data set with the average of each Mean and Std variable (Average-) for each activity and each subject.

The result was a tidy data set with 180 calculated averages for 66 variables from the raw data set.

### Variables 


**Activity**  
        The 6 activities carried out in the experiment  
         WALKING  
         WALKING_UPSTAIRS  
         WALKING_DOWNSTAIRS  
         SITTING  
         STANDING  
         LAYING  


**Subject**  
        The list of 30 volunteers who participated in the experiment  


**Average-TimeBodyAccelerationMean-X**  
        Average of Time Body Acceleration mean over X axis  
        

**Average-TimeBodyAccelerationMean-Y**  
        Average of Time Body Acceleration mean over Y axis

**Average-TimeBodyAccelerationMean-Z**  
        Average of Time Body Acceleration mean over Z axis  
        
**Average-TimeBodyAccelerationStd-X**  
        Average of Time Body Acceleration standard deviation over X axis  
        
**Average-TimeBodyAccelerationStd-Y**  
        Average of Time Body Acceleration standard deviation over Y axis          
        
**Average-TimeBodyAccelerationStd-Z**  
        Average of Time Body Acceleration standard deviation over Z axis  
        
**Average-TimeGravityAccelerationMean-X**  
        Average of Time Gravity Acceleration mean over X axis  
        
**Average-TimeGravityAccelerationMean-Y**  
        Average of Time Gravity Acceleration mean over Y axis  
        
**Average-TimeGravityAccelerationMean-Z**  
        Average of Time Gravity Acceleration mean over Z axis  
        
**Average-TimeGravityAccelerationStd-X**  
        Average of Time Gravity Acceleration standard deviation over X axis         
        
**Average-TimeGravityAccelerationStd-Y**  
        Average of Time Gravity Acceleration standard deviation over Y axis  
        
**Average-TimeGravityAccelerationStd-Z**  
        Average of Time Gravity Acceleration standard deviation over Z axis  
        
**Average-TimeBodyAccelerationJerkMean-X**  
        Average of Time Body Acceleration Jerk mean over X axis       
        
**Average-TimeBodyAccelerationJerkMean-Y**  
        Average of Time Body Acceleration Jerk mean over Y axis   

**Average-TimeBodyAccelerationJerkMean-Z**  
        Average of Time Body Acceleration Jerk mean over Z axis   
        
**Average-TimeBodyAccelerationJerkStd-X**  
        Average of Time Body Acceleration Jerk standard deviation over X axis   

**Average-TimeBodyAccelerationJerkStd-Y**  
        Average of Time BodyAcceleration Jerk standard deviation over Y axis   

**Average-TimeBodyAccelerationJerkStd-Z**  
        Average of Time Body Acceleration Jerk standard deviation over Z axis   

**Average-TimeBodyGyroscopeMean-X**  
        Average of Time Body Gyroscope mean over X axis   

**Average-TimeBodyGyroscopeMean-Y**  
        Average of Time Body Gyroscope mean over Y axis   

**Average-TimeBodyGyroscopeMean-Z**  
        Average of Time Body Gyroscope mean over Z axis   

**Average-TimeBodyGyroscopeStd-X**  
        Average of Time Body Gyroscope standard deviation over X axis  

**Average-TimeBodyGyroscopeStd-Y**  
        Average of Time Body Gyroscope standard deviation over Y axis  

**Average-TimeBodyGyroscopeStd-Z**  
        Average of Time Body Gyroscope standard deviation over Z axis  

**Average-TimeBodyGyroscopeJerkMean-X**  
        Average of Time Body Gyroscope Jerk mean over X axis   

**Average-TimeBodyGyroscopeJerkMean-Y**  
        Average of Time Body Gyroscope Jerk mean over Y axis  

**Average-TimeBodyGyroscopeJerkMean-Z**  
        Average of Time Body Gyroscope Jerk mean over Z axis          
        
**Average-TimeBodyGyroscopeJerkStd-X**  
        Average of Time Body Gyroscope Jerk standard deviation over X axis          

**Average-TimeBodyGyroscopeJerkStd-Y**  
        Average of Time Body Gyroscope Jerk standard deviation over Y axis    

**Average-TimeBodyGyroscopeJerkStd-Z**  
        Average of Time Body Gyroscope Jerk standard deviation over Z axis    

**Average-TimeBodyAccelerationMagMean**  
        Average of Time Body Acceleration Magnitude mean    

**Average-TimeBodyAccelerationMagStd**  
        Average of Time Body Acceleration Magnitude standard deviation    

**Average-TimeGravityAccelerationMagMean**  
        Average of Time Gravity Acceleration Magnitude mean   

**Average-TimeGravityAccelerationMagStd**  
        Average of Time Gravity Acceleration Magnitude standard deviation   

**Average-TimeBodyAccelerationJerkMagMean**  
        Average of Time Body Acceleration Magnitude mean   

**Average-TimeBodyAccelerationJerkMagStd**  
        Average of Time Body Acceleration Magnitude standard deviation  

**Average-TimeBodyGyroscopeMagMean**  
        Average of Time Body Gyroscope Magnitude mean   

**Average-TimeBodyGyroscopeMagStd**  
        Average of Time Body Gyroscope Magnitude standard deviation   

**Average-TimeBodyGyroscopeJerkMagMean**  
        Average of Time Body Gyroscope Jerk Magnitude mean   

**Average-TimeBodyGyroscopeJerkMagStd**  
        Average of Time Body Gyroscope Jerk Magnitude standard deviation   

**Average-FFTBodyAccelerationMean-X**  
        Average of Fast Fourier Transform of Body Gyroscope Jerk Magnitude mean over X axis   

**Average-FFTBodyAccelerationMean-Y**  
        Average of Fast Fourier Transform of Body Gyroscope Jerk Magnitude mean over Y axis   

**Average-FFTBodyAccelerationMean-Z**  
        Average of Fast Fourier Transform of Body Gyroscope Jerk Magnitude mean over Z axis   

**Average-FFTBodyAccelerationStd-X**  
        Average of Fast Fourier Transform of Body Acceleration standard deviation over X axis    

**Average-FFTBodyAccelerationStd-Y**  
        Average of Fast Fourier Transform of Body Acceleration standard deviation over Y axis   

**Average-FFTBodyAccelerationStd-Z**  
        Average of Fast Fourier Transform of Body Acceleration standard deviation over Z axis   

**Average-FFTBodyAccelerationJerkMean-X**  
        Average of Fast Fourier Transform of Body Acceleration Jerk mean over X axis   

**Average-FFTBodyAccelerationJerkMean-Y**  
        Average of Fast Fourier Transform of Body Acceleration Jerk mean over Y axis   

**Average-FFTBodyAccelerationJerkMean-Z**  
        Average of Fast Fourier Transform of Body Acceleration Jerk mean over Z axis   

**Average-FFTBodyAccelerationJerkStd-X**  
        Average of Fast Fourier Transform of Body Acceleration Jerk standard deviation over X axis   

**Average-FFTBodyAccelerationJerkStd-Y**  
        Average of Fast Fourier Transform of Body Acceleration Jerk standard deviation over Y axis  

**Average-FFTBodyAccelerationJerkStd-Z**  
        Average of Fast Fourier Transform of Body Acceleration Jerk standard deviation over Z axis  

**Average-FFTBodyGyroscopeMean-X**  
        Average of Fast Fourier Transform of Body Gyroscope mean over X axis  

**Average-FFTBodyGyroscopeMean-Y**  
        Average of Fast Fourier Transform of Body Gyroscope mean over Y axis  

**Average-FFTBodyGyroscopeMean-Z**  
        Average of Fast Fourier Transform of Body Gyroscope mean over Z axis  

**Average-FFTBodyGyroscopeStd-X**  
        Average of Fast Fourier Transform of Body Gyroscope standard deviation over X axis  

**Average-FFTBodyGyroscopeStd-Y**  
        Average of Fast Fourier Transform of Body Gyroscope standard deviation over Y axis  

**Average-FFTBodyGyroscopeStd-Z**  
        Average of Fast Fourier Transform of Body Gyroscope standard deviation over Z axis  
        
**Average-FFTBodyAccelerationMagMean**  
        Average of Fast Fourier Transform of Body Acceleration Magnitude mean         
        
 **Average-FFTBodyAccelerationMagStd**  
        Average of Fast Fourier Transform of Body Acceleration Magnitude standard deviation          

**Average-FFTBodyBodyAccelerationJerkMagMean**  
        Average of Fast Fourier Transform of Body Body Acceleration Jerk Magnitude mean   

**Average-FFTBodyBodyAccelerationJerkMagSt**  
        Average of Fast Fourier Transform of Body Body Acceleration Jerk Magnitude standard deviation   

**Average-FFTBodyBodyGyroscopeMagMean**  
        Average of Fast Fourier Transform of Body Body Gyroscop Magnitude mean  

**Average-FFTBodyBodyGyroscopeMagStd**  
        Average of Fast Fourier Transform of Body Body Gyroscop Magnitude standard deviation  

**Average-FFTBodyBodyGyroscopeJerkMagMean**  
        Average of Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude mean   

**Average-FFTBodyBodyGyroscopeJerkMagStd**  
        Average of Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude standard deviation          
    
