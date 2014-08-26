#install.packages("devtools") 
require(devtools) 
install_github("neotoma", "SimonGoring") 
require(neotoma) 

get.glimmer <- get_site(sitename='Glimm%')
glimmer.dataset <- get_dataset(siteid = get.glimmer$siteid, datasettype='pollen')

glimmerglass <- get_download(glimmer.dataset)

dir.create('./Cores')
write_agefile(glimmerglass, chronology=1, path='.', corename='GLIMMER', cal.prog='Bacon')
