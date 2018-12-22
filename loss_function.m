function loss = loss_function(obj, z, t)
  obj.z = z;
  obj.t = t;
  [row, col] = size(z);
  loss = sum(sum((z-t).^2)) / (2*col);
end