# ANN-based Direct Fatality-Based Seismic Design of SMRFs

This repository provides the trained artificial neural network (ANN) models
developed in the paper:

**A Neural Network-Based Framework for Direct Fatality-Based Seismic Design of Steel Moment-Resisting Frames**

The ANN models are intended for direct use as surrogate models 
to estimate the design inter-story drift ratio required to achieve a prescribed target fatality rate
to estimate the fatality rate based on the design inter-story drift ratio.






---
The primary ANN model to estimate the design inter-story drift ratio required to achieve a prescribed target fatality rate

## Input Parameters of the ANN model 

The ANN requires the following input parameters:
- **H**        : Building height (m)
- **SD1**      : One-second design spectral acceleration (g)  
- **SDS**      : Short-period design spectral acceleration (g)   
- **Fr**       : Target fatality rate expressed in terms of the number of earthquake-induced fatalities 
                 per unit floor area with a probability of exceedance of 16% under the seismic hazard 
                 corresponding to a 2% probability of exceedance in 50 years (deaths/m2)

## Output
- **theta_c** : Design inter-story drift ratio  


## MATLAB Usage Example
```matlab
theta_c = drift(32.6, 0.3, 0.48, 0.01);








---
The auxiliary ANN model to estimate the fatality rate based on the design inter-story drift ratio.

## Input Parameters of the ANN model 

The ANN requires the following input parameters:
- **H**        : Building height (m)
- **SD1**      : One-second design spectral acceleration (g)  
- **SDS**      : Short-period design spectral acceleration (g)   
- **theta_c**  : inter-story drift ratio

## Output
- **Fr**       : Fatality rate expressed in terms of the number of earthquake-induced fatalities 
                 per unit floor area with a probability of exceedance of 16% under the seismic hazard 
                 corresponding to a 2% probability of exceedance in 50 years (deaths/m2)


## MATLAB Usage Example
```matlab
Fr = drift(32.6, 0.3, 0.48, 0.025);






