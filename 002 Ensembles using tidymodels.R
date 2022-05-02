
# Notes -------------------------------------------------------------------

# https://www.youtube.com/watch?v=IwnhUyS0n_g&ab_channel=RinPharma

# https://www.youtube.com/watch?v=HZXZxvdpDOg&ab_channel=SaltLakeCityRUsersGroup

# When we are mentioned ensembles models we tend to only think about Random Forest or boosting models which are the result of the combination of the same type (decision tree) of model.

# But, there is a more general type of ensemble that is able to blend different types of models (neural network, linear regression, decision trees) called model stacking (Breiman)

# Stack ensembling modeling is a statistical modeling technique that involves training a model to combine the outputs of many constituent models. The ensembles generate predictions that are informed based on the predictions of the constituent models. The technique has been shown to increase predictive performance in a variety of settings.

# A common ensemble strategy is the penalized regression model were each one of the models are "penalized" (weighted) to determine what the ensemble predictions will be.

# Steps to create an ensemble stack ---------------------------------------

# (1) Define the model that you would like to include (knn, linear regression and a neural network models for example). "Define multiple models of interest".

# (2) Resample or tune the models. Each model definition will consist in various submodels (candidate for ensemble) depending on the number of tuning hyper parameters that are being tuned. The resample object is used in the tuning and the tuned object that is obtained contains all the information about performance and out of sample (testing) predictions for all the sub-models (select_best = F) or the mode ls (select_best = T). 

# For the stack ensemble we will need all the hold-out (testing) predictions of all the submodels. We need the data points that were predicted when they were not part of the modeling (training) process. For this we will use the function collect_predictions().

# (3) Collect the Out-of-Sample (testing) predictions. "Collect the assessment set predictions for each candidate). For this the different tuned objects for each model definition are stacked with the stack() function. The data stack puts the observed outcome and the different candidate models as columns where each row represents the observed outcome value with the correspondent predicted value of each of the submodels.

# (4) Fit the ensemble model. There is an estimation of stacking coefficients for each candidate (it can be 0). Basically, it's the creation of a secondary model that tries to predict the real outcome based on the predictions of the candidates. This is done by non-negative least square error so that we will not obtain any stacking coefficients that are negative. Use the blend_predictions() function.

# (5) Fit the constituent models. Train each candidate with non-zero stacking coefficients (fit_members()).


# After the ensemble stack is fitted one could ask the question how do the candidates interact with each other in the stacking process. Some ways to inspect this ensemble are: autoplot(type = "weights")