#install.packages("devtools") 
require(devtools) 
install_github("neotoma", "ropensci") 
require(neotoma) 

get.glimmer <- get_site(sitename='Glimm%')
glimmer.dataset <- get_dataset(siteid = get.glimmer$siteid, datasettype='pollen')

glimmerglass <- get_download(glimmer.dataset)

