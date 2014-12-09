require 'spec_helper'

describe Usuario do 
  describe 'validations' do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :password }
  end

  describe 'associations' do
  end 
end