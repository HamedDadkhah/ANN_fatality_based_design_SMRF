function theta_c = predict_drift(H, SD1, SDS, Fr)

load('ANN_models.mat');

input = [H; SD1; SDS; Fr];
theta_c = drift(input);

end

