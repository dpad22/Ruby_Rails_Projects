class AddPostIdColumnToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :post_id, :integer
  end
end
