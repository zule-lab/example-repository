# Numbering scripts allows for easy understanding of workflow and analysis
# let's clean our raw data and save it 

#### PACKAGES ##### 
# load packages required
p <- c("data.table", "sp", "sf", "ggplot2")
lapply(p, library, character.only=T)

#### DATA ####
# load data with data.tale
studyponds <- fread("input/ExampleRawData.csv", quote="")
# pond coordinates were obtained from the City of Ottawa and have 
# a Transverse Mercator projection in meters and a GCS of 
# GCS North American 1983 (EPSG 4269)
# assign coordinate values
coordinates(studyponds) <- c("X_Meters", "Y_Meters")
# project dataset spatially
proj4string(studyponds) <- CRS("+proj=tmerc +lat_0=0 +lon_0=-76.5 +k=0.9999 +x_0=304800 +y_0=0 +datum=NAD83 +units=m")
# convert to a sf object
studyponds <- st_as_sf(studyponds)


#### PLOT ####
# ggplot can be used to plot sf objects
ggplot(studyponds) + 
  geom_sf() 
# save figure
ggsave("graphics/studyponds.jpg", width = 10, height = 10)

#### SAVE #### 
# save formatted dataset as a .rds object in the large folder for future use 
# save formatted dataset as a .csv object in output folder as finished dataset
saveRDS(studyponds, "large/StudyPondsSpatial.rds") # will not be tracked by Git because large folder is in .gitignore
fwrite(studyponds, "output/StudyPondsFormatted.csv")