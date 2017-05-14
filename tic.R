
#before_script
before_script:
  - R -q -e 'devtools::install_github("ropenscilabs/tic"); tic::prepare_all_stages()'

#after_success
after_success:
  - R -q -e 'tic::after_success()'

#deploy
deploy:
  provider: script
script: R -q -e 'tic::deploy()'
on:
  all_branches: true