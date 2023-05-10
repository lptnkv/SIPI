class ChangeSubscriptionColumn < ActiveRecord::Migration[6.1]
  def change
    change_column_null :subscriptions, :user_id, :references, foreign_key: true, null: true
  end
end
