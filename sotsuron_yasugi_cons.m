point_test1_cons_cd20 = 264;
point_test1_cons_cd10 = 200;
point_test1_cons_cd5 = 226;
point_test1_cons_cd2 = 190;
point_test1_cons_dc2 = 239;
point_test1_cons_dc5 = 221;
point_test1_cons_dc10 = 198;
point_test1_cons_dc20 = 218;

point_test2_cons_cd20 = 327;
point_test2_cons_cd10 = 297;
point_test2_cons_cd5 = 336;
point_test2_cons_cd2 = 297;
point_test2_cons_dc2 = 303;
point_test2_cons_dc5 = 248;
point_test2_cons_dc10 = 245;
point_test2_cons_dc20 = 250;



accuracy_test1_cons_cd20 = (point_test1_cons_cd20/(31*2*20))*100;
accuracy_test1_cons_cd10 = (point_test1_cons_cd10/(31*2*20))*100;
accuracy_test1_cons_cd5 = (point_test1_cons_cd5/(31*2*20))*100;
accuracy_test1_cons_cd2 = (point_test1_cons_cd2/(31*2*20))*100;
accuracy_test1_cons_dc2 = (point_test1_cons_dc2/(31*2*20))*100;
accuracy_test1_cons_dc5 = (point_test1_cons_dc5/(31*2*20))*100;
accuracy_test1_cons_dc10 = (point_test1_cons_dc10/(31*2*20))*100;
accuracy_test1_cons_dc20 = (point_test1_cons_dc20/(31*2*20))*100;

accuracy_test2_cons_cd20 = (point_test2_cons_cd20/(31*2*20))*100;
accuracy_test2_cons_cd10 = (point_test2_cons_cd10/(31*2*20))*100;
accuracy_test2_cons_cd5 = (point_test2_cons_cd5/(31*2*20))*100;
accuracy_test2_cons_cd2 = (point_test2_cons_cd2/(31*2*20))*100;
accuracy_test2_cons_dc2 = (point_test2_cons_dc2/(31*2*20))*100;
accuracy_test2_cons_dc5 = (point_test2_cons_dc5/(31*2*20))*100;
accuracy_test2_cons_dc10 = (point_test2_cons_dc10/(31*2*20))*100;
accuracy_test2_cons_dc20 = (point_test2_cons_dc20/(31*2*20))*100;


%% グラフ化
%下に続く
space_test1 = 0.5;
space_test2 = 1;
x = [1,1;2,2;3,3;4,4;5,5;6,6;7,7;8,8;];
accuracy_cons = [accuracy_test1_cons_cd20 accuracy_test2_cons_cd20 ; accuracy_test1_cons_cd10 accuracy_test2_cons_cd10 ; accuracy_test1_cons_cd5 accuracy_test2_cons_cd5 ; accuracy_test1_cons_cd2 accuracy_test2_cons_cd2 ; accuracy_test1_cons_dc2 accuracy_test2_cons_dc2 ; accuracy_test1_cons_dc5 accuracy_test2_cons_dc5 ; accuracy_test1_cons_dc10 accuracy_test2_cons_dc10 ; accuracy_test1_cons_dc20 accuracy_test2_cons_dc20 ];

%% 書き出し
%定義



%標準誤差error bar
SE_CC_DD2 = 0.789736798;
SE_DD_CC2 = 0.782959971;
SE_CC_DD5 = 0.707478845;
SE_DD_CC5 = 0.907498006;
SE_CC_DD10 = 0.97872097;
SE_DD_CC10 = 0.820462001;
SE_CC_DD20 = 0.980332919;
SE_DD_CC20 = 0.784387122;
SE = (horzcat(SE_CC_DD2,SE_CC_DD5,SE_CC_DD10,SE_CC_DD20,SE_DD_CC2,SE_DD_CC5,SE_DD_CC10,SE_DD_CC20)).';

SE1_CC_DD2 = 0.987487508;
SE1_DD_CC2 = 0.83437654;
SE1_CC_DD5 = 0.9250889;
SE1_DD_CC5 = 1.062271647;
SE1_CC_DD10 = 0.871402379;
SE1_DD_CC10 = 0.879219151;
SE1_CC_DD20 = 1.22318609;
SE1_DD_CC20 = 1.330809014;
SE1 = (horzcat(SE1_CC_DD2,SE1_CC_DD5,SE1_CC_DD10,SE1_CC_DD20,SE1_DD_CC2,SE1_DD_CC5,SE_DD_CC10,SE1_DD_CC20)).';


figure;
b = bar(x,accuracy_cons,1.0);
%b(1).FaceColor = [.60 .20 .80];%pre青
%b(2).FaceColor = [1 .50 .31];%post赤

%b(1).FaceColor = [.55 0 .55];%pre青
%b(2).FaceColor = [1 .50 .31];%post赤

b(1).FaceColor = [.60 .20 .80];%pre青
b(2).FaceColor = [1 .54 0];%post赤

hold on
x_test1 = [0.85,1.85,2.85,3.85,4.85,5.85,6.85,7.85];
x_test2 = [1.14,2.14,3.14,4.14,5.14,6.14,7.14,8.14];


er = errorbar(x_test1,accuracy_cons(:,1),SE(:,1),'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
er1 = errorbar(x_test2,accuracy_cons(:,2),SE1(:,1),'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
hold off


% 軸の設定
%xticklabels({'Test1','Test2','Test1','Test2','Test1','Test2','Test1','Test2'});
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
%xticklabels({'-5s','-2s','FF_CD','FF_DC','+2s','+5s'});

ylim([0 30]);
yticks(0:10:30);
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
accuracy_change_A = (accuracy_test2_cons_cd20 - accuracy_test1_cons_cd20);
accuracy_change_B = (accuracy_test2_cons_cd10 - accuracy_test1_cons_cd10);
accuracy_change_C = (accuracy_test2_cons_cd5 - accuracy_test1_cons_cd5);
accuracy_change_D = (accuracy_test2_cons_cd2 - accuracy_test1_cons_cd2);
accuracy_change_E = (accuracy_test2_cons_dc2 - accuracy_test1_cons_dc2);
accuracy_change_F = (accuracy_test2_cons_dc5 - accuracy_test1_cons_dc5);
accuracy_change_G = (accuracy_test2_cons_dc10 - accuracy_test1_cons_dc10);
accuracy_change_H = (accuracy_test2_cons_dc20 - accuracy_test1_cons_dc20);


%標準誤差を求める
sabun_a = 63;
sabun_b = 97;
sabun_c = 110;
sabun_d = 107;
sabun_e = 64;
sabun_f = 27;
sabun_g = 47;
sabun_h = 32;



%標準誤差error bar
SE_a = 0.883399534;
SE_b = 0.898170655;
SE_c = 0.921954446;
SE_d = 1.084034861;
SE_e = 0.832244903;
SE_f = 1.312440475;
SE_g = 0.865341429;
SE_h = 1.069677768;
SEC = (horzcat(SE_a,SE_b,SE_c,SE_d,SE_e,SE_f,SE_g,SE_h)).';





x = [1;2;3;4;5;6;7;8;];
accuracy_change_cons = [accuracy_change_A;accuracy_change_B;accuracy_change_C;accuracy_change_D;accuracy_change_E;accuracy_change_F;accuracy_change_G;accuracy_change_H;];


figure;
%b = bar(x,accuracy_change,1.0,'FaceColor',[.94 .90 .55]);
 b = bar(x,accuracy_change_cons,1.0,'FaceColor',[1 .98 .80]);
hold on
erc = errorbar(x,accuracy_change_cons,SEC,'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
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