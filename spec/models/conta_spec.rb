require 'spec_helper'

describe Conta do 
	describe 'validations' do
		it { should validate_presence_of :owner }
		it { should validate_presence_of :subdominio }
		it { should validate_uniqueness_of :subdominio }

		it { should allow_value('ifap').for(:subdominio) }
		it { should allow_value('test').for(:subdominio) }

		it { should_not allow_value('www').for(:subdominio) }
		it { should_not allow_value('WWW').for(:subdominio) }
		it { should_not allow_value('.test').for(:subdominio) }
		it { should_not allow_value('test/').for(:subdominio) }

		it 'should validate case intensive uniqueness' do
			create(:conta, subdominio: 'Test')
			expect(build(:conta, subdominio: 'test')).to_not be_valid
		end
	end

	describe 'associations' do
		it { should belong_to :owner }
	end	
end