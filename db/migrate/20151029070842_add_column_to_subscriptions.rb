class AddColumnToSubscriptions < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :email, :string
  end
end
