
## This file is for unit tests based on RSPEC/CHEFSPEC

require 'spec_helper'

describe "demo::default" do
  let(:chef_run) do
    runner = ChefSpec::SoloRunner.new(
      log_level: :error,
      platform: 'redhat',
      version: '6.5'
    )
    Chef::Config.force_logger true
    runner.converge(described_recipe)
  end

  it "Creates a chef-demo file" do
    expect(chef_run).to create_file "/chef-demo.txt"
  end

end
