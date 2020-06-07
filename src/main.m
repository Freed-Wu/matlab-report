%main
clf reset

set( gcf, 'defaultuicontrolfontsize', 11 )% 定义程序主界面标题、字体大小、界面大小等
set( gcf, 'unit', 'normalized', 'position', [0.65, 0.1, 0.5, 0.75 ])
set( gcf, 'defaultuicontrolunits', 'normalized' )
set( gcf, 'defaultuicontrolfontname', 'None' )
set( gcf, 'defaultuicontrolhorizontal', 'left' )

str = '傅里叶级数的可视化';
set( gcf, 'menubar', 'none' )
set( gcf, 'name', str, 'numbertitle', 'off' );

haxes3d=axes( 'position', [0.1, 0.40, 0.55, 0.55 ], 'visible', 'on' ); % axes布局 整个界面有四个axes对象

axes( haxes3d );
rotate3d on;
exflyone( 3 )

uipanel( gcf, 'Title', '请选择傅里叶展开的级数：', 'FontSize', 12, 'Position', [0.67, 0.56, 0.31, 0.35 ]); % panel 布局

hpop = uicontrol( gcf, 'Style', 'popup', 'position', [0.77, 0.67, 0.13, 0.12 ], 'string', '3次展开|5次展开|9次展开|22次展开' );
hedit = uicontrol( gcf, 'Style', 'edit', 'position', [0.77, 0.63, 0.045, 0.030 ]);
uicontrol( gcf, 'Style', 'text', 'position', [0.825, 0.610, 0.1, 0.05 ], 'String', '次展开' );
hbutton = uicontrol( gcf, 'Style', 'pushbutton', 'position', [0.7, 0.4, 0.25, 0.05 ], 'string', '查看傅里叶级数动态拟合过程' );

hradioone = uicontrol( gcf, 'Style', 'radiobutton', 'position', [0.7, 0.8, 0.25, 0.05 ], 'string', '选择展开级数：' );
hradiotwo = uicontrol( gcf, 'Style', 'radiobutton', 'position', [0.7, 0.67, 0.25, 0.05 ], 'string', '自定义展开级数：' );
set( hradioone, 'value', 1 );
set( hradiotwo, 'value', 0 );

set( hedit, 'callback', 'axes( haxes3d );calledit( hedit, hpop, haxes3d, hradioone.Value )' )
set( hpop, 'callback', 'axes( haxes3d );calledit( hedit, hpop, haxes3d, hradioone.Value )' )
set( hbutton, 'callback', 'exflydt' )

set( hradioone, 'callback', 'radiooneCallback( hradioone, hradiotwo, hedit, hpop, haxes3d )' )
set( hradiotwo, 'callback', 'radiotwoCallback( hradioone, hradiotwo, hedit, hpop, haxes3d )' )

grid on;
