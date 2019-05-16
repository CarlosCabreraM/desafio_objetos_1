class Cart
    attr_reader :pinta, :numero
    def initialize 
        num_arr = ['as','2','3','4','5','6','7','8','9','j','q','k']
        pint_arr = ['corazon','espada','diamante','trebol']        
        @pinta = pint_arr.sample
        @numero = num_arr.sample
    end
    def show_cart
        "#{@numero} de #{pinta}"
    end    
end

arr_cartas = []


def menu
    puts 'Escribe la acción que quieres obtener: '
    puts 'jugar - para recibir 5 cartas'
    puts 'mostrar - para ver tus cartas'
    puts 'salir - para abandonar'
end


opcion = ''
while opcion != 'salir'
    menu
    opcion = gets.chomp.to_s
    case opcion
    when 'jugar'
        puts'Ya cuentas con 5 cartas!'
        carta1 = Cart.new
        carta2 = Cart.new
        carta3 = Cart.new
        carta4 = Cart.new
        carta5 = Cart.new
    when 'mostrar'
            puts carta1.show_cart
            puts carta2.show_cart
            puts carta3.show_cart
            puts carta4.show_cart
            puts carta5.show_cart
        'primero debes recibir las 5 cartas'
        
    when 'salir'
        puts 'Haz abandonado el programa'
        
    else
        puts 'opción no válida'
    end
end