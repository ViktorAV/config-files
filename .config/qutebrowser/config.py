config.load_autoconfig(False)
c.url.default_page = 'https://google.com/'
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}
c.url.start_pages = ['https://google.com']
c.editor.command = ['vim', '-f', '{file}', '-c', 'normal {line}G{column0}l']
c.tabs.show = 'never' # always, never, multiple, switching
c.statusbar.show = 'never' # always, never, in-mode (other than normal)
c.zoom.default = '140%'
c.scrolling.bar = 'never' # always, never, when-searching, overlay
c.downloads.location.directory = '~/downloads'

bgcolor = '#'
c.colors.webpage.bg = '#061923'
c.colors.webpage.darkmode.enabled = True
c.colors.completion.category.bg = '#061923'
c.colors.completion.category.border.bottom = '#061923'
c.colors.completion.category.border.top = '#061923'
c.colors.completion.category.fg = '#e5c49e'
c.colors.completion.even.bg = '#333333'
c.colors.completion.fg = ['#e5c49e', '#e5c49e', '#e5c49e']
c.colors.completion.item.selected.bg = '#feaf3c'
c.colors.completion.item.selected.border.bottom = '#db662d'
c.colors.completion.item.selected.border.top = '#db662d'
c.colors.completion.item.selected.fg = '#e5c49e'
c.colors.completion.item.selected.match.fg = '#db662d'
c.colors.completion.match.fg = '#db662d'
c.colors.completion.odd.bg = '#444444'
c.colors.completion.scrollbar.bg = '#061923'
c.colors.completion.scrollbar.fg = '#928374'

c.colors.hints.bg = '#061923'
c.colors.hints.fg = '#e5c49e'
c.colors.hints.match.fg = '#db662d'
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

config.bind('M', 'hint links spawn mpv --ytdl-format=bestvideo[height<=?360]+bestaudio/best {hint-url}')
