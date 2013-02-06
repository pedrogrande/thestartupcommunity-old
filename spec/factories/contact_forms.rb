# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_form do
    name "MyString"
    email "MyString"
    phone "MyString"
    subject "MyString"
    content "MyText"
  end
end
