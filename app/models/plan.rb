# == Schema Information
#
# Table name: plans
#
#  id                          :integer          not null, primary key
#  stripe_plan_id              :string(255)
#  name                        :string(255)
#  amount                      :integer          default(0)
#  currency                    :string(255)      default("aud")
#  trial_period_days           :integer          default(0)
#  stripe_statement_descriptor :string(255)
#  created_at                  :datetime
#  updated_at                  :datetime
#


# 
# These plans show exact replicas of Plans created on Stripe.
# Plan.sync_from_stripe method syncs all the plans data in Rails app.
#






class Plan < ActiveRecord::Base
	has_many :subscriptions
end
