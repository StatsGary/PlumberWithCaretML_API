# Deploying a CARET Machine Learning model as an API with Plumber
![image](https://user-images.githubusercontent.com/44023992/114896544-58b33a80-9e08-11eb-878e-bfade62a02c5.png)
I have deployed a number of machine learning models, mostly on client sites, in the cloud or in SQL server. However, I thought it would be fun to create this in an API. The supporting YouTube tutorial is available here:.

## Training a supervised machine learning model
In this section I will use a number of packages to train a R model. The packages include:
- [Caret](https://hutsons-hacks.info/advanced-modelling-in-r-with-caret-a-focus-on-supervised-machine-learning) to train a bagged tree - ensemble model
- NHSRDatasets - this is a package created by the NHS-R community. We will be using the stranded patient data example for this package
- ConfusionTableR - this is a package to flatten outputs of the Caret's confusion matrix to be used to output to spreadsheets, or store in databases
- A number of other R normal files

## Creating the Plumber files
This has two main functions - a GET request which shows if the website is running and a POST request which is used to pass JSON data from the API, to the model and then the predictions are returned to the API.

## Hosting options
To deploy your API you could use a number of different methods:
- Creation of a Dockerfile
- Upload to R Studio Connect
- Upload to Digital Ocean
- Deploy in your web servers


