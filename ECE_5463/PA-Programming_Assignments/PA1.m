clc
clear

 % Requesting values from user
req_j = "Enter number of joints: ";
req_m = "Enter number of freedoms: ";
req_n = "Enter numner of links: ";

 %Determining if values are valid
%j = input(req_j);
j = 4;
while j <= 0
   fprintf("Invalid value for number of joints. Please try again\n")
   %j = input(req_j);
end

%m = input(req_m);
m = 6;
while (m ~= 3) && (m ~=6)
    fprintf("Invalid value for number of freedoms. Please try again\n")
    %m = input(req_m);   
end

%n = input(req_n);
n = 5;
while n <= j
    fprintf("Invalid value for number of links. Please try again\n")
    %n = input(req_n);
end

 %Deriving information from user input
 if m == 3
     type = "planer";
     f = n;
 else
     type = "spacial";
     req_s = "Enter number of spherical joints: ";
     %s = input(req_s);
     s = 1;
     f = (((n - s) * 2) + (3 * s));
 end
 
 dof = ((m * (n - 1 -j)) + f);
 
  % Doing final print statement
 fprintf("The total degrees of freedom of the ")
 fprintf(type)
 fprintf(" robot is ")
 fprintf(string(dof))
