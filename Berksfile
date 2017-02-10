source "http://chef.typo3.org:26200"
source "https://supermarket.chef.io"

metadata

solver :ruby, :required

group :integration do
  cookbook "apt", "< 6.0.0" # requires Chef 12.9+
end
