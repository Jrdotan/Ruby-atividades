def caesar_cipher(palavra, chave = 3)
  abc = %w[a b c d e f g h i j k l m n o p q r s t u v
           x y z]
  char_string = palavra.downcase.split('')
  new_string = []
  

 /Lê a Array da palavra inserida um por um em cada indice/
  char_string.each_with_index.map do |value, index|
    
     /Pra cada letra lida, ela é comparada com o index do alfabeto/
    abc.each_with_index.map do |val, ind|
      /se o valor do indice do alfabeto bater com o valor da palavra, incrementar a string/ 
      next unless value == val

      new_idx = ind + chave
       
      new_string.push(abc[new_idx])
    end
  end
        /Transformar em string novamente/
  puts new_string.join

end

caesar_cipher('Darlan Junior', 4)












