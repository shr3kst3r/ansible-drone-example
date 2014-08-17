require 'spec_helper'

describe file('/etc/hosts') do
  it { should be_file }
  its(:content) { should match /127.0.0.1 testdomain/ }
end

describe command('getent ahostsv4 testdomain') do
  it { should return_stdout /127\.0\.0\.1/ }
end
