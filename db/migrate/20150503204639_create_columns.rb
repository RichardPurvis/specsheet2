class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.string :column_name
      t.string :data_type
      t.references :sheet, index: true

      t.timestamps
    end
  end
end
