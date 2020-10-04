# clase carta

class Carta
    attr_accessor :numero, :pinta

    def initialize
        @numero = Random.rand(1..13)
        arr = ['C','D','E','T']
        @pinta =  arr.sample
    end
end

#carta = Carta.new
#print "#{carta.pinta} #{carta.numero} \n"
arr = []
arr1 = arr.push(Carta.new).push(Carta.new).push(Carta.new).push(Carta.new).push(Carta.new)
#arr1.each {|i| print "#{i.pinta} #{i.numero} \n"}