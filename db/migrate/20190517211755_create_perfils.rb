class CreatePerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :perfils do |t|
      t.string :nome
      t.string :sobrenome
      t.integer :telefone
      t.string :img_name
      t.string :img_content_type
      t.integer :img_file_size

      t.timestamps
    end
  end
end
