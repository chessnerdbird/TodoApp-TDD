require 'rails_helper'

feature "tasks/index"  do
	scenario 'renders a list of tasks' do
		create(:homework)
		create(:email)

		visit tasks_path

		expect(page).to have_content('complete homework')
		expect(page).to have_content("reply to Zack's email")
	end
end

feature 'New Task' do 
	scenario 'user adds a new task' do
		user = create(:user)
		visit tasks_path

		expect{
			clink_link 'New Task'
			fill_in 'Name', with: 'Learn Rspec'
			fill_in 'Priority', with: 1
			fill_in 'Due date', with: DateTime.now
			select(user.email, from: 'task_user_id')
			click_button('Create Task')
		}.to change(Task, :count).by(1)
	end
end