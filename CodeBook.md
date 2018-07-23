# Code Book for Getting and Cleaning Data Project
The data set that this code book pertains to is located in the tidyMean_dataset.txt file of this repository.
See the README.md file of this repository for background information on this data set.
The structure of the data set is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data are presented in the Transformationssection.
## Data
The tidyMean_dataset.txt data file is a text file, containing space-separated values.
The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.
## Variable
Each row contains, for a given subject and activity, 67 averaged signal measurements.
### Identifiers
* activity -  
Activity identifier, string with 6 possible values:- 
WALKING: subject was walking,
WALKING_UPSTAIRS: subject was walking upstairs,
WALKING_DOWNSTAIRS: subject was walking downstairs,
SITTING: subject was sitting,
STANDING: subject was standing,
LAYING: subject was laying.
## Average of measurements
All measurements are floating-point values, normalised and bounded within [-1,1].
Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).
Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.
The measurements are classified in two domains:
* Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals.
* Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.
### Time-domain signals
* timeDomainBodyAccelerometerMeanX
* timeDomainBodyAccelerometerMeanY
* timeDomainBodyAccelerometerMeanZ
* timeDomainBodyAccelerometerStandardDeviationX
* timeDomainBodyAccelerometerStandardDeviationY
* timeDomainBodyAccelerometerStandardDeviationZ
* timeDomainGravityAccelerometerMeanX
* timeDomainGravityAccelerometerMeanY 
* timeDomainGravityAccelerometerMeanZ 
* timeDomainGravityAccelerometerStandardDeviationX
* timeDomainGravityAccelerometerStandardDeviationY
* timeDomainGravityAccelerometerStandardDeviationZ
* timeDomainBodyAccelerometerJerkMeanX
* timeDomainBodyAccelerometerJerkMeanY
* timeDomainBodyAccelerometerJerkMeanZ
* timeDomainBodyAccelerometerJerkStandardDeviationX
* timeDomainBodyAccelerometerJerkStandardDeviationY
* timeDomainBodyAccelerometerJerkStandardDeviationZ
* timeDomainBodyGyroscopeMeanX
* timeDomainBodyGyroscopeMeanY
* timeDomainBodyGyroscopeMeanZ
* timeDomainBodyGyroscopeStandardDeviationX
* timeDomainBodyGyroscopeStandardDeviationY
* timeDomainBodyGyroscopeStandardDeviationZ
* timeDomainBodyGyroscopeJerkMeanX
* timeDomainBodyGyroscopeJerkMeanY
* timeDomainBodyGyroscopeJerkMeanZ
* timeDomainBodyGyroscopeJerkStandardDeviationX
* timeDomainBodyGyroscopeJerkStandardDeviationY
* timeDomainBodyGyroscopeJerkStandardDeviationZ
* timeDomainBodyAccelerometerMagnitudeMean
* timeDomainBodyAccelerometerMagnitudeStandardDeviation
* timeDomainGravityAccelerometerMagnitudeMean
* timeDomainGravityAccelerometerMagnitudeStandardDeviation
* timeDomainBodyAccelerometerJerkMagnitudeMean
* timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
* timeDomainBodyGyroscopeMagnitudeMean
* timeDomainBodyGyroscopeMagnitudeStandardDeviation
* timeDomainBodyGyroscopeJerkMagnitudeMean
* timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
### Frequency-domain signals
* frequencyDomainBodyAccelerometerMeanX
* frequencyDomainBodyAccelerometerMeanY
* frequencyDomainBodyAccelerometerMeanZ
* frequencyDomainBodyAccelerometerStandardDeviationX
* frequencyDomainBodyAccelerometerStandardDeviationY
* frequencyDomainBodyAccelerometerStandardDeviationZ
* frequencyDomainBodyAccelerometerJerkMeanX
* frequencyDomainBodyAccelerometerJerkMeanY
* frequencyDomainBodyAccelerometerJerkMeanZ
* frequencyDomainBodyAccelerometerJerkStandardDeviationX
* frequencyDomainBodyAccelerometerJerkStandardDeviationY
* frequencyDomainBodyAccelerometerJerkStandardDeviationZ
* frequencyDomainBodyGyroscopeMeanX
* frequencyDomainBodyGyroscopeMeanY
* frequencyDomainBodyGyroscopeMeanZ 
* frequencyDomainBodyGyroscopeStandardDeviationX
* frequencyDomainBodyGyroscopeStandardDeviationY
* frequencyDomainBodyGyroscopeStandardDeviationZ
* frequencyDomainBodyAccelerometerMagnitudeMean
* frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
* frequencyDomainBodyAccelerometerJerkMagnitudeMean 
* frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
* frequencyDomainBodyGyroscopeMagnitudeMean
* frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
* frequencyDomainBodyGyroscopeJerkMagnitudeMean 
* frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
