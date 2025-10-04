def ord_flutuacao vetor
  
  #só progride quando o array estiver em sequência
  until ordenado?(vetor)
  temp = 0
  #
  vetor.each_with_index do |valor, index|
      next if index == 0
      if vetor[index - 1] > vetor[index]
        
        temp = vetor[index]
        
        vetor[index] = vetor[index - 1]
        vetor[index - 1] = temp
      end
    end
  end
  p vetor
end
 

#usa o operador de nave espacial (sim esse é o nome), pra garantir que esteja em sequência
def ordenado? vetor
   #se a for menor que b, ou seja, elemento anterior for menor que o posterior, passa pra próxima checagem até retornar true ou false
 vetor.each_cons(2).all? {|a, b| (a <=> b) == -1 }

end


vetor = [85, 2, 2015, -40, -0.7, 0]

ord_flutuacao vetor
