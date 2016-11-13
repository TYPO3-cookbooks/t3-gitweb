this_cookbook = "t3-gitweb"

include_recipe "gitweb::default"

file "/usr/share/gitweb/robots.txt" do
  content <<-EOQ
User-agent: *
Crawl-delay: 5
EOQ
end
