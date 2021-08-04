module Inventario
    def inventario(pocao, ouro, prata, armadura, chave, arma)
        @pocao = pocao
        @ouro = ouro
        @prata = prata
        @armadura = armadura
        @chave = chave
        @arma = arma
    end
end

module Atacar
    def atack(tipoArma)
        @tipoArma = tipoArma

        case tipoArma
        when "Espada Curta"
            self.vida = self.vida - 1
            puts "Foi atacado por #{tipoArma}"
            puts "Levou 1 de dano"
            puts "HP = #{self.vida}"
        when "Espada Longa"
            self.vida = self.vida - 2
            puts "Foi atacod por #{tipoArma}"
            puts "Levou 2 de dano"
            puts "HP = #{self.vida}"
        when "Machado"
            self.vida = self.vida - 3
            puts "Foi atacado por #{tipoArma}"
            puts "Levou 3 de dano"
            puts "HP = #{self.vida}"
        when "Lança"
            self.vida = self.vida - 4
            puts "Foi atacado por #{tipoArma}"
            puts "Levou 4 de dano"
            puts "HP = #{self.vida}"
        else
            puts "Não levou dano!!"
        end
    end
end