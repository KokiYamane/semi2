function y = sigmoid_neuron(x,w,h)
  p = w*x;
  y = y = 1 ./ (1 + exp(-p-h));
end