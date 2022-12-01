class CreateBins < ActiveRecord::Migration[7.0]
  def change
    create_table :bins do |t|
      t.string :location
      t.integer :waste_level
      t.boolean :emptied

      t.timestamps
    end
  end
end
