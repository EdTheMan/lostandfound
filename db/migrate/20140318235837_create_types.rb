class CreateTypes < ActiveRecord::Migration
  def change
  	drop_table :types
    create_table :types do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
