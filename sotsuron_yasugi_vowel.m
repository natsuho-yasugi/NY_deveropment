point_test1_vowel_cd20 = 684;
point_test1_vowel_cd10 = 683;
point_test1_vowel_cd5 = 685;
point_test1_vowel_cd2 = 661;
point_test1_vowel_dc2 = 624;
point_test1_vowel_dc5 = 652;
point_test1_vowel_dc10 = 650;
point_test1_vowel_dc20 = 617;

point_test2_vowel_cd20 = 788;
point_test2_vowel_cd10 = 786;
point_test2_vowel_cd5 = 771;
point_test2_vowel_cd2 = 759;
point_test2_vowel_dc2 = 683;
point_test2_vowel_dc5 = 712;
point_test2_vowel_dc10 = 695;
point_test2_vowel_dc20 = 653;


accuracy_test1_vowel_cd20 = (point_test1_vowel_cd20/(31*2*20))*100;
accuracy_test1_vowel_cd10 = (point_test1_vowel_cd10/(31*2*20))*100;
accuracy_test1_vowel_cd5 = (point_test1_vowel_cd5/(31*2*20))*100;
accuracy_test1_vowel_cd2 = (point_test1_vowel_cd2/(31*2*20))*100;
accuracy_test1_vowel_dc2 = (point_test1_vowel_dc2/(31*2*20))*100;
accuracy_test1_vowel_dc5 = (point_test1_vowel_dc5/(31*2*20))*100;
accuracy_test1_vowel_dc10 = (point_test1_vowel_dc10/(31*2*20))*100;
accuracy_test1_vowel_dc20 = (point_test1_vowel_dc20/(31*2*20))*100;

accuracy_test2_vowel_cd20 = (point_test2_vowel_cd20/(31*2*20))*100;
accuracy_test2_vowel_cd10 = (point_test2_vowel_cd10/(31*2*20))*100;
accuracy_test2_vowel_cd5 = (point_test2_vowel_cd5/(31*2*20))*100;
accuracy_test2_vowel_cd2 = (point_test2_vowel_cd2/(31*2*20))*100;
accuracy_test2_vowel_dc2 = (point_test2_vowel_dc2/(31*2*20))*100;
accuracy_test2_vowel_dc5 = (point_test2_vowel_dc5/(31*2*20))*100;
accuracy_test2_vowel_dc10 = (point_test2_vowel_dc10/(31*2*20))*100;
accuracy_test2_vowel_dc20 = (point_test2_vowel_dc20/(31*2*20))*100;

%% グラフ化
%下に続く
space_test1 = 0.5;
space_test2 = 1;
x = [1,1;2,2;3,3;4,4;5,5;6,6;7,7;8,8;];
accuracy_vowel = [accuracy_test1_vowel_cd20 accuracy_test2_vowel_cd20 ; accuracy_test1_vowel_cd10 accuracy_test2_vowel_cd10 ; accuracy_test1_vowel_cd5 accuracy_test2_vowel_cd5 ; accuracy_test1_vowel_cd2 accuracy_test2_vowel_cd2 ; accuracy_test1_vowel_dc2 accuracy_test2_vowel_dc2 ; accuracy_test1_vowel_dc5 accuracy_test2_vowel_dc5 ; accuracy_test1_vowel_dc10 accuracy_test2_vowel_dc10 ; accuracy_test1_vowel_dc20 accuracy_test2_vowel_dc20 ];

%% 書き出し
%定義


%標準誤差error bar
SE_CC_DD2 = 0.730807052;
SE_DD_CC2 = 1.325062064;
SE_CC_DD5 = 1.560828053;
SE_DD_CC5 = 1.212652595;
SE_CC_DD10 = 1.489038899;
SE_DD_CC10 = 1.143632256;
SE_CC_DD20 = 1.221733023;
SE_DD_CC20 = 1.188264989;
SE = (horzcat(SE_CC_DD2,SE_CC_DD5,SE_CC_DD10,SE_CC_DD20,SE_DD_CC2,SE_DD_CC5,SE_DD_CC10,SE_DD_CC20)).';

SE1_CC_DD2 = 0.963750896;
SE1_DD_CC2 = 1.124546692;
SE1_CC_DD5 = 1.27212007;
SE1_DD_CC5 = 1.037202716;
SE1_CC_DD10 = 0.885853736;
SE1_DD_CC10 = 1.048495162;
SE1_CC_DD20 = 1.974042073;
SE1_DD_CC20 = 1.536015008;
SE1 = (horzcat(SE1_CC_DD2,SE1_CC_DD5,SE1_CC_DD10,SE1_CC_DD20,SE1_DD_CC2,SE1_DD_CC5,SE_DD_CC10,SE1_DD_CC20)).';

figure;
b = bar(x,accuracy_vowel,1.0);
%b(1).FaceColor = [.60 .20 .80];%pre青
%b(2).FaceColor = [1 .50 .31];%post赤

%b(1).FaceColor = [.55 0 .55];%pre青
%b(2).FaceColor = [1 .50 .31];%post赤

b(1).FaceColor = [.60 .20 .80];%pre青
b(2).FaceColor = [1 .54 0];%post赤

hold on
x_test1 = [0.85,1.85,2.85,3.85,4.85,5.85,6.85,7.85];
x_test2 = [1.14,2.14,3.14,4.14,5.14,6.14,7.14,8.14];


er = errorbar(x_test1,accuracy_vowel(:,1),SE(:,1),'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
er1 = errorbar(x_test2,accuracy_vowel(:,2),SE1(:,1),'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
hold off


% 軸の設定
%xticklabels({'Test1','Test2','Test1','Test2','Test1','Test2','Test1','Test2'});
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
%xticklabels({'-5s','-2s','FF_CD','FF_DC','+2s','+5s'});

ylim([0 70]);
yticks(0:10:70);
% 軸のサイズや太さの変更
set(gca,'FontSize',13,'FontName','Arial');
legend('Pre-test','Post-test','FontName','Arial');

% ラベルの設定
ylabel('Accuracy (%)','FontSize',20);
xlabel('Time (s)','FontSize',20);
% 太字にするなら'FontWeight'
%xlabel('x','FontSize',20,'FontWeight','bold');

box off 

%%
accuracy_change_a = (accuracy_test2_vowel_cd20 - accuracy_test1_vowel_cd20);
accuracy_change_b = (accuracy_test2_vowel_cd10 - accuracy_test1_vowel_cd10);
accuracy_change_c = (accuracy_test2_vowel_cd5 - accuracy_test1_vowel_cd5);
accuracy_change_d = (accuracy_test2_vowel_cd2 - accuracy_test1_vowel_cd2);
accuracy_change_e = (accuracy_test2_vowel_dc2 - accuracy_test1_vowel_dc2);
accuracy_change_f = (accuracy_test2_vowel_dc5 - accuracy_test1_vowel_dc5);
accuracy_change_g = (accuracy_test2_vowel_dc10 - accuracy_test1_vowel_dc10);
accuracy_change_h = (accuracy_test2_vowel_dc20 - accuracy_test1_vowel_dc20);


%標準誤差を求める
sabun_a = 104;
sabun_b = 103;
sabun_c = 86;
sabun_d = 98;
sabun_e = 59;
sabun_f = 60;
sabun_g = 45;
sabun_h = 36;




%標準誤差error bar
SE_a = 2.683281573;
SE_b = -0.447213595;
SE_c = 3.130495168;
SE_d = 2.459674775;
SE_e = 0.894427191;
SE_f = 2.459674775;
SE_g = 2.459674775;
SE_h = 3.130495168;
SEC = (horzcat(SE_a,SE_b,SE_c,SE_d,SE_e,SE_f,SE_g,SE_h)).';



x = [1;2;3;4;5;6;7;8;];
accuracy_change_vowel = [accuracy_change_a;accuracy_change_b;accuracy_change_c;accuracy_change_d;accuracy_change_e;accuracy_change_f;accuracy_change_g;accuracy_change_h;];


figure;
%b = bar(x,accuracy_change,1.0,'FaceColor',[.94 .90 .55]);
 b = bar(x,accuracy_change_vowel,1.0,'FaceColor',[1 .98 .80]);
hold on
erc = errorbar(x,accuracy_change_vowel,SEC,'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
hold off
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
ylim([0 10]);
yticks(0:5:10);
%軸のサイズや太さの変更
set(gca,'FontSize',13,'FontName','Arial');
%legend('Pre-test','Post-test','FontName','Arial');

% ラベルの設定
ylabel('Accuracy change (%)','FontSize',20);
xlabel('Time (s)','FontSize',20);
% 太字にするなら'FontWeight'
%xlabel('x','FontSize',20,'FontWeight','bold');

box off 