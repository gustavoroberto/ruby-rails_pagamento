class AddNomeToFornecedores < ActiveRecord::Migration
  def change
    add_column :fornecedores, :nome, :string
  end
end
