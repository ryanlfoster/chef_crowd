#
# Cookbook Name:: chef_crowd
# Recipe:: default
#
# Copyright 2015, KLM Royal Dutch Airlines
#

case node[:platform_family]
when 'debian'
  include_recipe 'apt'
end

settings = Crowd.settings(node)

include_recipe "java"
include_recipe 'crowd::database' if settings['database']['host'] == 'localhost'
include_recipe "crowd::#{node['crowd']['install_type']}"
include_recipe 'crowd::configuration'

unless node['crowd']['install_type'] == 'war'
  include_recipe "crowd::#{node['crowd']['init_type']}"
  include_recipe 'crowd::apache2'
end
