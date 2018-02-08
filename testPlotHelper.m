javaaddpath('build/libs/xchartplothelper-1.0.1.jar'); %Point this to the .jar file you compiled
t = [0:0.01:10];
t2 = [15:0.01:20];
s1 = sin(2*pi*t);
s2 = sin(2*pi*t2);
s3 = cos(2*pi*t);
chart1 = javaObject('timo.jyu.PlotXChart','s1','X','Y',1000,300);
chart2 = javaObject('timo.jyu.PlotXChart','s2','X','Y',1000,300);
chart3 = javaObject('timo.jyu.PlotXChart','s3','X','Y',1000,300);

chart1.addSeries('s1',t,s1);
chart1.addSeries('s2',t2,s2);
chart2.addSeries('s2',t2,s2);
chart3.addSeries('s3',t,s3);

chart1.savePNG('chart1.png');
chart1.appendAndSavePNG('chart1chart2.png',chart2.getBI());
chart1.appendAndSavePNG('chart1chart2chart3.png',chart2.appendBI(chart3.getBI(),true));
