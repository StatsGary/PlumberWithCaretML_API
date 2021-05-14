library(plumber)
options(warn=-1)


r <- plumber::plumb("StrandedPlumberAPI.R")
r$setDocs(docs = getOption("openapi.yaml", TRUE))
r$run(port=80, host="0.0.0.0")
      # swagger = function(pr, spec, ...){
      #     spec <- yaml::read_yaml('openapi.yaml')
      #     spec
      #   })
#swagger = TRUE)

