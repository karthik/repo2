# get_stage("after_success") %>%
#   add_step(step_install_ssh_keys()) %>%
#   add_step(step_test_ssh()) %>%
#   add_step(step_build_pkgdown()) %>%
#   add_step(step_push_deploy(path = "docs", branch = "gh-pages"))


get_stage("deploy") %>%
  add_step(step_install_ssh_keys()) %>%
  add_step(step_test_ssh()) %>%
  add_step(step_build_pkgdown()) %>%
  add_step(step_push_deploy(path = "docs", branch = "gh-pages"))



# if  (ci()$get_branch()==  "production"  &&  Sys.getenv("BUILD_PKGDOWN")!=  "") {
#   get_stage("deploy") %>%
#     add_step(step_build_pkgdown()) %>%
#     add_step(step_push_deploy(path  =  "docs",branch  =  "gh-pages"))
# }
