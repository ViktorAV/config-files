# rxvt - эмулятор терминала

## Установка
Debian
```bash
sudo apt install rxvt-unicode
```

## Настройка
Файл конфигурации: `~/.Xresources`.
Чтобы применить изменения, перезагрузите этот файл командой `xrdb ~/.Xresources`
```bash
!! ColorScheme

! special
*.foreground: #93a1a1
*.background: #141c21
*.cursorcolor: #afbfbf

! black
*.color0: #263640
*.color8: #4a697d

! red
*.color1: #d12f2c
*.color9: #fa3935

! green
*.color2: #819400
*.color10: #a4bd00

! yellow
*.color3: #b08500
*.color11: #d9a400

! blue
*.color4: #2587cc
*.color12: #2ca2f5

! magneta
*.color5: #696ebf
*.color13: #8086e8

! cyan
*.color6: #289c93
*.color14: #33c5ba

! white
*.color7: #bfbaac
*.color15: #fdf6e3


!! URxvt Appearance
URxvt.font: xft:JetBrainsMono:style=Medium:size=14
URxvt.boldfont: xft:JetBrainsMono:style=Bold:size=14
URxvt.italicfont: xft:JetBrainsMono:style=Italic:size=14
URxvt.boldItalicfont: xft:JetBrainsMono:style=BoldItalic:size=14
URxvt.letterSpace: 0
URxvt.lineSpace: 0
URxvt.geometry: 92x24
URxvt.internalBorder: 24
URxvt.cursorBlink: true
URxvt.cursorUnderline: false
URxvt.saveline: 2048
URxvt.scrollBar: false
URxvt.scrollBar_right: false
URxvt.urgentOnBell: true
URxvt.depth: 24
URxvt.iso14755: false
```

## Параметры
Главный класс
- `URxvt.`
  Применяет параметры исключительно для `urxvt`.
- `Rxvt.`
  Применяет параметры для `rxvt` и `urxvt`.

Список параметров
- `depth: bitdepth`
  `-depth`
  Компилирует __xft__ (шрифт), ищет visual с bit depth.
- `buffered: bool`
  Компилирует шрифт, двойная буферизация.
  По умолчанию __включено__.
- `geometry: geom`
  `-geometry`
  Устанавливает окну геометрию.
  По умолчанию __80x24__.
- `background: color`
  `-bg`
  Устанавливает цвет заднего фона.
  По умолчанию __White__.
- `foreground: color`
  `-fg`
  Устанавливает цвет текста.
  По умолчанию __Black__.
- `colorn: color`
  Количество цветов терминала. (16, 256?)
- `colorBD: color`
  `colorIT: color`
  Устанавливает цвета для __Bold__ и _Italic_ стилей.
- `colorUL: color`
  Устанавливает цвет для подчеркнутого текста.
- `underlineColor: color`
  Устанавливает цвет для полосы подчеркнутого текста.
- `highlightColor: color`
  Устанавливает цвет фона для подсвечиваемого текста.
- `highlightTextColor: color`
  Устанавливает цвет текста для подсвечиваемого текста.
- `cursorColor: color`
  `-cr`
  Устанавливает цвет курсора.
  По умолчанию используется цвет __foreground__.
- `cursorColor2: color`
  Устанавливает цвет текста под курсором.
  По умолчанию используется цвет __background__.
- `reverseVideo: bool`
  `+rb|-rv`
  Симулирует зеркальное фоновое видео для __background__ и __foreground__ цветов.
- `jumpScroll: bool`
  `+j|-j`
  Включено - будет быстрая прокрутка полученного текста.
  Выключено - будет плавная прокрутка.
- `skipScroll: bool`
  `+ss|-ss`
  Включено - обновляет прокрутку терминала раз в секунду. (быстрый)
  Выключено - отображает все полученные строки.
  По умолчанию __включено__.
- `fading: int`
  `-fade`
  Устанавливает процент размытия текста при потере фокуса.
- `fadeColor: color`
  `-fadecolor`
  Устанавливает цвет размытия текста при потере фокуса.
  По умолчанию __Black__.
- `iconFile: file`
  `-icon`
  Устанавливает значок приложения.
- `scrollColor: color`
  Устанавливает цвет полосы прокрутки.
  По умолчанию #B2B2B2
- `troughColor: color`
  Устанавливает цвет глубины полосы прокрутки.
  По умолчанию #969696
- `borderColor: color`
  Устанавливает цвет границ окна. (рамка)
- `font: fontList`
  `boldFont: fontList`
  `italicFont: fontList`
  `boldItalicFont: fontList`
  Устанавливает шрифт терминала.
  ```bash
  URxvt.font: xft:JetBrainsMonoNerdFont:style=Regular:size=20
  URxvt.boldFont: xft:JetBrainsMonoNerdFont:style=Bold:pixelsize=20
  ```
- `intensityStyles: bool`
  `+is|-is`
  Если стили шрифта не включены или этот параметр включен.
  bold/blink стили шрифта будут использовать высоко интенсивные цвета фона и текста.
  Выключено - выключает высоко интенсивные цвета.
  По умолчанию __Выключено__.
- `title: str`
  `-title`
  Устанавливает название окна приложения.
- `iconName: str`
  `-n`
  Устанавливает название иконки, так-же устанавливает название окна если не задано.
- `mapAlert: bool`
  Включено - де-иконафицирует карту звукового символа.
  Выключено - обратное действие.
  По умолчанию __Выключено__.
- `urgentOnBell: bool`
  По умолчанию __Выключено__.
- `visualBell: bool`
  `+vb|-vb`
  Использовать visual звук.
  По умолчанию __Выключено__.
- `loginShell: bool`
  `+ls|-ls`
  Включено - запускает логин шелл `-`.
  Выключено - запускает нормальный шелл.
  По умолчанию __Выключено__.
- `multiClickTime: milliseconds`
  `-mc`
  Устанавливает максимальное время между несколькими кликами.
  По умолчанию __500 милисекунд__.
- `utmpInhibit: bool`
  `+ut|-ut`
  Включено - запрещает записывать введенные строки в файл логов системы __utmp__
  Выключено - разрешает запись.
  По умолчанию __Выключено__.
- `print-pipe: str`
- `scrollstyle: mode`
  Устанавливает стиль полосы прокрутки.
  Доступные моды `rxvt`, `plain`, `next` и `xterm`.
- `thickness: int`
  Устанавливает ширину полосы прокрутки.
- `scrollBar: bool`
  `+sb|-sb`
  Включает или выключает полосу прокрутки.
  По умолчанию __Включено__.
- `scrollBar_right: bool`
  `+sr|-sr`
  Устанавливает полосу прокрутки справа или слева.
- `scrollBar_floating: bool`
  `+st|-st`
  Включает или выключает глубину прокрутки.
- `scrollBar_align: mode`
  Align top, bottom, centre.
  По умолчанию __centre__.
- `scrollTtyOutput: bool`
  `+si|-si`
  Включено - прокручивает вниз при получении вывода tty.
  Выключено - не прокручивает.
- `scrollWithBuffer: bool`
  `+sw|-sw`
  Включено - прокручивать буфер сколлбэка когда терминал получает новые строки.
  Выключено - не прокручивать.
- `scrollTtyKeypress: bool`
  `+sk|-sk`
  Включено - прокручивает вниз по нажатию не специальной клавиши.
  Выключено - не прокручивает.
- `saveLines: int`
  `-sl`
  Устанавливает количество строк для сохранения.
  По умолчанию __1000__.
- `internalBorder: int`
  `-b`
  Устанавливает внутреннюю границу пикселей. (до 100)
- `externalBorder: int`
  `-bw` 
  Устанавливает внешнюю границу пикселей. (до 100)
- `borderLess: bool`
  `-bl`
  Включает или выключает декорации окна.
- `skipBuiltinGlyphs: bool`
  `-sbg`
  Выключает какуето прорисовку символов, можно использовать если установлен хороший шрифт.
- `termName: str`
  `-tn`
  Устанавливает имя типа терминала. ($TERM)
- `lineSpace: int`
  `-lsp`
  Устанавливает высоту символов.
  По умолчанию __0__.
- `meta8: bool`
  Включено - устанавливает 8ой бит по Alt+key.
  Выключено - устанавливает escape prefix по Alt+key.
  По умолчанию __Выключено__.
- `mouseWheelScrollPage: bool`
  Включено - колесо мыши прокручивает страницу полностью.
  Выключено - прокручивает до 5 строк.
  По умолчанию __Выключено__.
- `pastableTabs: bool`
  `-ptab`
  Включено - хранит табы как wide characters.
  Выключено - интерпритирует табы только по движению курсора.
- `cursorBlink: bool`
  `-bc`
  Включено - мигает курсором.
  Выключено - не мигает.
  По умолчанию __Выключено__.
- `cursorUnderLine: bool`
  `-uc`
  Включено - устанавливает подчеркнутый курсор.
  Выключено - устанавливает курсор коробку.
  По умолчанию __Выключено__.
- `pointerBlank: bool`
  Включено - скрывает курсор при нажатии клавиш.
  Выключено - курсор всегда видим.
  По умолчанию __Выключено__.
- `pointerColor: color`
  Устанавливает цвет текста курсора мыши.
- `pointerColor2: color`
  Устанавливает цвет фона курсора мыши.
- `pointerShape: str`
  Устанавливает курсор.
  По умолчанию __default xterm__.
- `pointerBlankDelay: int`
  Устанавливает время мигания курсора.
  По умолчанию __2__.
- `backspacekey: str`
  Устанавливает строку для отправки если backspace клавиша нажата.
- `deletekey: str`
  Устанавливает строку для отправки если delete клавиша нажата.
- `cutchars: str`
- `preeditType: style`
  `-pt`
  `OnTheSpot`, `OverTheSpot`, `OffTheSpot`, `Root`.
- `inputMethod: str`
  `-im`
  Устанавливает метод ввода.
- `imLocale: str`
  Устанавливает язык для IM.
- `imFont: fontset`
  Устанавливает шрифт для XIM стилей.
- `tripleclickwords: bool`
  `-tcw`
  Включено - при тройной клике левой кнопкой мыши, выделит текст до конца.
- `disablePasteBrackets: bool`
  `-dpb`
- `insecure: bool`
  Включает __insecure__ мод.
- `modifier: modifier`
  `-mod`
  Устанавливает клавишу как Meta key.
  `alt`, `meta`, `hyper`, `super`, `mod1,2,3,4,5`
- `answerbackString: str`
- `secondaryScreen: bool`
  Включает или выключает второй экран.
  По умолчанию __Включено__.
- `rewrapMode: mode`
  Устанавливает режим переноса строки, `auto`, `always` и `never`
  По умолчанию __auto__.
- `secondaryScroll: bool`
  Включает или выключает полосу прокрутки на втором экране.
  По умолчанию __Включено__.
- `hold: bool`
  Если включено будет отправлять в фоновый режим закрытые терминалы.
- `chdir: path`
  `-cd`
  Устанавливает рабочую директорию для терминала.
- `keysym.sym: action`
  Устанавливает действие для нажатых клавиш.
  `URxvt.keysym.Control-k: command:\033]720;1\007`
  | Клавиша   | keysym.sym |
  | --------  | ---------- |
  | ISOLevel3 | I          |
  | AppKeypad | K          |
  | Control   | C          |
  | NumLock   | N          |
  | Shift     | S          |
  | Meta      | M или A    |
  | Lock      | L          |
  | Mod1      | 1          |
  | Mod2      | 2          |
  | Mod3      | 3          |
  | Mod4      | 4          |
  | Mod5      | 5          |
- `url-launcher: str`
  Устанавливает программу для открытия ссылок.
- `transient-for: windowid`
  Устанавливает WM_TRANSIENT_FOR свойство от окна по windowid.
- `override-redirect: bool`
  Устанавливает `override-recdirect` для окна терминала, делает его неуязвимым к оконным
  мененджерам.
