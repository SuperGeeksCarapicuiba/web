class Personagem
    attr_accessor :nome, :vida, :destreza, :inteligencia, :sabedoria,
                :carisma, :ouro, :chave, :espada, :escudo, :pocao
                
    def initialize(nome, vida, destreza, inteligencia, sabedoria, carisma)
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

    def tomarPocao(quantidade)
        valorPocao = 10
        vidaSomada = valorPocao * quantidade
        self.vida += vidaSomada
        puts "A poção cura #{valorPocao} de vida.\nQuantidade de vida somada: #{vidaSomada}\n"
        puts "Nome:\t#{self.nome}\nVida:\t#{self.vida}"
    end

    def inventario(ouro, chave, espada, escudo, pocao)
        @ouro = ouro
        @cahve = chave
        @espada = espada
        @escudo = escudo
        @pocao = pocao
    end

end

zelda = Personagem.new("Zelda", 100, 80, 200, 300, 100)

zelda.tomarDano(101)

puts "A personagem #{zelda.nome} tem #{zelda.vida} de vida. E #{zelda.inteligencia} de inteligencia"

class Heroi < Personagem
    attr_accessor :velocidade, :critico

    def initialize(nome, vida, destreza, inteligencia, sabedoria, carisma, velocidade, critico)
        super(nome, vida, destreza, inteligencia, sabedoria, carisma)
    end

end

link = Heroi.new("Link", 100, 100, 100, 90, 70, 100, 105)

puts "Nome: #{link.nome}\nVida: #{link.vida}"

link.ouro = 100
link.chave = 2
link.pocao = 4
link.espada = "Master Sword"
link.escudo = "Hyrulian Shield"

link.tomarDano(70)
link.tomarPocao(2)