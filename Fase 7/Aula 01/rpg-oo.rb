# Solicitação do arquivo externo
require_relative 'modulosRPG.rb'

class SerVivo

    include Inventario
    include Atacar

    # Acessor de atributo, me permite acessar os atributos de uma classe (Getters e Setters)
    attr_accessor :nome, :vida, :destreza, :inteligencia, :sabedoria, 
    :carisma, :pocao, :ouro, :prata, :armadura, :chave, :arma

    # o initialize é um comando de construtor
    def initialize(nome, vida, destreza, inteligencia, sabedoria, carisma)
        # Para criar variaveis de instancia precisa usar o @
        @nome = nome
        @vida = vida
        @destreza = destreza
        @inteligencia = inteligencia
        @sabedoria = sabedoria
        @carisma = carisma

    end

    def tomarDano(valor)
        self.vida = self.vida - valor
        if self.vida <= 0
            puts "Morreu"
        end
    end

    def tomarPocao(qtdPocao)
        self.vida = self.vida + self.vida * qtdPocao
        self.pocao = self.pocao - qtdPocao
        puts "O #{self.nome} tem #{self.vida} de vida"
        puts "Agora o #{self.nome} tem #{self.pocao} poções"
    end

    
end

link = SerVivo.new("Link", 100, 50, 40, 30, 60)

link.ouro = 200
link.arma = "Espada"
link.pocao = 2

link.tomarDano(90)
link.tomarPocao(2)

puts "O heroi #{link.nome}, tem HP: #{link.vida}, e #{link.destreza} de destreza.
usa #{link.arma}"

puts "\n =================================== \n"

# drogo = SerVivo.new("Drogo", 200, 40, 30, 10, 5)

# puts "O Dragão #{drogo.nome}, tem HP: #{drogo.vida} e #{drogo.destreza} de destreza."

# drogo.vida -= 10

# puts "A vida do #{drogo.nome} agora é #{drogo.vida}"

# puts " ============== "

# if drogo.vida <= 0
#     puts "HP #{drogo.vida}, morreu"
# else
#     puts "HP #{drogo.vida}, não morreu"
# end

# drogo.tomarDano(300)


# class Carro
#     attr_accessor :modelo, :ano

#     def initialize(modelo, ano)
#         @modelo = modelo
#         @ano = ano
#     end

#     def mostrarDados()
#         puts "Modelo: #{self.modelo}\nAno: #{self.ano}"
#     end
# end

# puts " ============ "
# c1 = Carro.new("Monza", 1996)
# c1.mostrarDados()


class Dragon < SerVivo
    attr_accessor :sopro, :vooVel

    def initialize(nome, vida, destreza, inteligencia, sabedoria, carisma, sopro, vooVel)
        super(nome, vida, destreza, inteligencia, sabedoria, carisma)

        @sopro = sopro
        @vooVel = vooVel
    end
end

Drakengard = Dragon.new("Drakengard", 500, 300, 200, 150, 10, "Fogo", "200 Km/h")

Drakengard.ouro = 200
Drakengard.arma = "Peitoral de aço"
Drakengard.pocao = 3

Drakengard.tomarDano(145)
Drakengard.tomarPocao(2)


puts "O Dragão #{Drakengard.nome} tem #{Drakengard.vida} de vida, #{Drakengard.destreza} de Dex, tem sopro de #{Drakengard.sopro} e voo de #{Drakengard.vooVel}"


class Goblin
    include Inventario
    include Atacar

    attr_accessor :nome, :vida

    def initialize(nome, vida)
        @nome = nome
        @vida = vida
    end
end

enox = Goblin.new("Enox", 50)

puts "\t======================== "
puts "O Goblin #{enox.nome}, nasceu com #{enox.vida}"

enox.atack("Espada Curta")