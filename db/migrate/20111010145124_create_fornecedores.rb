class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :cnpj_cpf

      t.timestamps
    end
  end
end
