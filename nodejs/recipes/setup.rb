#
# Cookbook Name:: NodeJs
# Recipe:: nodejs
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* INSTALLING NODEJS *******")

include_recipe "nvm"

execute "nvm ls-remote" do
	user 'ubuntu'
	command "nvm ls-remote"
end

execute "nvm install node" do
	command "nvm install node"
end
