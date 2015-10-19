class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :plan_id
      t.integer :stripe_subsciption_id

      t.timestamps null: false
    end
  end
end
