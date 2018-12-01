class CreateFinances < ActiveRecord::Migration[5.2]
  def change
    create_table :finances do |t|
      t.integer :cd_finance
      t.string :nm_finance
      t.string :ds_finance
      t.float :vl_finance

      t.timestamps
    end
  end
end
