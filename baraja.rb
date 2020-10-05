#segundo desafio ejercicio 2 cuenta baraja de cartas
#clase carta se obtiene de archivo cartas.rb
require './carta1.rb'

class Baraja
    attr_accessor :cartas
    def initialize(*cartas)
        car = []
        for c in (1..13)
            car.push(Carta.new(c,'T'))
            car.push(Carta.new(c,'C'))
            car.push(Carta.new(c,'D'))
            car.push(Carta.new(c,'E'))
        end
        @cartas = car
    end
    def barajar
        self.cartas = self.cartas.shuffle
    end
    def sacar
        self.cartas.pop
    end
    def repartir_mano
        repart = []
        repart = self.cartas.shift(5)
        return repart
    end
end

bar = Baraja.new()
#print bar.cartas 
#print "\n"
#print bar.barajar
#print "\n"
#print bar.sacar
#print "\n"
#print bar.cartas 
#print "\n"
#print bar.barajar
#print "\n"
#print bar.cartas 
#print "\n"
#print bar.repartir_mano