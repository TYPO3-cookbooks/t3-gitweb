this_cookbook = "t3-gitweb"

include_recipe "gitweb::default"

resources("template[/etc/gitweb.conf]").cookbook this_cookbook
# resources("template[#{node[:apache][:dir]}/sites-available/#{node[:gitweb][:hostname]}.conf]").cookbook this_cookbook

file "/usr/share/gitweb/robots.txt" do
  content <<-EOQ
User-agent: msnbot
Crawl-delay: 5
EOQ
end