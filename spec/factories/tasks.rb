FactoryBot.define do
  factory :homework, class: Task do
    name "complete homework"
    priority 1
  end

  factory :email, class: Task do 
  	name "reply to Zack's email"
  	priority 2
  end

  factory :invalid_task, class: Task do
  	name nil
  	priority nil
  end
end
