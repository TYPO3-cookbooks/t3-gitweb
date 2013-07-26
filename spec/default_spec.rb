require 'chefspec'

describe 't3-gitweb::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 't3-gitweb::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
