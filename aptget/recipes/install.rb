#
# Cookbook Name:: aptget
# Recipe:: install
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
execute "apt-get install" do
	command "apt-get install -y git acl curl wget python g++"
end
