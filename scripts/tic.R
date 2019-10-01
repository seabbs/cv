## Run tic::use_tic
get_stage("before_install") %>%
  add_code_step(update.packages(ask = FALSE))

get_stage("install") %>%
  add_code_step(install.packages("here")) %>% 
  add_code_step(source(here::here("scripts", "install.R")))

if (ci_on_travis()) {
  get_stage("deploy") %>%
    add_code_step(rmarkdown::render(here::here("cv", "cv.Rmd")))
  
  if (ci_has_env("id_rsa")) {
    get_stage("before_deploy") %>%
      add_step(step_setup_ssh())
    
    get_stage("deploy") %>%
      add_step(step_push_deploy(path = "cv", branch = "gh-pages"))
  }
}