#this is a test script
datavar <- read.csv("AGD_CP_trimmedbutnoexclusions.csv")
attach(datavar)
model<-lm(tdds_pathogen~sex+age+button_disease+button_architecture+button_guns+
            (sex*button_disease)+(sex*button_architecture)+(sex*button_guns), datavar)
summary(model)