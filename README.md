# CSGO-Config-Presets
​A set of cfg files that cover nearly all scenarios in CSGO 

适用于CSGO几乎所有场景的CFG预设文件

## 预设各文件作用简述：

> 通常游戏时使用

- **auto.cfg**
   核心cfg 包含若干常用设置指令并加以详尽注释 另有各种特殊功能的指令如跳投、投掷物准星
   
- **bind_default.cfg**
   还原初始键位的config 在auto demo hlae等cfg靠前位置调用此cfg 确保每次启动游戏键位一致
   
- **crosshair.cfg**
   存放**准星参数**的config 为了实现投掷物准星 单独成一个cfg可极大的保证投掷准星代码的可重用性
   
- **crosshair_throw.cfg**
   存放投掷物准星（超长十字准星）参数 配合投掷物准星功能
   
- **practice.cfg**
   **跑图**用cfg 方便跑图设置各种参数和键位绑定 控制台有中文提示
   
- **solo.cfg**
   进行solo 2v2 3v3等场景时使用的config 一次设置各种参数 另有设置solo模式的快捷键
   
- **export.cfg**
   **导出准星和持枪参数** 建议在调试预设时先使用该cfg导出参数置于auto.cfg crosshair.cfg对应位置
   
- **demo.cfg**
   观看DEMO时使用的config 设置一些参数 绑定快捷按键

> 录制CSGO集锦素材（HLAE）时使用

- **hlae.cfg**
   搭配集锦制作工具**HLAE录制**素材时使用的config 包含各种参数键位设定如一键高亮玩家击杀信息
   
- **ffmpeg.cfg**
   搭配HLAE和FFMPEG**录制集锦素材**所用 已集成好录制预设 仅改变录制方式为ffmpeg
   
- **blocksound.cfg**
   使用HLAE时使用 可以屏蔽所有出语音外的声音 用来录制解说音轨
   
- **cals.cfg**
  
   搭配HLAE使用 实现自拍杆效果 附有若干预设
   
- **stream.cfg**

   搭配HLAE实现分层录制 已经集成好95%以上的指令 使用起来非常方便

> 其他

- practiceExt.nut

  本地跑图扩展脚本，需要放置在以下位置，加载practice.cfg后自动生效

  `..\Counter-Strike Global Offensive\csgo\scripts\vscripts`
## 2.12.2021
1.添加‘使用小键盘快速切换地图’功能，合并文件

2.增加个人爱用的准星文件

3.修改auto.cfg，并补充个人使用的参数

4.修改practise中杀死bot为消灭bot
## 02.13.2021
1.修改nut和practise，更改出刀顺序和控制提示 

2.添加play.cfg，自娱自乐模拟器😝

## 02.16.2021
1.删除个人无用指令，调整顺序

2.删除开头原作者个人信息，原作者请看fork源

3.删除原作者放置的我个人无用的文件