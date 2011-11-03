set :rails_env, "staging"
set :num_instances, "1"
set :thin_port, "3500"
role :web, "zenpunch.com"
role :app, "zenpunch.com"
role :db,  "zenpunch.com", :primary => true

set :deploy_to, "~/#{application}/staging"