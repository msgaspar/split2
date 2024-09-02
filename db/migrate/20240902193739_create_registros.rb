class CreateRegistros < ActiveRecord::Migration[8.0]
  def change
    create_table :registros do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
