FactoryBot.define do
  factory :homework, class: Task do
  	association :user
    name "complete homework"
    priority 1
  end

  factory :email, class: Task do 
  	association :user
  	name "reply to Zack's email"
  	priority 2
  end

  factory :invalid_task, class: Task do
  	association :user
  	name nil
  	priority nil
  end
end
