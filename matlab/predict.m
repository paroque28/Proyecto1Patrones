function y=predict(W1,W2,X)
    
  # usage predict(W1,W2,X)
  # 
  # This function propagates the input X on the neural network to
  # predict the output vector y, given the weight matrices W1 and W2 for 
  # a two-layered artificial neural network.
  # 
  # W1: weights matrix between input and hidden layer
  # W2: weights matrix between the hidden and the output layer
  # X:  Input vector, extended at its end with a 1

  # De la formula (2) del enunciado
  if(columns(X)<3)
    X=[ones(rows(X),1),X];
  endif;
  p1=X*W1'; # p1 = W1*[1 X]'

  g1=1./(1+e.^-p1); #funcion de activacion capa de entrada y escondida
  activacion1=[ones(rows(g1),1),g1]; # Se agregan los unos

  p2=activacion1*W2'; # p2  = W2*[1 X]'
  y=1./(1+e.^-p2); # = g2 funcion de activacion capa de salida

endfunction;
