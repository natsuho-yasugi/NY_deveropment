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
accuracy_cons = [accuracy_test1_cons_cd20 accuracy_test2_cons_cd20 ; accuracy_test1_cons_cd10 accuracy_test2_cons_cd10 ; accuracy_test1_cons_cd5 accuracy_test2_cons_cd5 ; accuracy_test1_cons_cd2 accuracy_test2_cons_cd2 ; accuracy_test1_cons_dc2 accuracy_test2_cons_dc2 ; accuracy_test1_cons_dc5 accuracy_test2_cons_dc5 ; accuracy_test1_cons_dc10 accuracy_test2_cons_dc10 ; accuracy_test1_cons_dc20 accuracy_test2_cons_dc20 ];
accuracy_vowel = [accuracy_test1_vowel_cd20 accuracy_test2_vowel_cd20 ; accuracy_test1_vowel_cd10 accuracy_test2_vowel_cd10 ; accuracy_test1_vowel_cd5 accuracy_test2_vowel_cd5 ; accuracy_test1_vowel_cd2 accuracy_test2_vowel_cd2 ; accuracy_test1_vowel_dc2 accuracy_test2_vowel_dc2 ; accuracy_test1_vowel_dc5 accuracy_test2_vowel_dc5 ; accuracy_test1_vowel_dc10 accuracy_test2_vowel_dc10 ; accuracy_test1_vowel_dc20 accuracy_test2_vowel_dc20 ];

%% 書き出し
%定義


%{
%標準誤差error bar
SE_CC_DD2 = (std(subject_test_CC_DD2_accuracy,0,2))/sqrt(length(File_quiz1));
SE_DD_CC2 = (std(subject_test_DD_CC2_accuracy,0,2))/sqrt(length(File_quiz3));
SE_CC_DD5 = (std(subject_test_CC_DD5_accuracy,0,2))/sqrt(length(File_quiz5));
SE_DD_CC5 = (std(subject_test_DD_CC5_accuracy,0,2))/sqrt(length(File_quiz7));
SE_CC_DD10 = (std(subject_test_CC_DD10_accuracy,0,2))/sqrt(length(File_quiz9));
SE_DD_CC10 = (std(subject_test_DD_CC10_accuracy,0,2))/sqrt(length(File_quiz11));
SE_CC_DD20 = (std(subject_test_CC_DD20_accuracy,0,2))/sqrt(length(File_quiz13));
SE_DD_CC20 = (std(subject_test_DD_CC20_accuracy,0,2))/sqrt(length(File_quiz15));
SE = (horzcat(SE_CC_DD2,SE_CC_DD5,SE_CC_DD10,SE_CC_DD20,SE_DD_CC2,SE_DD_CC5,SE_DD_CC10,SE_DD_CC20)).';
%}

figure;
b1 = bar(x,accuracy_cons,1.0);
b2 = bar(x,accuracy_vowel,1.0);
%b(1).FaceColor = [.60 .20 .80];%pre青
%b(2).FaceColor = [1 .50 .31];%post赤

%b(1).FaceColor = [.55 0 .55];%pre青
%b(2).FaceColor = [1 .50 .31];%post赤

b(1).FaceColor = [.60 .20 .80];%pre青
b(2).FaceColor = [1 .54 0];%post赤

hold on
x_test1 = [0.85,1.85,2.85,3.85,4.85,5.85,6.85,7.85];
x_test2 = [1.14,2.14,3.14,4.14,5.14,6.14,7.14,8.14];


%er = errorbar(x_test1,accuracy(:,1),SE(:,1),'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
%er1 = errorbar(x_test2,accuracy(:,2),SE(:,2),'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
hold off


% 軸の設定
%xticklabels({'Test1','Test2','Test1','Test2','Test1','Test2','Test1','Test2'});
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
%xticklabels({'-5s','-2s','FF_CD','FF_DC','+2s','+5s'});

ylim([0 60]);
yticks(0:10:60);
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

accuracy_change_a = (accuracy_test2_vowel_cd20 - accuracy_test1_vowel_cd20);
accuracy_change_b = (accuracy_test2_vowel_cd10 - accuracy_test1_vowel_cd10);
accuracy_change_c = (accuracy_test2_vowel_cd5 - accuracy_test1_vowel_cd5);
accuracy_change_d = (accuracy_test2_vowel_cd2 - accuracy_test1_vowel_cd2);
accuracy_change_e = (accuracy_test2_vowel_dc2 - accuracy_test1_vowel_dc2);
accuracy_change_f = (accuracy_test2_vowel_dc5 - accuracy_test1_vowel_dc5);
accuracy_change_g = (accuracy_test2_vowel_dc10 - accuracy_test1_vowel_dc10);
accuracy_change_h = (accuracy_test2_vowel_dc20 - accuracy_test1_vowel_dc20);

%{
%標準誤差を求める
sabun_a = subject_test14 - subject_test13;
sabun_b = subject_test10 - subject_test9;
sabun_c = subject_test6 - subject_test5;
sabun_d = subject_test2 - subject_test1;
sabun_e = subject_test4 - subject_test3;
sabun_f = subject_test8 - subject_test7;
sabun_g = subject_test12 - subject_test11;
sabun_h = subject_test16 - subject_test15;

for i = 1:length(sabun_a)
    sabun_a(i) = sabun_a(i)*(100/62);
end
for i = 1:length(sabun_b)
    sabun_b(i) = sabun_b(i)*(100/62);
end
for i = 1:length(sabun_c)
    sabun_c(i) = sabun_c(i)*(100/62);
end
for i = 1:length(sabun_d)
    sabun_d(i) = sabun_d(i)*(100/62);
end
for i = 1:length(sabun_e)
    sabun_e(i) = sabun_e(i)*(100/62);
end
for i = 1:length(sabun_f)
    sabun_f(i) = sabun_f(i)*(100/62);
end
for i = 1:length(sabun_g)
    sabun_g(i) = sabun_g(i)*(100/62);
end
for i = 1:length(sabun_h)
    sabun_h(i) = sabun_h(i)*(100/62);
end


%標準誤差error bar
SE_a = (std(sabun_a))/sqrt(length(sabun_a));
SE_b = (std(sabun_b))/sqrt(length(sabun_b));
SE_c = (std(sabun_c))/sqrt(length(sabun_c));
SE_d = (std(sabun_d))/sqrt(length(sabun_d));
SE_e = (std(sabun_e))/sqrt(length(sabun_e));
SE_f = (std(sabun_f))/sqrt(length(sabun_f));
SE_g = (std(sabun_g))/sqrt(length(sabun_g));
SE_h = (std(sabun_h))/sqrt(length(sabun_h));
SEC = (horzcat(SE_a,SE_b,SE_c,SE_d,SE_e,SE_f,SE_g,SE_h)).';

subject_cd2 = (subject_test2 - subject_test1)/0.62;
subject_dc2 = (subject_test4 - subject_test3)/0.62;
subject_cd5 = (subject_test6 - subject_test5)/0.62;
subject_dc5 = (subject_test8 - subject_test7)/0.62;
subject_cd10 = (subject_test10 - subject_test9)/0.62;
subject_dc10 = (subject_test12 - subject_test11)/0.62;
subject_cd20 = (subject_test14 - subject_test13)/0.62;
subject_dc20 = (subject_test16 - subject_test15)/0.62;

%}

x = [1;2;3;4;5;6;7;8;];
accuracy_change_cons = [accuracy_change_A;accuracy_change_B;accuracy_change_C;accuracy_change_D;accuracy_change_E;accuracy_change_F;accuracy_change_G;accuracy_change_H;];
accuracy_change_vowel = [accuracy_change_a;accuracy_change_b;accuracy_change_c;accuracy_change_d;accuracy_change_e;accuracy_change_f;accuracy_change_g;accuracy_change_h;];


figure;
%b = bar(x,accuracy_change,1.0,'FaceColor',[.94 .90 .55]);
 b3 = bar(x,accuracy_change_cons,1.0,'FaceColor',[1 .98 .80]);
 b4 = bar(x,accuracy_change_vowel,1.0,'FaceColor',[1 .98 .80]);
%hold on
%erc = errorbar(x,accuracy_change,SEC,'Color',[0 0 0], 'linestyle','none','LineWidth',0.5); 
%hold off
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