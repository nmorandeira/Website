#Some tutorials / Algunas fuentes utilizadas:

# Alison Hill 2017 
#https://alison.rbind.io/post/2017-06-12-up-and-running-with-blogdown/

# Taller de Blogdown 2018 de Paola Corrales y Elio Campitelli
#https://www.youtube.com/watch?v=KLUkxJCz1ew&feature=youtu.be

# Danielle Navarro 2018
# https://djnavarro.net/post/starting-blogdown/

# Using Leaflet Maps in Hugo themes
# https://waterdata.usgs.gov/blog/leaflet/

#para exportar Leafletwidget a html
library(htmlwidgets)
library(htmltools)

mapa_guardar <- mapa
saveWidget(mapa_guardar, "public/es/leaflet_Malvinas/mapa_tmap.html")

#para tmap
tmap_save(mapa_guardar, "public/es/leaflet_Malvinas/mapa_tmap.html")


########
#Para crear un sitio
install.packages("devtools")
install.packages("blogdown")

library(blogdown)

blogdown::new_site() 
install_theme("gcushen/hugo-academic", theme_example = TRUE, update_config = TRUE)
blogdown::install_hugo(version = "v0.74.3", force = TRUE, extended = TRUE)

# update project options
# https://bookdown.org/yihui/blogdown/rstudio-ide.html#fig:project-options

# edit the configuration
#config.toml es el archivo de configuración del sitio
# see this chapter https://bookdown.org/yihui/blogdown/configuration.html
# or emulate the toml file of other user 


# Build local
blogdown::serve_site()
blogdown::stop_server()

#############
# Build site
blogdown::build_site()
blogdown::build_site(build_rmd = 'md5sum')

blogdown::hugo_build() #if Rmd files do not need to be recompiled.

# Para generar un nuevo post (primero parar el sitio)
blogdown:::new_post_addin() #ojo, siempre crea un md

### Biblio ###########
#https://wowchemy.com/docs/content/publications/

#para importar biblio desde un .bib
#Instalar por consola:
pip3 install -U academic

#da error, pero hay que correrlo en dos carpetas
#Navegar a la carpeta del repo: /mnt/Data/RProjects/Website  y luego también en /mnt/Data/RProjects/Website/content/es
academic import --bibtex /home/nmorandeira/Downloads/inventario.bib 

# Copiar estos archivos a las carpetas correspondientes de en/ y es/
# /home/nmorandeira/Documents/RProjects/Website/content/es/publication 
# /home/nmorandeira/Documents/RProjects/Website/content/en/publication 

#Deploy on Netlify
#https://alison.rbind.io/post/2019-02-19-hugo-netlify-toml/


#Al estar como multi-lenguaje, se cargan dos carpetas en content
#algunos archivos relevantes
#_index.md dentro de authors es todo lo de la bio

#config.toml
#config/default/param.toml es muy importante
#content / en / home. tiene adentro todo lo relevante

#Deploy
#buscar netlify.toml y chequear Hugo version. en mi caso es 0.74.3 
# en Netlify toma el archivo netlify.toml, en caso de no estar hay que configurar la HUGO_VERSION

#al hacer Deploy, me da un error de módulos. Probar instalar go
#https://golang.org/dl/