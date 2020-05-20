<h1 align="center">CSGO Config Presets</h1>
<h4 align="center">A set of cfg files that cover nearly all scenarios in CSGO</h3>

<p align="center">
  <a href="https://github.com/Purple-CSGO/CSGO-Config-Presets/blob/master/README.md">简体中文</a> | English



</p>

[![stars](https://img.shields.io/github/stars/Purple-CSGO/CSGO-Config-Presets.svg?style=flat&color=green)](https://github.com/Purple-CSGO/CSGO-Config-Presets)
[![fork](https://img.shields.io/github/forks/Purple-CSGO/CSGO-Config-Presets.svg?style=flat&color=critical)](https://github.com/Purple-CSGO/CSGO-Config-Presets)
![license](https://img.shields.io/badge/license-GPL%203-orange.svg?style=flat)
[![donate](https://img.shields.io/badge/$-donate-ff69b4.svg?style=flat)](https://github.com/Purple-CSGO/CSGO-Config-Presets#捐赠)
[![translation](https://img.shields.io/badge/$-translation-ff69b4.svg?style=flat&color=blueviolet)](https://github.com/Purple-CSGO/CSGO-Config-Presets#翻译)
[![release](https://img.shields.io/github/release/Purple-CSGO/CSGO-Config-Presets.svg?style=flat&color=blue)](https://github.com/Purple-CSGO/CSGO-Config-Presets/releases)

## About

The project started on Aug. 2018. This set of CSGO config presets cover almost all scenarios in game, and they are well commented:

|             scenarios             |     File Name     |
| :-------------------------------: | :---------------: |
|           Game Settings           |    `auto.cfg`     |
| Crosshair settings(for jumpthrow) |  `crosshair.cfg`  |
|        Practice nading and        |  `practice.cfg`   |
|            Local Duel             |    `solo.cfg`     |
|            Watch demo             |    `demo.cfg`     |
|       Record movie footages       |    `hlae.cfg`     |
|            Selfie View            |    `cals.cfg`     |
|         FFMPEG recording          |   `ffmpeg.cfg`    |
|      Multi-stream recording       |   `stream.cfg`    |
|   Export crosshair&vm settings    |   `export.cfg`    |
|            Observer/OB            |      not yet      |
|     Practice Enhance Vscript      | `practiceExt.nut` |
|   Notepad++ Syntax highlighting   | `CSGO Config.xml` |

All the parameters are tested in detail, and the hotkeys are carefully considered to ensure that each hotkey is at the very place it should be. It is suitable for players who are not familiar with CSGO commands but want to be out-of-the-box and save time, or for players who want to imporve their ownCFG by referring to other people's code.

After downloading this set of presets, according to the instructions, **backup Settings**, simply **tweak the parameters**, **placing them** in correct position, and **set up launch option**, then you can enjoy the convenience of the presets. Generally, the whole process does not exceed 30 minutes.

## Download

[Releases](https://github.com/Purple-CSGO/CSGO-Config-Presets/releases)

[CowTransfer](https://c-t.work/s/ee0709ed4bb940)  (Remind me to update the link if it's not free)

## Usage

#### 1. Back up settings

First of all, backup all your settins to another place!!

- Personal CFG folder`...\Steam\userdata\(32bit ID)\730\local\cfg\`
- CSGO CFG folder`...\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\`

#### 2. What if u don't know the ID?

If there's only one dir in `userdata`, its name is your ID. If there are many dirs:

- Open https://steamid.io/

- Copy your steam profile link, i.e. `https://steamcommunity.com/id/1234567890/`

- In the 2nd line, like SteamID3 [U:1:`146859713`]. `146859713` is the ID

> Also, you could move all files in userdata to another place, login steam, then a new dir appears. Its name is your ID. Remember that and paste all files back.

> [CSGO Toolbox](https://github.com/Purple-CSGO/CSGO-Toolbox) could help you get steam，csgo，cfg path and steam 32bit ID (but it only supports Chinese now).

#### 3. Read  instructions and read through all the files

#### 4. Tweek parameters

Some of the preset Settings must be different from yours. Please tweek the preset's parameters. You could use windowed mode to do that conveniently.

- modify ` auto.cfg `

- copy and past custom Crosshair&ViewModel parameters (if neccessary)

  - You could tweek Crosshair&ViewModel parameters in workshop maps and export

  - You could also put **export.cfg** into cfg folder in advance, `exec export` in console so as to export all Crosshair&ViewModel parameters

- modify other parameters such as that of `hlae.cfg`

#### 5. Set up launch option according to the instructions in `auto.cfg`

```
-high -novid -nojoy -d3d9ex -refresh 144 -freq 144 -tickrate 128 +exec auto.cfg
```

Alert: **Launch options in B5, 5E, FACEIT ...** are different and must be set up in their clients 

#### **6. Transfer all files into CFG folder and test**

`practiceExt.nut` should be placed in the following location:

`...\Counter-Strike Global Offensive\csgo\scripts\vscripts`

## Other

`//` represents comment. Things after that are ignored.

```
This is command;	//This is comment
```

If you don't want to use certain command, just add // before it, or directly delete it:

```
//This is command;	//This is comment
```

## Translation

If you want to contribute translation, and interpret presets to other languages, please propose in [issues](https://github.com/Purple-CSGO/CSGO-Config-Presets/issues).

First fully translated version of `En-US` will come out in 8 weeks.

## Donation

Please note `CFG Preset` when donating for not messing up.

- Alipay:

![Alipay](Alipay.png)

- Wechat:

![Wechat](Wechat.png)