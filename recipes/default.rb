include_recipe "gitweb::default"

resources("template[/etc/gitweb.conf]").cookbook cookbook_name

file "/usr/share/gitweb/robots.txt" do
  content <<-EOQ
User-agent: *
Crawl-delay: 5
EOQ
end
