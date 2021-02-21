class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :brand
      t.string :size
      t.string :condition

      t.timestamps
    end
  end
end
