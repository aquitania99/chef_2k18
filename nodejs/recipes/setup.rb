#
# Cookbook Name:: NodeJs
# Recipe:: nodejs
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* INSTALLING NODEJS *******")

execute "nvm ls-remote" do
	user 'ubuntu'
	command "nvm ls-remote"
end

execute "nvm install node" do
		user 'ubuntu'
		cwd '/home/ubuntu'
    environment ({'HOME' => '/home/ubuntu', 'USER' => 'ubuntu'})
		command "nvm install node"
end
