# Instalar e carregar pacotes para criação do blog

install.packages(c("usethis", "distill"))
library(usethis)
library(distill)

# Criando diretório para o blog

usethis::create_package("pelodegato")

# criar conexão com o github

usethis::use_git_config(
  user.name = "guivicente967",
  user.email = "guivicente967@gmail.com")

# github token

usethis::create_github_token()

gitcreds::gitcreds_set()

# linkar o git com o github

usethis::use_git()

#

usethis::use_github()

#

usethis::use_github_pages("master", "/docs")

#

file.create(".nojekyll")

# criando a pagina do blog

distill::create_blog(".", "Pelo de Gato", gh_pages = TRUE)

# criando post

distill::create_post("Análise da base RAIS")
