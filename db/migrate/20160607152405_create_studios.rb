class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip, null: false
      t.references :user, null: false

      t.timestamps null: false
    end
  end
end
