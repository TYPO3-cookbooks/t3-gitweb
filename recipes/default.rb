chef_gem "chef-rewind"
require 'chef/rewind'
this_cookbook = "t3-gitweb"

include_recipe "gitweb::default"

rewind "template[/etc/gitweb.conf]" do
  cookbook this_cookbook
end

rewind "template[#{node[:apache][:dir]}/sites-available/#{node[:gitweb][:hostname]}.conf]" do
  cookbook this_cookbook
end