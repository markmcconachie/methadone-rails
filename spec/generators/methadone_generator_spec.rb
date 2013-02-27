require 'spec_helper'
require 'generators/methadone_generator'

describe MethadoneGenerator do
  destination File.expand_path("../../../../../tmp", __FILE__)

  before do
    prepare_destination
  end

  describe 'the generated files' do
    before do
      run_generator %w(command)
    end
    describe 'the command' do
      subject { file 'bin/command' }

      it { should exist }
      it { should contain '#!/usr/bin/env ruby' }
      it { should contain "require 'methadone'" }
      it { should contain "include Methadone::Rails" }

      it "sets the file executable" do
        expect(File.executable?(subject)).to be_true
      end
    end
  end
end
