# Deploying a CARET Machine Learning model as an API with Plumber
<img src="Images/Plumber.png" align="right">
I have deployed a number of machine learning models, mostly on client sites, in the cloud or in SQL server. However, I thought it would be fun to create this in an API. The supporting [YouTube tutorial](https://www.youtube.com/watch?v=WMCkV_J5a0s) is available here:.

## Training a supervised machine learning model
In this section I will use a number of packages to train a R model. The packages include:
- [Caret](https://hutsons-hacks.info/advanced-modelling-in-r-with-caret-a-focus-on-supervised-machine-learning) to train a bagged tree - ensemble model
- [NHSRDatasets](https://cran.r-project.org/web/packages/NHSRdatasets/vignettes/stranded_model.html) - this is a package created by the NHS-R community. We will be using the stranded patient data example for this package
- [ConfusionTableR](https://github.com/StatsGary/ConfusionTableR) - this is a package to flatten outputs of the Caret's confusion matrix to be used to output to spreadsheets, or store in databases
- A number of other R normal files
https://github.com/StatsGary/ConfusionTableR
## Creating the Plumber files
This has two main functions - a GET request which shows if the website is running and a POST request which is used to pass JSON data from the API, to the model and then the predictions are returned to the API.

## Contained in this repository:

- [ML Model Training app](https://github.com/StatsGary/PlumberWithCaretML_API/blob/main/MLModelTrainingScript.R)
- [Plumber App](https://github.com/StatsGary/PlumberWithCaretML_API/blob/main/StrandedPlumberAPI.r)
- [YAML file for Swagger](https://github.com/StatsGary/PlumberWithCaretML_API/blob/main/openapi.yaml)

## Hosting options
To deploy your API you could use a number of different methods:
- Creation of a Dockerfile
- Upload to R Studio Connect
- Upload to Digital Ocean
- Deploy in your web servers

The full list is in the [Plumber](https://www.rplumber.io/articles/hosting.html) official hosting guide.

#Credits
If this is utilised in any of your apps, please make sure I get some credit. 

Follow me on Twitter [@StatsGary](https://twitter.com/StatsGary) or have a look on [my web/blog site](https://hutsons-hacks.info/). 


