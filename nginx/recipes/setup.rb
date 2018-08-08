#
# Cookbook Name:: Nginx
# Recipe:: nginx
#
# Copyright 2017, 5.5
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("******* INSTALLING WEB SERVER - REVERSE PROXY (NGINX)! *******")
include_recipe "aptget"

package 'nginx' do
	action :install
end
