#Analizador lexico de pascal en ruby#
#141031 #
#Noel Jr Aguilar Aguilar#
P_Reservadas_Especiales =[
'ARRAY',#Arreglo 
'BEGIN', #inicio del programa
'END', #Fin del programa
'PROGRAM',#principal
'VAR',
'WRITE',
'WRITELN',
'PUNTOCOMA',
'COMA',
'COMDOB',
'MAYORDER', 
'MAYORIZQ'  
] 

palabras_Reservadas_Condicion = [
  #Condicionales
  'IF',
  'THEN',
  'ELSE',
  'END'
]

palabras_Reservadas_OpLogico=[
  'XOR',
  'NOT',
  'AND',
  'OR'
]
#Inicio del programa
print "Ingrese :"
STDOUT.flush  
lexemasis = gets.chomp 

a=0
 
words_str = lexemasis.upcase
words_arr = words_str.split(' ')
pp words_arr  

resp=words_arr.length

puts 'Tamaño  es de ' + resp.to_s 

words_arr.each do |palabras|

   
    if P_Reservadas_Especiales.include? palabras 
      print "Palabra Reservada Identificador"
      print"["+ palabras +"]"
      puts""
    else
      x=false
    end

    if palabras_Reservadas_Condicion.include? palabras 
      print "Palabra Reservada Tipo condicional"
      print"["+ palabras +"]"
      puts""
    else
      y=false
    end

    if palabras_Reservadas_OpLogico.include? palabras 
      print "Palabra Reservada Tipo Logico"
      print"["+ palabras +"]"
      puts""
    else
      w=false
    end   
      

    if palabras. include? "+"

            puts'Token encontrado Simbolo suma [+]'
            a = a+1
    end

    if palabras. include? "-"

            puts'Token encontrado Resta  [-]'
            a = a+1
    end

    if palabras. include? "*"

            puts'Token encontrado Multiplicar [*]'
            a = a+1
    end
    if palabras. include? "/"

            puts'Token encontrado Dividir [/]'
            a = a+1
    end
    if palabras. include? " := "

            puts'Token encontrado ASIGNAR [:=]'
            a = a+1
    end

      if palabras. include? " ; "

            puts'Token encontrado PUNTO Y COMA [;]'
            a = a+1
    end

      if palabras. include? "("

            puts'Token encontrado PARENTESIS IZQ [(]'
            a = a+1
    end

     if palabras. include? ")"

            puts'Token encontrado PARENTESIS DERECHO [)]'
            a = a+1
    end

    if palabras. include? "["

            puts'Token encontrado CORCHETE IZQ [[]'
            a = a+1
    end

     if palabras. include? "]"

            puts'Token encontrado CORCHETE DERECHO []]'
            a = a+1
    end
    if palabras. include? "(*"

            puts'Token encontrado INICIO COMENTARIO  [(*]'
            a = a+1
    end
     if palabras. include? "*)"

            puts'Token encontrado FIN COMENTARIO  [*)]'
            a = a+1
    end

     if palabras. include? "="

            puts'Token encontrado IGUAL  [=]'
            a = a+1
    end

    if palabras =~ /[0-9]/ then
            puts " Tokens Numero en sintaxis"+ palabras
            a = a+1
    end
 
 end 