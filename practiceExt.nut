// 跑图CFG扩展脚本 by Purp1e
// 本文件放在此处  ..\Counter-Strike Global Offensive\csgo\scripts\vscripts
// 加载方法 script_execute practiceExt

// 建议绑定的快捷键 分别为i/o/[/]
// 若不使用practice.cfg 单独使用本脚本 请删去以下四行的注释//
//SendToConsole( @"bind i ""script storeA()"" " );
//SendToConsole( @"bind o ""script loadA()"" " );
//SendToConsole( @"bind [ ""script storeB()"" " );
//SendToConsole( @"bind ] ""script loadB()"" " );

// 初始化
ent <- null;		//定义物体变量
command <- null;		//定义指令变量，存放指令字符串
PositionA <- Vector(0, 0, 0);		//定义A位置变量
AngleA <- Vector(0, 0, 0);		//定义A角度变量
PositionB <- Vector(0, 0, 0);		//定义B位置变量
AngleB <- Vector(0, 0, 0);		//定义B角度变量
name <- ["knife_gut", "knife_Flip", "bayonet", "knife_m9_bayonet", "knife_Karambit", "knife_survival_bowie", "knife_butterfly", "knife_tactical", "knife_push", "knife_falchion", "knife_gypsy_jackknife", "knife_stiletto", "knife_ursus", "knife_widowmaker", "knife_ghost", "knife_css", "knife_canis", "knife_outdoor", "knife_cord", "knife_Skeleton"];
name_print <- ["穿肠刀", "折叠刀", "刺刀 ", "M9刺刀", "爪子刀", "鲍伊猎刀", "蝴蝶刀", "猎杀者匕首", "暗影双匕", "弯刀", "折刀", "短剑", "熊刀", "锯齿爪刀", "幽灵之刃", "海豹短刀", "求生匕首", "流浪者匕首", "系绳匕首", "骷髅匕首"];
choice <- [0, 0, 0, 0];
printl( @">>> 跑图CFG扩展脚本初始化完成" );

//生成刀
function dropknife(i) {
	SendToConsole( "slot3" );
	local n = i * 5 + choice[ i ];
	SendToConsole( "give weapon_" + name[ n ] );
	ScriptPrintMessageCenterAll( name_print[n] + " Get" );
	choice[i] = (choice[i] + 1 ) % 5;
}

//使刀可捡并丢出原来的刀
function knifeout() {
	EntFire("weapon_knife", "addoutput", "classname weapon_knifegg");
	SendToConsole( "drop" );
}

// 因为无法获得pitch 竖直角度总是为0 故此处主要用作弹出提示 等待改进
function storeA() {
	//获取玩家实体 获取时总是1次成功1次失败故使用 或 运算
	if ( ( ent = Entities.FindByClassname(ent, "player") ) != null || ( ent = Entities.FindByClassname(ent, "player") ) != null ) {	
		PositionA = ent.GetOrigin();	//获取位置
		AngleA =  ent.GetAngles();	//获取角度
		ScriptPrintMessageCenterAll( "已保存点A" );
		printl( ">>> 点A指令如下" )
	}
	//else {
	//	ScriptPrintMessageCenterAll( "保存点A失败，位置为(0, 0, 0)" ); 
	//}
}

function loadA() {
	if( PositionA.x || PositionA.y || AngleA.x || AngleA.y || AngleA.z ) {
		command = "setpos " + PositionA.x + ", " + PositionA.y + ", " + PositionA.z + ";";
		//command = command + "setang " + AngleA.x + ", " + AngleA.y + ", " + AngleA.z + ";" ;
		SendToConsole( command );
		SendToConsole( "-moveleft;-moveright;-forward;-back" );
		ent.SetVelocity( Vector(0,0,0) );
		ScriptPrintMessageCenterAll( "已回到点A" ); 
	}
	//else {
	//	ScriptPrintMessageCenterAll( "回到点A失败，位置为(0, 0, 0)" ); 
	//}
}

function storeB() {
	//获取玩家实体
	if ( ( ent = Entities.FindByClassname(ent, "player") ) != null || ( ent = Entities.FindByClassname(ent, "player") ) != null ) {	
		PositionB = ent.GetOrigin();	//获取位置
		AngleB =  ent.GetAngles();	//获取角度
		ScriptPrintMessageCenterAll( "已保存点B" );
		printl( ">>> 点B指令如下" )
	}
	//else {
	//	ScriptPrintMessageCenterAll( "保存点B失败，位置为(0, 0, 0)" ); 
	//}
}

function loadB() {
	if( PositionB.x || PositionB.y || AngleB.x || AngleB.y || AngleB.z ) {
		command = "setpos " + PositionB.x + ", " + PositionB.y + ", " + PositionB.z + ";";
		//command = command + "setang " + AngleB.x + ", " + AngleB.y + ", " + AngleB.z + ";" ;
		SendToConsole( command );
		SendToConsole( "-moveleft;-moveright;-forward;-back" );
		ent.SetVelocity( Vector(0,0,0) );
		ScriptPrintMessageCenterAll( "已回到点B" ); 
	}
	//else {
	//	ScriptPrintMessageCenterAll( "回到点B失败，位置为(0, 0, 0)" ); 
	//}
}

function cam( i, j ) {
	//分享摄像机运动指令 A to B . i 和 j 与运动速度相关
	if( PositionA.x || PositionA.y || AngleA.x || AngleA.y || PositionB.x || PositionB.y || AngleB.x || AngleB.y ) {
		command = "spec_mode 6;";
		command = command + "spec_goto " + PositionA.x + " " + PositionA.y + " " + PositionA.z + " " + AngleA.x + " " + AngleA.y  +";";
		command = command + "spec_lerpto " + PositionB.x + " " + PositionB.y + " " + PositionB.z + " " + AngleB.x + " " + AngleB.y + " " + i + " " + j + ";" ;
		printl( "" );
		printl( ">>> 摄像机运动指令已生成" );
		printl( "" );
		printl( command );
	}
	else {
		ScriptPrintMessageCenterAll( "分享摄像机运动指令失败，点A或B位置为(0, 0, 0)" ); 
	}
}

function hint() {
	//打印practice.cfg中的指令提示
	
}