class CreatePredios < ActiveRecord::Migration[5.2]
  def change
    create_table :predios do |t|
      t.string :nm_predio
      t.integer :cd_numero
      t.integer :cd_bloco
      t.integer :cd_cep
      t.string :ds_endereco
      t.string :ds_municipio
      t.string :sg_estado
      t.string :ds_regioesSociais
      t.integer :cd_telefone
      t.string :nm_sindico
      t.integer :cd_sindico
    
      t.timestamps
    end
  end
end
