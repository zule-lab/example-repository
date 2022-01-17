# Example Repository

This is an example of how our lab currently formats our repositories when starting a new project. If you have suggestions, feel free to open an issue on this repository or bring it up to your labmates. When starting a new project, this repository can act as a reference for how you can set up your files/folders for transparency and reproducibility. [Here](https://docs.google.com/presentation/d/1qNSQs6oabN3tkMpMR_FVOtVCCRRO2qs-87AV3IgE2-o/edit#slide=id.p) is a link to one of our lab meeting presentations about the importance and justification for organizing our data and code in this way.

## Folders:  
`script`
This folder contains all the R scripts (or other languages) necessary to reproduce our analyses. Optionally, you can add a separate folder for local functions if it helps you keep things organized.

`graphics` 
This folder contains all the graphics and figures produced during the analysis.  

`input`
This folder and all folders within contain the _raw_ data used in analysis. The data in this folder should not be altered in any way. It should be read into R, manipulated, and saved in the `large/` or `output/` folders.

`large` 
This is a folder that is not tracked by GitHub (and therefore won't show up here) but contains folders too large to push to GitHub, or contains intermediate files that do not need to be pushed to the final repository.  

`output`
This folder contains all the output and final, cleaned datasets from our analysis.

## Ongoing Projects 
Check out the other repositories for ongoing or completed projects by past/current ZULE members
