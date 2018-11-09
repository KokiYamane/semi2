classdef Sigmoid < handle
  methods
    function y = forward(obj, x)
      y = 1 ./ (1 + exp(-x));
    end
  end
end