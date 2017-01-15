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

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do
    before do
      @post = FactoryGirl.create(:post)
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date, rationale and daily_hours' do
      @post.date = nil
      @post.rationale = nil
      @post.daily_hours = nil
      expect(@post).to_not be_valid
    end

    it "has an daily_hours greater than 0.0" do
      @post.daily_hours = 0.0
      expect(@post).to_not be_valid
    end
  end
end
