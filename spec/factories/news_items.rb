# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news_item do
    user nil
    title "MyString"
    url "MyString"
    content "MyText"
    votes 1
    flagged false
  end
end
