require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  it 'is invalid without firstname' do
  	user.firstname = nil
  	expect(user).not_to be_valid
  end

  it 'is invalid without lastname' do 
	user.lastname = nil
  	expect(user).not_to be_valid
  end

  it 'is invalid without email' do 
  	user.save
  	other_user = build(:user, email: user.email)

  	# expect(other_user.email).not_to eq(user.email)
  	other_user.valid?
  	expect(other_user.errors[:email]).to include('has already been taken')
  end

  it 'is invalid without unique email'

  it 'has two tasks' do 
  	expect(user.tasks.length).to eq(2)
  end

  it 'has a valid factory' do 
  	expect(user).to be_valid
  end
end
