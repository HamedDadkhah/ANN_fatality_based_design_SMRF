function Fr = predict_fatality(H, SD1, SDS, theta_c)

load('ANN_models.mat');

input = [H; SD1; SDS; theta_c];
Fr = fatality(input);

end

