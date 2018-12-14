clear all

xdata = [0,0,0,0,1,1,1,1
         0,0,1,1,0,0,1,1
         0,1,0,1,0,1,0,1]
labels = [0,1,1,0,1,0,0,1]

IU = 3; % a number of input neurons
OU = 1; % a number of output neurons

% initialize weights and biases
% as random numbers between -1.0 and 1.0.
w = 2.0*rand(OU,IU) - 1.0;
b = 2.0*rand(OU,1) - 1.0;

layer1 = Affine(w,b);
layer2 = Sigmoid();
layer3 = MSE();

EPOCH=10000; % a number of training epochs
LAMBDA=0.3; % learning rate

for epoch=1:EPOCH
  p = layer1.forward(xdata);
  y = layer2.forward(p);
  loss(epoch) = layer3.forward(y,labels);

  %calculate gradient
  dy = layer3.backward();
  dp = layer2.backward(dy);
  dx = layer1.backward(dp);

  %learning weights and biases
  layer1.update(LAMBDA);
end

% result
% loss
p > 0


% Display loss change graph
figure(1);
plot(loss);
xlabel('Epoch');
ylabel('LOSS');
print -dpng "day3/exercise3_5.png";