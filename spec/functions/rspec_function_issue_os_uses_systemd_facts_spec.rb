#! /usr/bin/env ruby -S rspec
require 'spec_helper'

describe "rspec_function_issue::os_uses_systemd_facts" do
  before :all do
    @facter_facts = { }
  end

  let(:facts) { @facter_facts }

  context "when on sles 12 with systemD" do
    before :each do
      facts['os'] = { 'name' => 'SLES',
                      'release' => {
                        'major' => '12',
                       }
                    }
    end
    it { is_expected.to run.and_return(true) }
  end
  context "when on sles 11 without systemD" do
    before :each do
      facts['os'] = { 'name' => 'SLES',
                      'release' => {
                        'major' => '11',
                       }
                    }
    end
    it { is_expected.to run.and_return(false) }
  end
  context "when on ubuntu 14.04 without systemD" do
    before :each do
      facts['os'] = { 'name' => 'ubuntu',
                      'release' => {
                        'major' => '14',
                        'full'  => '14.04',
                       }
                    }
    end
    it { is_expected.to run.and_return(false) }
  end
  context "when on ubuntu 16.04 with systemD" do
    before :each do
      facts['os'] = { 'name' => 'ubuntu',
                      'release' => {
                        'major' => '16',
                        'full'  => '16.04',
                       }
                    }
    end
    it { is_expected.to run.and_return(true) }
  end
    context "when on redhat 6 without systemD" do
      before :each do
        facts['os'] = { 'name' => 'rhel',
                        'family' => 'RedHat',
                        'release' => {
                          'major' => '6',
                          'full'  => '6.6',
                         }
                      }
      end
      it { is_expected.to run.and_return(false) }
    end
    context "when on redhat 7 with systemD" do
      before :each do
        facts['os'] = { 'name' => 'rhel',
                        'family' => 'RedHat',
                        'release' => {
                          'major' => '7',
                          'full'  => '7.1',
                         }
                      }
      end
      it { is_expected.to run.and_return(true) }
    end
end
