#
# Cookbook Name:: NodeJs
# Recipe:: nodejs
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* DEPLOYING NODEJS APP *******")

bash "git clone git@bitbucket.org:5andhalf/barbooks-nodejs.git" do
    cwd '/home/ubuntu'
    user 'ubuntu'
    group 'ubuntu'
    environment ({'HOME' => '/home/ubuntu', 'USER' => 'ubuntu'})
    code <<-EOH
        git clone git@bitbucket.org:5andhalf/barbooks-nodejs.git
        cd barbooks-nodejs
        git checkout development
        npm install
        EOH
end
