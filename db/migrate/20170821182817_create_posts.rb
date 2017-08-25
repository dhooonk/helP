class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|

        t.integer :shop_id
        #t.belongs_to :shop
        t.string :title
        t.text :content

      t.timestamps
    end
  end
end
