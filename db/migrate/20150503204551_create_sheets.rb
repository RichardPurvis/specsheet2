class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :sheet_name
      t.text :sheet_description

      t.timestamps
    end
  end
end
