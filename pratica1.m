pkg load control


num = [1];
den = [1 0.4 1];
G = tf(num, den)


t = 0:0.1:20;
u = ones(size(t));
[y, t_out] = lsim(G, u, t);
figure;
plot(t_out, u, "r--", "LineWidth", 1.5); hold on;
plot(t_out, y, "b", "LineWidth", 2);
legend("Entrada (Degrau)", "Saída");
xlabel("Tempo (s)");
ylabel("Amplitude");
title("Resposta ao Degrau com lsim");
grid on;
t = 0:0.1:20;
u = t;
[y, t_out] = lsim(G, u, t);


figure;
plot(t_out, u, "r--", "LineWidth", 1.5); hold on;
plot(t_out, y, "b", "LineWidth", 2);
legend("Entrada (Rampa)", "Saída");
xlabel("Tempo (s)");
ylabel("Amplitude");
title("Resposta à Rampa");
grid on;
t = 0:0.01:20;
u = sin(t);
[y, t_out] = lsim(G, u, t);


figure;
plot(t_out, u, "r--", "LineWidth", 1.5); hold on;
plot(t_out, y, "b", "LineWidth", 2);
legend("Entrada (Senoide)", "Saída");
xlabel("Tempo (s)");
ylabel("Amplitude");
title("Resposta à Senoide");
grid on;
