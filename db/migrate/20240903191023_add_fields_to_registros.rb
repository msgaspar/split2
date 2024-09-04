class AddFieldsToRegistros < ActiveRecord::Migration[8.0]
  def change
    add_column :registros, :data, :date
    add_column :registros, :valor, :decimal
    add_column :registros, :entrada, :boolean
  end
end
