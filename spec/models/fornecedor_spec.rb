# encoding: utf-8

require 'spec_helper'

describe Fornecedor do
	
	it "válido com nome" do
		Fornecedor.new(nome:'Apple', cnpj:'00000000000191').should be_valid
	end
	
	it "não é válido sem nome" do
		Fornecedor.new(cnpj:'00000000000191').should be_invalid
	end
	
	it "valida CPF" do
		Fornecedor.new(nome:'Gustavo', cpf:'80785433104').should be_valid
		Fornecedor.new(nome:'Fulano', cpf:'1').should be_invalid
	end
	
	it "valida CNPJ" do
		Fornecedor.new(nome:'Apple', cnpj:'00000000000191').should be_valid
		Fornecedor.new(nome:'MS', cnpj:'1').should be_invalid
	end
	
	it "não aceita CPF e CNPJ juntos" do
		Fornecedor.new(nome:'Apple', cnpj:'00000000000191', cpf:'80785433104').should be_invalid
	end
	
	it "não aceita CPF e CNPJ vazios ao mesmo tempo" do
		Fornecedor.new(nome: 'Apple').should be_invalid
	end
	
	it "obriga cnpj se é pj" do
		Fornecedor.new(nome:'Apple', pj: true, cnpj:'00000000000191').should be_valid
		Fornecedor.new(nome:'Apple', pj: true, cpf:'80785433104').should be_invalid
	end
	
	it "obriga cpf se não é pj" do
	end
	
end