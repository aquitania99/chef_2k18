#
# Cookbook Name:: NodeJs
# Recipe:: nodejs
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* DEPLOYING NODEJS APP *******")

execute "git clone git@bitbucket.org:5andhalf/barbooks-nodejs.git" do
	user 'ubuntu'
	command "git clone git@bitbucket.org:5andhalf/barbooks-nodejs.git"
end

execute "git checkout development" do
	command "cd barbooks-nodejs"
	command "git checkout development"
end
