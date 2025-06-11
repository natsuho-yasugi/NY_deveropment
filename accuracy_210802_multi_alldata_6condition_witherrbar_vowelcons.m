%%子音と母音のグラフを作る解析プログラム

clear
clc
close all force

%% ファイルの読み込み

% Excelファイルの選択,test1
[File_quiz,Path_quiz]=uigetfile('*.xlsx','multiselect','on','子音と母音の解析結果Excelシートを選択','C:\Users\natsu\OneDrive - 同志社大学\デスクトップ\data\卒論');
File_quiz =append(Path_quiz, File_quiz);


% Excelファイルの読み込み
filename = char(File_quiz);
%test1の母音
test1_vowel = readcell(filename);
temp_test1_vowel = test1_vowel(2:21,2:9);  
%test1の子音
test1_cons = readcell(filename,'Sheet',2);
temp_test1_cons = test1_cons(2:21,2:9);  
%test2の母音
test2_vowel = readcell(filename,'Sheet',3);
temp_test2_vowel = test2_vowel(2:21,2:9);  
%test2の子音
test2_cons = readcell(filename,'Sheet',4);
temp_test2_cons = test2_cons(2:21,2:9);  
    
%cell2mat
temp_test1_vowel = cell2mat(temp_test1_vowel);
temp_test1_cons = cell2mat(temp_test1_cons);
temp_test2_vowel = cell2mat(temp_test2_vowel);
temp_test2_cons = cell2mat(temp_test2_cons);




%%%% 統計
%%%%% test1の検定
[p_test1_vowel,tbl_test1_vowel,stats_test1_vowel] = anova1(temp_test1_vowel);
multcompare(stats_test1_vowel,'CType','hsd')

[p_test1_cons,tbl_test1_cons,stats_test1_cons] = anova1(temp_test1_cons);
multcompare(stats_test1_cons,'CType','hsd')


%%%%% test2の検定
[p_test2_vowel,tbl_test2_vowel,stats_test2_vowel] = anova1(temp_test2_vowel);
multcompare(stats_test2_vowel,'CType','hsd')

[p_test2_cons,tbl_test2_cons,stats_test2_cons] = anova1(temp_test2_cons);
multcompare(stats_test2_cons,'CType','hsd')


%% プール
%%%%%%%%%%%%%%%%%%%%% test1_vowel
temp_test1_vowel_pool_CC_DD20 = temp_test1_vowel(:,1);
temp_test1_vowel_pool_CC_DD20(11:20) =nan;

temp_test1_vowel_pool_CC_DD10 = temp_test1_vowel(:,2);
temp_test1_vowel_pool_CC_DD10(11:20) =nan;

temp_test1_vowel_pool_CC_DD5 = temp_test1_vowel(:,3);
temp_test1_vowel_pool_CC_DD5(11:20) =nan;

temp_test1_vowel_pool_CC_DD2 = temp_test1_vowel(:,4);
temp_test1_vowel_pool_CC_DD2(11:20) =nan;


temp_test1_vowel_pool_DD_CC2 = temp_test1_vowel(:,5);
temp_test1_vowel_pool_DD_CC2(11:20) =nan;

temp_test1_vowel_pool_DD_CC5 = temp_test1_vowel(:,6);
temp_test1_vowel_pool_DD_CC5(11:20) =nan;

temp_test1_vowel_pool_DD_CC10 = temp_test1_vowel(:,7);
temp_test1_vowel_pool_DD_CC10(11:20) =nan;

temp_test1_vowel_pool_DD_CC20 = temp_test1_vowel(:,8);
temp_test1_vowel_pool_DD_CC20(11:20) =nan;

temp_test1_vowel_pool = horzcat(temp_test1_vowel_pool_CC_DD20,temp_test1_vowel_pool_CC_DD10,temp_test1_vowel_pool_CC_DD5,temp_test1_vowel_pool_CC_DD2,temp_test1_vowel_pool_DD_CC2,temp_test1_vowel_pool_DD_CC5,temp_test1_vowel_pool_DD_CC10,temp_test1_vowel_pool_DD_CC20);

%test1_vowelの調音法
figure;
%%%% whisker算出
q3 = norminv(.75);
q90 = norminv(0.90);
w90 = (q90-q3)/(2*q3);

boxplot(temp_test1_vowel_pool,'whisker',w90,'colors','k');
% 軸の設定
xticks(1:1:8);
xlim([0 6]);
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
ylim([0 50]);
yticks(0:10:50);
% 軸のサイズや太さの変更
set(gca,'FontSize',13);
% ラベルの設定
title('Pre vowel')
xlabel('Time (s)','FontSize',15);
box off
ylabel('Accuracy (%)','FontSize',20);
box off




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test1_cons
temp_test1_cons_pool_CC_DD20 = temp_test1_cons(:,1);
temp_test1_cons_pool_CC_DD20(11:20) =nan;

temp_test1_cons_pool_CC_DD10 = temp_test1_cons(:,2);
temp_test1_cons_pool_CC_DD10(11:20) =nan;

temp_test1_cons_pool_CC_DD5 = temp_test1_cons(:,3);
temp_test1_cons_pool_CC_DD5(11:20) =nan;

temp_test1_cons_pool_CC_DD2 = temp_test1_cons(:,4);
temp_test1_cons_pool_CC_DD2(11:20) =nan;

temp_test1_cons_pool_DD_CC2 = temp_test1_cons(:,5);
temp_test1_cons_pool_DD_CC2(11:20) =nan;

temp_test1_cons_pool_DD_CC5 = temp_test1_cons(:,6);
temp_test1_cons_pool_DD_CC5(11:20) =nan;

temp_test1_cons_pool_DD_CC10 = temp_test1_cons(:,7);
temp_test1_cons_pool_DD_CC10(11:20) =nan;

temp_test1_cons_pool_DD_CC20 = temp_test1_cons(:,8);
temp_test1_cons_pool_DD_CC20(11:20) =nan;

temp_test1_cons_pool = horzcat(temp_test1_cons_pool_CC_DD20,temp_test1_cons_pool_CC_DD10,temp_test1_cons_pool_CC_DD5,temp_test1_cons_pool_CC_DD2,temp_test1_cons_pool_DD_CC2,temp_test1_cons_pool_DD_CC5,temp_test1_cons_pool_DD_CC10,temp_test1_cons_pool_DD_CC20);

%test1_consの調音法
figure;
%%%% whisker算出
q3 = norminv(.75);
q90 = norminv(0.90);
w90 = (q90-q3)/(2*q3);

boxplot(temp_test1_cons_pool,'whisker',w90,'colors','k');
% 軸の設定
xticks(1:1:8);
xlim([0 6]);
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
ylim([0 50]);
yticks(0:10:50);
% 軸のサイズや太さの変更
set(gca,'FontSize',13);
% ラベルの設定
title('Pre cons')
xlabel('Time (s)','FontSize',15);
box off
ylabel('Accuracy (%)','FontSize',20);
box off





%%%%%%%%%%%%%%%%%%%%% test2_vowel
temp_test2_vowel_pool_CC_DD20 = temp_test2_vowel(:,1);
temp_test2_vowel_pool_CC_DD20(11:20) =nan;

temp_test2_vowel_pool_CC_DD10 = temp_test2_vowel(:,2);
temp_test2_vowel_pool_CC_DD10(11:20) =nan;

temp_test2_vowel_pool_CC_DD5 = temp_test2_vowel(:,3);
temp_test2_vowel_pool_CC_DD5(11:20) =nan;

temp_test2_vowel_pool_CC_DD2 = temp_test2_vowel(:,4);
temp_test2_vowel_pool_CC_DD2(11:20) =nan;

temp_test2_vowel_pool_DD_CC2 = temp_test2_vowel(:,5);
temp_test2_vowel_pool_DD_CC2(11:20) =nan;

temp_test2_vowel_pool_DD_CC5 = temp_test2_vowel(:,6);
temp_test2_vowel_pool_DD_CC5(11:20) =nan;

temp_test2_vowel_pool_DD_CC10 = temp_test2_vowel(:,7);
temp_test2_vowel_pool_DD_CC10(11:20) =nan;

temp_test2_vowel_pool_DD_CC20 = temp_test2_vowel(:,8);
temp_test2_vowel_pool_DD_CC20(11:20) =nan;

temp_test2_vowel_pool = horzcat(temp_test2_vowel_pool_CC_DD20,temp_test2_vowel_pool_CC_DD10,temp_test2_vowel_pool_CC_DD5,temp_test2_vowel_pool_CC_DD2,temp_test2_vowel_pool_DD_CC2,temp_test2_vowel_pool_DD_CC5,temp_test2_vowel_pool_DD_CC10,temp_test2_vowel_pool_DD_CC20);


% test1の調音法
figure;
%%%% whisker算出
q3 = norminv(.75);
q90 = norminv(0.90);
w90 = (q90-q3)/(2*q3);

boxplot(temp_test2_vowel_pool,'whisker',w90,'colors','k');

% 軸の設定
xticks(1:1:8);
xlim([0 6]);
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
ylim([0 50]);
yticks(0:10:50);

% 軸のサイズや太さの変更
set(gca,'FontSize',13);
% ラベルの設定
title('Post vowel')
xlabel('Time (s)','FontSize',15);
box off
ylabel('Accuracy (%)','FontSize',20);
box off





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test2_cons
temp_test2_cons_pool_CC_DD20 = temp_test2_cons(:,1);
temp_test2_cons_pool_CC_DD20(11:20) =nan;

temp_test2_cons_pool_CC_DD10 = temp_test2_cons(:,2);
temp_test2_cons_pool_CC_DD10(11:20) =nan;

temp_test2_cons_pool_CC_DD5 = temp_test2_cons(:,3);
temp_test2_cons_pool_CC_DD5(11:20) =nan;

temp_test2_cons_pool_CC_DD2 = temp_test2_cons(:,4);
temp_test2_cons_pool_CC_DD2(11:20) =nan;

temp_test2_cons_pool_DD_CC2 = temp_test2_cons(:,5);
temp_test2_cons_pool_DD_CC2(11:20) =nan;

temp_test2_cons_pool_DD_CC5 = temp_test2_cons(:,6);
temp_test2_cons_pool_DD_CC5(11:20) =nan;

temp_test2_cons_pool_DD_CC10 = temp_test2_cons(:,7);
temp_test2_cons_pool_DD_CC10(11:20) =nan;

temp_test2_cons_pool_DD_CC20 = temp_test2_cons(:,8);
temp_test2_cons_pool_DD_CC20(11:20) =nan;

temp_test2_cons_pool = horzcat(temp_test2_cons_pool_CC_DD20,temp_test2_cons_pool_CC_DD10,temp_test2_cons_pool_CC_DD5,temp_test2_cons_pool_CC_DD2,temp_test2_cons_pool_DD_CC2,temp_test2_cons_pool_DD_CC5,temp_test2_cons_pool_DD_CC10,temp_test2_cons_pool_DD_CC20);


% test2_consの調音法
figure;
%%%% whisker算出
q3 = norminv(.75);
q90 = norminv(0.90);
w90 = (q90-q3)/(2*q3);

boxplot(temp_test2_cons_pool,'whisker',w90,'colors','k');

% 軸の設定
xticks(1:1:8);
xlim([0 6]);
xticklabels({'-20','-10','-5','-2','+2','+5','+10','+20'});
ylim([0 50]);
yticks(0:10:50);

% 軸のサイズや太さの変更
set(gca,'FontSize',13);

% ラベルの設定
title('Post cons')
xlabel('Time (s)','FontSize',15);
box off
ylabel('Accuracy (%)','FontSize',20);
box off




%%%% 統計
%%%%% test1の検定
[p_test1_vowel_pool,tbl_test1_vowel_pool,stats_test1_vowel_pool] = anova1(temp_test1_vowel_pool);
multcompare(stats_test1_vowel_pool,'CType','hsd')
[p_test1_cons_pool,tbl_test1_cons_pool,stats_test1_cons_pool] = anova1(temp_test1_cons_pool);
multcompare(stats_test1_cons_pool,'CType','hsd')
%%%%% test2の検定
[p_test2_vowel_pool,tbl_test2_vowel_pool,stats_test2_vowel_pool] = anova1(temp_test2_vowel_pool);
multcompare(stats_test2_vowel_pool,'CType','hsd')
[p_test2_cons_pool,tbl_test2_cons_pool,stats_test2_cons_pool] = anova1(temp_test2_cons_pool);
multcompare(stats_test2_cons_pool,'CType','hsd')



