# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    text "MyText"
    selected_text "MyText"
    start_offset 1
    end_offset 1
    post nil
  end
end
