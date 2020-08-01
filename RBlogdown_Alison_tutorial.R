# Alison Hill 2017 

#https://alison.rbind.io/post/2017-06-12-up-and-running-with-blogdown/

# también algunos códigos de Taller de Blogdown 2018 de Paola Corrales y Elio Campitelli
#https://www.youtube.com/watch?v=KLUkxJCz1ew&feature=youtu.be

install.packages("devtools")
install.packages("blogdown")

library(blogdown)

blogdown::new_site() 
install_theme("gcushen/hugo-academic", theme_example = TRUE, update_config = TRUE)

# update project options
# https://bookdown.org/yihui/blogdown/rstudio-ide.html#fig:project-options

# edit the configuration
#config.toml es el archivo de configuración del sitio
# see this chapter https://bookdown.org/yihui/blogdown/configuration.html
# or emulate the toml file of other user 

#para ver y dejar de ver la web
blogdown::serve_site()
blogdown::stop_server()

#para generar un nuevo post (primero parar el sitio)
blogdown:::new_post_addin()

#Al estar como multi-lenguaje, se cargan dos carpetas en content
#algunos archivos relevantes
#_index.md dentro de authors es todo lo de la bio

#config.toml
#config/default/param.toml es muy importante
#content / en / home. tiene adentro todo lo relevante

