require 'rubygems'
require 'C:\Users\Lucas Oliveira\Desktop\SuperGeeks\FASES\FASE 7\Fase 7 WEB\rubygems-3.2.18\bundler\lib\bundler'
require 'sequel'

DB = Sequel.sqlite('classgeek_db.db')

unless DB.table_exists? :alunos
    DB.create_table(:alunos) do
        primary_key :id
        String :aluno
        Integer :xp
        Integer :hp
        Integer :gp
    end
end

unless DB.table_exists? :materias
    DB.create_table(:materias) do
        primary_key :id
        Integer :portugues
        Integer :matematica
        Integer :ingles
        Integer :fisica
        Integer :artes
    end
end


db1 = DB[:alunos]
db2 = DB[:materias]

class Aluno

    attr_accessor :aluno, :xp, :hp, :gp

    def initialize(aluno, xp, hp, gp)
        @aluno = aluno
        @xp = xp
        @hp = hp
        @gp = gp
    end
end

alunos = [
    a1 = Aluno.new("Luiz Felipe",200,110,200),
    a2 = Aluno.new("Marcus",100,100,100),
    a3 = Aluno.new("João", 200,200,200),
    a4 = Aluno.new("Maria", 300,300,300)
]

alunos.each {
    |a|
    db1.insert(:aluno => a.aluno, :xp => a.xp, :hp => a.hp, :gp => a.xp)
}

class Materia
    attr_accessor :portugues, :matematica , :ingles, :fisica , :artes

    def initialize(portugues,matematica,ingles,fisica,artes)
        @portugues = portugues
        @matematica = matematica
        @ingles = ingles
        @fisica = fisica
        @artes = artes
    end
end

materias = [
    m1 = Materia.new(8,10,8,10,10),
    m2 = Materia.new(10,2,8,5,6)
]

materias.each {
    |m|
    db2.insert(:portugues => m.portugues, :matematica => m.matematica,:ingles => m.ingles, :fisica => m.ingles, :artes => m.artes)
}