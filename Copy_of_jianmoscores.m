clear
ie=actxserver('internetexplorer.application');
ie.Navigate('https://www.bnuexam.cn/');
ie.visible=1;

names={'李星辰','高炜喆','张轩齐','王宇硕','庞秉懿','代坤言','于皓烁','阎敬依','丛钰峰','张喆','张展伟','李延泽','郑毅','马毓言','袁万策','曲悠扬','王文龙','王晨瑜','何城旭','郭盈诺','史一良','李惠祥','高铭宇','刘东勋','朱欣钺','焉炜峥','林浩男','杜佳骅','张四锦','衣飞扬','高嘉泽','孙启文','孔明轩','赵梓霖','毛佳惟','刘佳晟','方泓博','侯懿峰','杨明铮','张家瑞','毕得','陶宇泽','周一鸣','韩文博','毛悦震','程宇奇','徐润蕾','李石泉','周圣翊','苑雨禾'};
IDs={'JSJM0206210200051','JSJM0206210200052','JSJM0206210200053','JSJM0206210200054','JSJM0206210200055','JSJM0206210200056','JSJM0206210200057','JSJM0206210200058','JSJM0206210200059','JSJM0206210200060','JSJM0206210200061','JSJM0206210200062','JSJM0206210200063','JSJM0206210200064','JSJM0206210200065','JSJM0206210200066','JSJM0206210200067','JSJM0206210200068','JSJM0206210200069','JSJM0206210200070','JSJM0206210200071','JSJM0206210200072','JSJM0206210200073','JSJM0206210200074','JSJM0206210200075','JSJM0206210200076','JSJM0206210200077','JSJM0206210200078','JSJM0206210200079','JSJM0206210200080','JSJM0206210200081','JSJM0206210200082','JSJM0206210200083','JSJM0206210200084','JSJM0206210200085','JSJM0206210200086','JSJM0206210200087','JSJM0206210200088','JSJM0206210200089','JSJM0206210200090','JSJM0206210200091','JSJM0206210200092','JSJM0206210200093','JSJM0206210200094','JSJM0206210200095','JSJM0206210200096','JSJM0206210200097','JSJM0206210200098','JSJM0206210200099','JSJM0206210200100'};
scores=[];
pause(10);
for n=1:1:length(names)
    url=['https://www.bnuexam.cn/sxjmactivity-cardquery/result-template?activityId=2&cardNo=',cell2mat(IDs(n)),'&realName=',cell2mat(names(n))]
    ie.Navigate(url);
    pause(3);
    tex=ie.document.body.getElementsByClassName('card-template').item(0).outerText;
    if length(tex)<120
        scores=[scores;'Null       '];
        continue
    end
    score=tex(110:120)
    scores=[scores;score];
end