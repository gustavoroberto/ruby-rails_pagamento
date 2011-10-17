class SepararCpfECnpj < ActiveRecord::Migration
  def change
  	rename_column :fornecedores, :cnpj_cpf, :cnpj
  	add_column :fornecedores, :cpf, :string
  	add_column :fornecedores, :pj, :string
  end
end
