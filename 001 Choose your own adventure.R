# Packages ----------------------------------------------------------------

library(tidymodels)

tidymodels_prefer(quiet = F)


# Choose your own adventure -----------------------------------------------

# https://www.tidyverse.org/blog/2021/05/choose-tidymodels-adventure/

# In tidymodels you can train: (1) a single model, (2) a workflow or (3) a set of workflows. Each of these choicesis best in different circumstances.


# A single parsnip model --------------------------------------------------

# Fitting a straightforward model: If the data is small and there is not much pre-processing to do then using only the parnsip package in the tidymodels ecosystem can be done. 

# Even though most of the people interested in tidymodels use this straighforward approach the tools implemented for using only this package are well-designed and sets everyone up for statistical and practical success in the short and long term.

linear_reg() %>% set_engine("lm")


# Holistic model workflow -------------------------------------------------

# In the tidymodels ecosystem, a modeling workflow incorporates both the feature engineering (data preprocessing) that must be learned from the training data and a model fit.

# The workflows are used to bundle together model componentes and promote a more fluent process being able to fit, tune, and resample workflows.

# Choose a workflow if you wamt to try several options in feature engineering or model.


# Screening many models: workflowsets -------------------------------------

# The workflowsets package supports the creation, fitting and comparison of sets of multiple workflows where different combinations of preprocessors and models can be created. The resulting workflow set can be tuned, resmampled ane evaluated.
