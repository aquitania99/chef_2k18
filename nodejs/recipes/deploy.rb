#
# Cookbook Name:: NodeJs
# Recipe:: nodejs
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* DEPLOYING NODEJS APP *******")

# bash "git clone" do
#     cwd '/home/ubuntu'
#     user 'ubuntu'
#     group 'ubuntu'
#     environment ({'HOME' => '/home/ubuntu', 'USER' => 'ubuntu'})
#     code <<-EOH
# 			echo "PWD: `pwd`"
#       git clone git@bitbucket.org:5andhalf/barbooks-nodejs.git
#       cd barbooks-nodejs
#       git checkout development
#       npm install
#       EOH
# end

deploy 'private_repo' do
  repo 'git@bitbucket.org:5andhalf/barbooks-nodejs.git'
  user 'ubuntu'
  deploy_to '/home/ubuntu/barbooks-nodejs'
  ssh_wrapper '/tmp/git_ssh_wrapper.sh'
  action :deploy
end
