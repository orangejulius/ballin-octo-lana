class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.integer :number
      t.string :string

      t.timestamps
    end
  end
end
