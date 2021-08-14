class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :title
      t.string :image_url
      t.integer :votes
      t.text :bio

      t.timestamps
    end
  end
end
