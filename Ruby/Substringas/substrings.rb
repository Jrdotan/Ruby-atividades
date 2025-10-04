def substrings palavra, hash

 new_word = palavra.split(" ")
 hash_count = {}

 new_word.each do |val| 
    
  hash.each do |chave, valor|
    if chave == val
      unless hash_count.key?(chave)
        hash_count[chave] = 0
      
      end
     hash_count[chave] = hash_count[chave] + 1
    end
  end
 end
  puts hash_count
end
 

dicio = {"pessoa"=> 1, "lugares"=> 2, "vai"=> 4, "familia"=> 5, "hoje"=>6}

substrings("a familia vai vir a escola hoje, não amanhã mas sim hoje. tu vai vir? a familia vai te esperar hoje de braços abertos!", dicio)
