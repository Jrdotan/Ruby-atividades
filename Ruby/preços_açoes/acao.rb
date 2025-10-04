def acao_investimento dia_acao
  #Definição de variavéis
  new_vetor = []
  vetor_temp_compra = dia_acao
  vetor_temp_venda = dia_acao
  min_value = []
  max_value = []
 
  #Se o valor minimo é detectado, a variavél armazena o índice
  if vetor_temp_compra.min
     min_value = vetor_temp_compra.index(vetor_temp_compra.min)
  end

   if vetor_temp_compra.max
     max_value = vetor_temp_compra.index(vetor_temp_compra.max)
   end

  #Bloco de código que passa todos os indices pra valor de compra e venda e define o indice com o menor e maior
  dia_acao.each_with_index do |valor, index|
   if vetor_temp_compra.min
    
    new_vetor[0] = min_value + 1
   end
  end
 dia_acao.each_with_index do |valor, index|
  
  if vetor_temp_venda.max
    new_vetor[1] = max_value + 1
  end

 end
 p new_vetor
end

#dias válidos começam em 1 e terminam em 30 (dependendo do vetor), então 0 é incrementado para ser o dia 1
dia_acao = [1, 12, 13, 14, 15, 6, 7, 8, 9]

acao_investimento dia_acao

