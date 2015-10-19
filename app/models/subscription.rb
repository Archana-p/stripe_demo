# == Schema Information
#
# Table name: subscriptions
#
#  id                     :integer          not null, primary key
#  user_id                :integer
#  plan_id                :integer
#  stripe_subscription_id :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#




class Subscription < ActiveRecord::Base
	belongs_to :user
  belongs_to :plan
end
