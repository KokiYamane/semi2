classdef Affine < handle
  properties
    weights;
    bias;
  end
  
  methods
    function obj = Affine(w,b)
      obj.weights = w;
      obj.bias = b;
    end
    
    function y = forward(obj, x)
      p = obj.weights * x;
      y = p + obj.bias;
    end
  end
end