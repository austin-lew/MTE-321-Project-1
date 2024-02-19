%% Animate the motion of the mechanism 
%%initial parameter: unit: cm, degree, rad/sec
r2 = 5; % cm
r3 = 16;
r6 = 8;

close all
inp_theta2 = 0:1:720; % two rotations from 0 to 360 with step 1: [0,1,2,3,4....360]

for i = 1:length(inp_theta2)
    % Loop-1

    % Define angles and displacements for loop1 
    theta_2 = i; 
    theta_4 = asind((r2*sind(theta_2)/r3)) + 180;
       
    % Loop-1 (o2 is origin)
    % Plot Links
    X1 = [0;
         r2*cosd(theta_2);
         r2*cosd(theta_2)+r3*cosd(theta_4)];
    Y1 = [0;
         r2*sind(theta_2);
         r2*sind(theta_2)+r3*sind(theta_4)];
    
    plot(X1, Y1);
    hold on
    plot(r2*cosd(theta_2)+r3*cosd(theta_4),r2*sind(theta_2)+r3*sind(theta_4), 'o')
    hold on;
    
    % Loop-2 
    theta_6 = 180-asind((r2*sind(theta_2-theta_4)-15*sind(theta_4)+4*cosd(theta_4))/r6) + theta_4;

    X2 = [-15;
          -15+r6*cosd(theta_6)];
    Y2 = [-4; 
          -4+r6*sind(theta_6)];

    plot(X2, Y2);
    plot(-15+r6*cosd(theta_6),-4+r6*sind(theta_6),'o')
    axis([-23 7 -15 15])
    hold off
    title("Shaper Mechanism")
    xlabel("x (cm)")
    ylabel("y (cm)")

 
    pause(0.001);
end 
