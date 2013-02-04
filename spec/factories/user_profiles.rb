# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user nil
    about "MyText"
    email "MyString"
    phone "MyString"
    url "MyString"
    twitter "MyString"
    facebook "MyString"
    google "MyString"
    slug "MyString"
    mentor false
    image "MyString"
    name "MyString"
    tagline "MyString"
    linkedin "MyString"
    github "MyString"
  end
end
