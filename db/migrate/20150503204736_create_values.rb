class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :value
      t.references :column, index: true
      t.references :sheet, index: true

      t.timestamps
    end
  end
end
