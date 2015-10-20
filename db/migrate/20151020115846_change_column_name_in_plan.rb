class ChangeColumnNameInPlan < ActiveRecord::Migration
  def change
  	rename_column :plans ,:integer ,:interval
  end
end
