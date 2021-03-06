settings = Crowd.settings(node)

directory node['crowd']['home_path'] do
  owner node['crowd']['user']
  action :create
  recursive true
end

# crowd-webapp/WEB-INF/classes/crowd-init.properties
template "#{node['crowd']['install_path']}/crowd-webapp/WEB-INF/classes/crowd-init.properties" do
  source 'crowd-init.properties.erb'
  mode '0644'
  owner node['crowd']['user']
  group node['crowd']['user']
  only_if { node['crowd']['install_type'] == 'standalone' }
end

# crowd-webapp/WEB-INF/classes/crowd-init.properties
template "#{node['crowd']['home_path']}/crowd.properties" do
  source 'crowd.properties.erb'
  mode '0644'
  owner node['crowd']['user']
  group node['crowd']['user']
  only_if { node['crowd']['install_type'] == 'standalone' }
end

# crowd-webapp/WEB-INF/classes/crowd-init.properties
# TODO for future?
# template "#{node['crowd']['home_path']}/crowd.cfg.xml" do
#   source 'crowd.cfg.xml.erb'
#   mode '0644'
#   only_if { node['crowd']['install_type'] == 'standalone' }
# end
