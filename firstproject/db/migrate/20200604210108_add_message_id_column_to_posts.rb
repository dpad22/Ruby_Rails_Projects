class AddMessageIdColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :message_id, :integer
  end
end
