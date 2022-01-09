clear all;close all;clc;
x_real_element = [1, 2, 3, 4, 5];
x_real_part1 = repmat(x_real_element,1,12);
x_real = [x_real_part1 1 2 3 4];
x_imag_element = [1j 2j];
x_imag = repmat(x_imag_element,1,32);
x = x_real + x_imag;
step_element = [1+4j 2+3j 3+2j 4+1j];
step    = repmat(step_element,1,16);
x2 = zeros(6,64);
x2(1,:) = x;
for i =1:5
    if i==1
        x2(1+1,:) = x + step;
    else
        x2(i+1,:) = x2(i,:) + step;
    end
end
%% fft
fft1 = zeros(1,64);
fft1(1,:) = fft(x2(1,:));
fft1_all = zeros(2,64);
for i =1
    fft1_all(2*i-1,:) = real(fft1(i,:));
    fft1_all(2*i,:) = imag(fft1(i,:));
end