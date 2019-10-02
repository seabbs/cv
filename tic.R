## Run tic::use_tic() to link GitHub and Travis (keeping this tic.R as is)
get_stage("before_install") %>%
  add_code_step(update.packages(ask = FALSE))

get_stage("install") %>%
  add_code_step(install.packages("here")) %>% 
  add_code_step(source(here::here("scripts", "install.R"))) %>% 
  add_code_step(tinytex::install_tinytex())

if (ci_on_travis()) {
  get_stage("deploy") %>%
    add_step(step_setup_push_deploy(path = "cv", branch = "gh-pages")) %>%
    add_code_step(rmarkdown::render(here::here("cv", "cv.Rmd"), output_dir = "."))
  
  if (ci_has_env("id_rsa")) {
    get_stage("before_deploy") %>%
      add_step(step_setup_ssh())
    
    get_stage("deploy") %>%
          add_step(step_do_push_deploy(path = "cv"))
  }
}
