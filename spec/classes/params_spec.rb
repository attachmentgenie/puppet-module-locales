require 'spec_helper'
describe 'locales::params' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      context 'It should not contain any resources' do
        it { is_expected.to contain_class('locales::params') }
        it { is_expected.to have_resource_count(0) }
      end
    end
  end
end
