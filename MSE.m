classdef MSE < handle
  methods
    function loss = forward(obj, z, t)
      [row, col] = size(z);
      loss = sum(sum((z-t).^2)) / (2*col);
    end
  end
end