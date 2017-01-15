# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  date        :date
#  rationale   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  status      :integer          default("submitted")
#  daily_hours :decimal(, )      default(0.0)
#

FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed "work performed"
    daily_hours 12.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    daily_hours 8.0
    user
  end
end
