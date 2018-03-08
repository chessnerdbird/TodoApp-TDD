require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  it 'is invalid without firstname'

  it 'is invalid without lastname'

  it 'is invalid without email'

  it 'is invalid without unique email'

  it 'has many tasks'

  it 'has a valid factory' do 
  	expect(user).to be_valid
  end
end
