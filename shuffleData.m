function data = shuffleData(data)

m  = size(data,1);
indices = randperm(m);
data = data(indices, :);