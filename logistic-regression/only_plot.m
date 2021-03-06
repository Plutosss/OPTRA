clear
load final-result.mat
%% plot figures %%%%
figure
font_size = 16;
subplot(1,3,1)
fmean = semilogy(NEXT_counter(1,:), NEXT_err(:,1), EXTRA_counter(1,:), EXTRA_err(:,1),...
    Acc_DNGD_NSC_counter(1,:), Acc_DNGD_NSC_err(:,1),...
    APM_C_counter(1,:), APM_C_err(:,1), DPSGD_counter(1,:), DPSGD_err(:,1), ...
    OptPrimalDual_counter(1,:), OptPrimalDual_err(:,1));
hold on
set(fmean, 'linewidth', 2);
xlabel({'total cost'}, 'FontSize', font_size)
ylabel({'Bregman distance optimality gap'}, 'FontSize', font_size)
legend({'NEXT/DIGing', 'EXTRA', 'Acc-DNGD-NSC', 'APM-C', 'DPSGD', 'Our method'}, 'FontSize', font_size)
xlim([0 NEXT_counter(1,end)])
set(gca,'FontSize', font_size)

subplot(1,3,2)
fmean = semilogy(NEXT_counter(2,:), NEXT_err(:,1), EXTRA_counter(2,:), EXTRA_err(:,1),...
    Acc_DNGD_NSC_counter(2,:), Acc_DNGD_NSC_err(:,1),...
    APM_C_counter(2,:), APM_C_err(:,1), DPSGD_counter(2,:), DPSGD_err(:,1), ...
    OptPrimalDual_counter(2,:), OptPrimalDual_err(:,1));
hold on
set(fmean, 'linewidth', 2);
xlabel({'communication cost'}, 'FontSize', font_size)
% ylabel({'Bregman distance optimality gap'}, 'FontSize',20)
legend({'NEXT/DIGing', 'EXTRA', 'Acc-DNGD-NSC', 'APM-C', 'DPSGD', 'Our method'}, 'FontSize', font_size)
xlim([0 NEXT_counter(2,end)])
set(gca,'FontSize', font_size)

subplot(1,3,3)
fmean = semilogy(NEXT_counter(3,:), NEXT_err(:,1), EXTRA_counter(3,:), EXTRA_err(:,1),...
    Acc_DNGD_NSC_counter(3,:), Acc_DNGD_NSC_err(:,1),...
    APM_C_counter(3,:), APM_C_err(:,1), DPSGD_counter(3,:), DPSGD_err(:,1), ...
    OptPrimalDual_counter(3,:), OptPrimalDual_err(:,1));
hold on
% semilogy(OPTRA_counter(3,:), upperbound, 'ro');
set(fmean, 'linewidth', 2);
xlabel({'computation cost'}, 'FontSize', font_size)
% ylabel({'Bregman distance optimality gap'}, 'FontSize',20)
legend({'NEXT/DIGing', 'EXTRA', 'Acc-DNGD-NSC', 'APM-C', 'DPSGD', 'Our method'}, 'FontSize', font_size)
xlim([0 NEXT_counter(3,end)])
set(gca,'FontSize', font_size)


figure
subplot(1,3,1)
fmean = semilogy(NEXT_counter(1,:), NEXT_err(:,2), EXTRA_counter(1,:), EXTRA_err(:,2),...
    Acc_DNGD_NSC_counter(1,:), Acc_DNGD_NSC_err(:,2),...
    APM_C_counter(1,:), APM_C_err(:,2), DPSGD_counter(1,:), DPSGD_err(:,2), ...
    OptPrimalDual_counter(1,:), OptPrimalDual_err(:,2));
hold on
set(fmean, 'linewidth', 2);
xlabel({'total cost'}, 'FontSize', font_size)
ylabel({'function value optimality gap'}, 'FontSize', font_size)
legend({'NEXT/DIGing', 'EXTRA', 'Acc-DNGD-NSC', 'APM-C', 'DPSGD', 'Our method'}, 'FontSize', font_size)
xlim([0 NEXT_counter(1,end)])
set(gca,'FontSize', font_size)

subplot(1,3,2)
fmean = semilogy(NEXT_counter(2,:), NEXT_err(:,2), EXTRA_counter(2,:), EXTRA_err(:,2),...
    Acc_DNGD_NSC_counter(2,:), Acc_DNGD_NSC_err(:,2),...
    APM_C_counter(2,:), APM_C_err(:,2), DPSGD_counter(2,:), DPSGD_err(:,2), ...
    OptPrimalDual_counter(2,:), OptPrimalDual_err(:,2));
hold on
set(fmean, 'linewidth', 2);
xlabel({'communication cost'}, 'FontSize', font_size)
% ylabel({'function value optimality gap'}, 'FontSize',20)
legend({'NEXT/DIGing', 'EXTRA', 'Acc-DNGD-NSC', 'APM-C', 'DPSGD', 'Our method'}, 'FontSize', font_size)
xlim([0 NEXT_counter(2,end)])
set(gca,'FontSize', font_size)

subplot(1,3,3)
fmean = semilogy(NEXT_counter(3,:), NEXT_err(:,2), EXTRA_counter(3,:), EXTRA_err(:,2),...
    Acc_DNGD_NSC_counter(3,:), Acc_DNGD_NSC_err(:,2),...
    APM_C_counter(3,:), APM_C_err(:,2), DPSGD_counter(3,:), DPSGD_err(:,2), ...
    OptPrimalDual_counter(3,:), OptPrimalDual_err(:,2));
hold on
set(fmean, 'linewidth', 2);
xlabel({'computation cost'}, 'FontSize', font_size)
% ylabel({'function value optimality gap'}, 'FontSize',20)
legend({'NEXT/DIGing', 'EXTRA', 'Acc-DNGD-NSC', 'APM-C', 'DPSGD', 'Our method'}, 'FontSize', font_size)
xlim([0 NEXT_counter(3,end)])
set(gca,'FontSize', font_size)