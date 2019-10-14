
function source = cal_source(a)
A0 = 1.75;
density_0 = 7.656E19;
temperature_0 = 27.246;
alpha_n = 0.5;
alpha_t = 2.0;
beta_t = 2.0;
density = density_0*(1-(a/A0)^2)^alpha_n;
temperature = temperature_0*(1-(a/A0)^beta_t)^alpha_t;
c1 = 2.5663271e-18;
c2 = 19.98326;
c3 = 2.5077133e-2;
c4 = 2.5773408e-3;
c5 = 6.1880463e-5;
c6 = 6.6024089e-2;
c7 = 8.1215505e-3;

u_var = 1. - temperature*(c3 + temperature *(c4-c5*temperature))/(1+temperature*(c6+c7*temperature));
reaction = c1*exp(-c2*(u_var/temperature)^(1/3))/((u_var)^(5./6.)*(temperature)^(2./3.));

source = density^2*reaction;

end
