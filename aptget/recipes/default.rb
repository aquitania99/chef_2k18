#
# Cookbook Name:: aptget
# Recipe:: default
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#
execute "apt-get update" do
	command "apt-get update"
end
