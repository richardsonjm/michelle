FactoryGirl.define do
  factory :work do
    sequence(:client) {|n| "Client#{n}"}
    sequence(:campaign) {|n| "Campaign#{n}"}
    sequence(:challange) {|n| "Challange#{n}"}
    sequence(:insight) {|n| "Insight#{n}"}
    sequence(:strategy) {|n| "Strategy#{n}"}
    sequence(:results) {|n| "Results#{n}"}
  end
end
