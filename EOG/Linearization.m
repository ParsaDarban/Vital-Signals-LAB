%cls
clear
close all

%%
Angle = [-70 , -58 , -27 , 0 , 27 , 58 , 70];

Voltage_Amp_s1 = [0.650 , 0.330 , -0.077 , -0.400 , -0.697 , -1.143 , -1.327];
Voltage_Amp_s2 = [-0.178 , -0.248 , -0.450 , -0.836 , -1.016 , -1.158 , -1.168];
NO_Voltage_Amp_s1 = Voltage_Amp_s1 + abs(Voltage_Amp_s1(4));
NO_Voltage_Amp_s2 = Voltage_Amp_s2 + abs(Voltage_Amp_s2(4));

plot(Angle , NO_Voltage_Amp_s1)
hold on
plot(Angle , NO_Voltage_Amp_s2)
title('linear fit model')
xlabel('Angle(degree)')
ylabel('Voltage(mv)')
legend ('subject1' , 'subject2')
grid on