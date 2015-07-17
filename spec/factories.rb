FactoryGirl.define do
  factory :admin do
    email 'admin@example.com'
    password 'f4k3p455w0rd'

  end

  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'

  end

  factory :category do
    name 'Rails'
    description 'My description'

  end

  factory :post do
    title 'I love Rails'
    body 'This is one of my favorite frameworks'

  end

end
