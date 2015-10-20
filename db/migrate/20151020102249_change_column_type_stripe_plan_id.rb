class ChangeColumnTypeStripePlanId < ActiveRecord::Migration
  def change
  	change_column :plans, :stripe_plan_id, :string
  end
end
