class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :nm_sindico
      t.integer :cd_sindico
      t.string :ds_email
      t.integer :cd_telefone
      t.integer :cd_celular
      t.string :ds_endereco
      t.string :ds_municipio
      t.integer :cd_apartamento

      t.timestamps
    end
  end
end
