#
# Cookbook Name:: rax_web_app
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "raxdns::default"

host_record = ( node[:fqdn] if node[:fqdn].include? '.' )  or "#{node[:fqdn]}.#{node[:domain]}"

raxdns_record host_record do
  domain node[:domain]
  value node[:ipaddress]
  type 'A'
  ttl 300
  action :create
end

