class UserReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user, :string
  end
end
