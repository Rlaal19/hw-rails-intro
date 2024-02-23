class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
        t.integer    'potatoes'
        t.text       'comments'
        # t.references 'user'
        # t.references 'movie'
    end
  end
end
