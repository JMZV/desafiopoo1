#clase cuenta bancaria

class CuentaBancaria
    attr_accessor :nombre_de_usuario

    def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)
        error = numero_de_cuenta.digits.length
        raise RangeError, "Cuenta tiene #{error} digitos, debe tener 8 digitos" if error != 8
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        if (@vip==1)
            cuenta = '1-'+@numero_de_cuenta.to_s
        else
            cuenta = '0-'+@numero_de_cuenta.to_s
        end
        return cuenta
    end
end

#cuenta = CuentaBancaria.new('jose', 12345678)
#puts cuenta.numero_de_cuenta