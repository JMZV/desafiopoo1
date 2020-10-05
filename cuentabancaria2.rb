#segundo desafio ejercicio 1 cuenta bancaria
#clase cuenta bancaria y usuario

class Usuario
    attr_accessor :nombre, :cuenta
    def initialize(nombre,*cuenta)
        @nombre = nombre
        @cuenta = cuenta
    end
    def saldo_total
        sum = 0
        self.cuenta.each do |c| 
            sum += c.saldo
        end
        return sum       
    end
end

class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco,numero_de_cuenta, saldo=0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto,cuenta)
        self.saldo -= monto
        cuenta.saldo += monto
    end
end

cuenta1 = CuentaBancaria.new('BCI','123456',50000)
cuenta2 = CuentaBancaria.new('Banco Chile','654321',10000)
#print "Saldo cuenta1: #{cuenta1.saldo}\nSaldo cuenta2: #{cuenta2.saldo}\n"
cuenta1.transferir(10000, cuenta2)
#print "Saldo cuenta1: #{cuenta1.saldo}\nSaldo cuenta2: #{cuenta2.saldo}\n"
jose = Usuario.new('Jose', cuenta1, cuenta2)
#print "#{jose.saldo_total} \n"