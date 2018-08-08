#
# Cookbook Name:: nginx
# Recipe:: nginx
#
# Copyright 2018, 5.5
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("******* PUT VHOST QA2 - NGINX *******")
cookbook_file "/etc/nginx/sites-available/qa2.original.config" do
	source "qa2.original.config"
	mode "0644"
	not_if { ::File.exists? '/etc/nginx/sites-available/qa2.original.config' }
end

Chef::Log.info("******* CREATE VHOST SOFT LINK - SITES ENABLED NGINX *******")
execute "link vhost to sites-enabled" do
	command "ln -s /etc/nginx/sites-available/qa2.original.config /etc/nginx/sites-enabled/qa2.original.config"
	not_if { ::File.exists? '/etc/nginx/sites-enabled/qa2.original.config' }
end

Chef::Log.info("******* PUT LITTLE DEFAULT HTML FILE - NGINX *******")
# Default test file
cookbook_file "/usr/share/nginx/html/index.html" do
	source "index.html"
	mode "0644"
end

Chef::Log.info("******* START SERVICE NGINX *******")
service 'nginx' do
	action [ :enable, :start ]
end
