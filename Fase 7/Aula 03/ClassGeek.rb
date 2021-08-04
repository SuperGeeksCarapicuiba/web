require 'rubygems'
# require 'bundle/setup'
# require 'C:\Users\Lucas Oliveira\Documents\Web Developer\SuperGeeks\Estudos\Fase 7\Aula 03\rubygems-3.2.18\bundler\lib\bundler\setup.rb'
require 'C:\Users\Lucas Oliveira\Desktop\SuperGeeks\FASES\FASE 7\Fase 7 WEB\rubygems-3.2.18\bundler\lib\bundler'
require 'sequel'

# Sequel (conjunto de ferramentas) cria o banco de dados
DB = Sequel.sqlite('classgeek_db.db')

# A não ser que a tabela alunos ja exista, crie uma
unless DB.table_exists? :alunos
    # Cria tabela alunos (caso não existir) com as seguintes tabelas
    DB.create_table(:alunos) do
        primary_key :id
        String :aluno
        Integer :xp
        Integer :hp
        Integer :gp
    end
end

# COnjunto de dados com a tabela alunos. O dados ficarão aqui dentro
db1 = DB[:alunos]

class Aluno

    attr_accessor :aluno, :xp, :hp, :gp

    def initialize(aluno, xp, hp, gp)
        @aluno = aluno
        @xp = xp
        @hp = hp
        @gp = gp
    end
end

# Criando os objetos usando o construtor da classe ALuno com seus valores.
# Posicionando todos em uma lista
alunos = [
    a1 = Aluno.new("Luiz Felipe", 100, 100, 100),
    a2 = Aluno.new("Elaine Caires", 100, 100, 80),
    a3 = Aluno.new("Gilberto Geradino", 100, 100, 200),
    a4 = Aluno.new("Lucca Caires", 80, 80, 50),
    a5 = Aluno.new("Rafael", 100, 100, 100)
]

# Pegando cada item da lista e adicionando na variavel "a"
# Em seguida fazer o insert no banco de dados
alunos.each {
    |a|
    # "Na coluna aluno coloca os items do objeto Aluno,
    # no caso as variavels -> aluno, xp, hp e gp"
    db1.insert(:aluno => a.aluno, :xp => a.xp, :hp => a.hp, :gp => a.gp)
}