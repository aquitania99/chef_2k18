#
# Cookbook Name:: NodeJs
# Recipe:: nodejs
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* INSTALLING NODEJS *******")

include_recipe "aptget"

execute "wget -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh" do
	command "wget https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh"
end

execute "bash /install.sh" do
	user 'ubuntu'
	command "bash install.sh"

execute "export NVM_DIR" do
	# command "export NVM_DIR=\"$HOME/.nvm\" [ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\""
	command "export NVM_DIR=\"$HOME/.nvm\" [ -s \"$NVM_DIR/nvm.sh' ] && \. \"$NVM_DIR/nvm.sh\"" # This loads nvm
end

execute "Check NVM" do
	user 'ubuntu'
	command "nvm ls-remote"
end

execute "Install Node" do
	user 'ubuntu'
	command "nvm install node"
end