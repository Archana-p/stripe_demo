class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :stripe_plan_id
      t.string :name
      t.integer :amount
      t.string :currency
      t.string :trial_period_of_days
      t.string :interval
      t.string :stripe_statement_descriptor

      t.timestamps null: false
    end
  end
end
