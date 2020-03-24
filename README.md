<h1 align="center">CSGO CFG预设</h1>
<h4 align="center">适用于CSGO几乎所有场景的CFG预设文件</h3>

<p align="center">
  简体中文 |
  <a href="https://github.com/Purple-CSGO/CSGO-Config-Presets/blob/En-US/README.md">English</a>
  

</p>

[![stars](https://img.shields.io/github/stars/Purple-CSGO/CSGO-Config-Presets.svg?style=flat&color=green)](https://github.com/Purple-CSGO/CSGO-Config-Presets)
[![fork](https://img.shields.io/github/forks/Purple-CSGO/CSGO-Config-Presets.svg?style=flat&color=critical)](https://github.com/Purple-CSGO/CSGO-Config-Presets)
![license](https://img.shields.io/badge/license-GPL%203-orange.svg?style=flat)
[![donate](https://img.shields.io/badge/$-donate-ff69b4.svg?style=flat)](https://github.com/Purple-CSGO/CSGO-Config-Presets#捐赠)
[![translation](https://img.shields.io/badge/$-translation-ff69b4.svg?style=flat&color=blueviolet)](https://github.com/Purple-CSGO/CSGO-Config-Presets#翻译)
[![release](https://img.shields.io/github/release/Purple-CSGO/CSGO-Config-Presets.svg?style=flat&color=blue)](https://github.com/Purple-CSGO/CSGO-Config-Presets/releases)

## 简介

项目始于2018年8月，这套CSGO的Config预设涵盖了几乎所有应用的场景，注释详细：

|       使用场景       |     文件名称      |
| :------------------: | :---------------: |
|       游戏设置       |    `auto.cfg`     |
| 准星参数（使用跳投） |  `crosshair.cfg`  |
|       跑图指令       |  `practice.cfg`   |
|       本地solo       |    `solo.cfg`     |
|       观看demo       |    `demo.cfg`     |
|     录制集锦素材     |    `hlae.cfg`     |
|      自拍杆视角      |    `cals.cfg`     |
|      ffmpeg录制      |   `ffmpeg.cfg`    |
|       分层录制       |   `stream.cfg`    |
|  导出准星&持枪参数   |   `export.cfg`    |
|     导播/观察者      |       暂无        |
|  Notepad++语法高亮   | `CSGO Config.xml` |

所有的参数都经过详细的测试，按键位置仔细斟酌，确保每个功能的按键都在它用起来最舒服的位置。适用于对CSGO指令不太熟悉，想要到手即用，节省时间的玩家，亦或是想要参考他人的代码来丰富自己CFG的玩家。

下载这套预设之后，根据使用说明，备份设置、简单修改参数、放在正确的位置、设置启动项后即可享受预设带来的便利，一般整个过程不超过30分钟。

## 下载

[Releases](https://github.com/Purple-CSGO/CSGO-Config-Presets/releases)

[奶牛快传](https://c-t.work/s/ee0709ed4bb940) （免费次数用完后请提醒更新链接）

## 用法

#### 1. 备份设置

务必先把现有的设置打包备份到另一个地方！！

- 个人设置文件夹`...\Steam\userdata\(32位ID)\730\local\cfg\`
- 游戏设置文件夹`...\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\`

#### 2. ID不知道怎么办？

`userdata`位置只有一个文件夹是，其名称就是ID，如果有多个且分辨不出：

- 登录 https://steamid.io/

- 复制个人资料简介，如 `https://steamcommunity.com/id/1234567890/`

- 第二行，如 SteamID3 [U:1:`146859713`]  得到ID `146859713`

> 也可以先转移userdata下所有文件，登录你的steam，这时只会出现一个文件夹，文件夹名就是ID，记下这个ID，再把刚才转移的文件放回。

> [CSGO工具箱][https://github.com/Purple-CSGO/CSGO-Toolbox]可以帮助快速定位steam，csgo，cfg文件夹的位置和ID（目前仅支持中文）

#### 3. 阅读说明，浏览所有文件

#### 4. 修改参数设置

预设中的部分设置一定和你的习惯不同，请调整预设中的参数。可以使用窗口模式，方便操作。

- 修改`auto.cfg`
- 写入自定义准星&持枪参数（如果需要）
  - 可在创意工坊中调整准星、持枪并导出参数
  - 可以提前放入**export.cfg**，控制台中使用`exec export`即可导出准星和持枪参数
- 修改其他如`hlae.cfg`的参数

#### 5. 根据`auto.cfg`中的说明，设置启动项

```
-high -novid -nojoy -d3d9ex -refresh 144 -freq 144 -tickrate 128 +exec auto.cfg
```

注意：**B5、5E、FACEIT等平台的启动项**请在他们的客户端中设置。

#### **6. 转移到CFG文件夹并在本地测试**

## 其它

`//`是注释，其后内容失效：

```
这是指令;	//这是注释
```

如果不想用某条指令，就在指令前加上注释，或者直接删除：

```
//这是指令;	//这是注释
```

## 翻译

如果你想参与翻译工作，将预设翻译为其他语言，请在[issues](https://github.com/Purple-CSGO/CSGO-Config-Presets/issues)中提出。

`En-US`的第一版翻译将由本人在8周内完成。

## 捐赠

捐赠请备注昵称和`CFG预设`以便区分：

- 支付宝：

![Alipay](Assets/Alipay.png)

- 微信：

![Wechat](Assets/Wechat.png)