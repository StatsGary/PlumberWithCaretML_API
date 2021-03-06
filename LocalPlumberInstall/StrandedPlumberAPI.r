library(plumber)
library(caret)
library(jsonlite)
library(ipred)
library(e1071)
library(yaml)

# Utilise post method to send JSON unseen data, in the same 
# format as our dataset

#--------------------------------------------------
# Read in model 
#--------------------------------------------------
model <- readr::read_rds("tb_model.rds")
model$modelInfo

#* Test connection
#* @get /connection-status

function(){
  list(status = "Connection to Stranded Patient API successful", 
       time = Sys.time(),
       username = Sys.getenv("USERNAME"))
}

#* Predict whether a patient is a stranded patient
#* @post /predict

function(req, res){
  data.frame(predict(model, newdata = as.data.frame(req$body), type="prob"))
}

#* @plumber
function(pr){
  pr %>% 
    pr_set_api_spec(yaml::read_yaml("openapi.yaml"))
}
