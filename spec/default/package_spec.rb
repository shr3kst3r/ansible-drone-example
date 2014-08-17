require 'spec_helper'

describe service('apache2') do
  it { should be_running }
end

describe service('mysql') do
  it { should be_running }
end
