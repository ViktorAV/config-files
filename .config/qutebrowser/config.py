config.load_autoconfig(False)
c.url.default_page = 'https://google.com/'
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}
c.url.start_pages = ['https://google.com']
c.editor.command = ['vim', '-f', '{file}', '-c', 'normal {line}G{column0}l']
c.tabs.show = 'never' # always, never, multiple, switching
c.statusbar.show = 'never' # always, never, in-mode (other than normal)
c.zoom.default = '140%'
c.scrolling.bar = 'never' # always, never, when-searching, overlay

c.colors.webpage.bg = '#282828'
c.colors.webpage.darkmode.enabled = True
c.colors.completion.category.bg = '#282828'
c.colors.completion.category.border.bottom = '#282828'
c.colors.completion.category.border.top = '#282828'
c.colors.completion.category.fg = '#ebdbb2'
c.colors.completion.even.bg = '#333333'
c.colors.completion.fg = ['#ebdbb2', '#ebdbb2', '#ebdbb2']
c.colors.completion.item.selected.bg = '#d79921'
c.colors.completion.item.selected.border.bottom = '#bbbb00'
c.colors.completion.item.selected.border.top = '#bbbb00'
c.colors.completion.item.selected.fg = '#ebdbb2'
c.colors.completion.item.selected.match.fg = '#bbbb00'
c.colors.completion.match.fg = '#bbbb00'
c.colors.completion.odd.bg = '#444444'
c.colors.completion.scrollbar.bg = '#282828'
c.colors.completion.scrollbar.fg = '#928374'

c.colors.hints.bg = '#282828'
c.colors.hints.fg = '#ebdbb2'
c.colors.hints.match.fg = '#bbbb00'
c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'
c.colors.keyhint.fg = '#FFFFFF'
c.colors.keyhint.suffix.fg = '#FFFF00'

c.fonts.completion.category = 'bold 25pt default_family'
c.fonts.completion.entry = '25pt default_family'
c.fonts.contextmenu = None
c.fonts.debug_console = 'default_size default_family'
c.fonts.default_family = []
c.fonts.default_size = '15pt'
c.fonts.downloads = 'default_size default_family'
c.fonts.hints = 'bold 25pt default_family'
c.fonts.keyhint = 'default_size default_family'
c.fonts.messages.error = 'default_size default_family'
c.fonts.messages.info = 'default_size default_family'
c.fonts.messages.warning = 'default_size default_family'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '25pt default_family'
c.fonts.tabs.selected = 'default_size default_family'
c.fonts.tabs.unselected = 'default_size default_family'
c.fonts.web.family.cursive = ''
c.fonts.web.family.fantasy = ''
c.fonts.web.family.fixed = ''
c.fonts.web.family.sans_serif = ''
c.fonts.web.family.serif = ''
c.fonts.web.family.standard = ''
c.fonts.web.size.default = 20
c.fonts.web.size.default_fixed = 16
c.fonts.web.size.minimum = 16
c.fonts.web.size.minimum_logical = 0

config.bind('M', 'hint links spawn mpv --ytdl-format=bestvideo[height<=?480]+bestaudio/best {hint-url}')
