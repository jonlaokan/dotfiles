c.completion.shrink = True
c.editor.command = ["urxvt", "-e", "nvim", "{file}"]
c.auto_save.session = True
c.zoom.levels = ["100", "150"]

# DRM content
c.qt.args = ["ppapi-widevine-path=/usr/lib/qt/plugins/ppapi/libwidevinecdmadapter.so"]

# fonts config
c.fonts.completion.category = "bold 14pt monospace"
c.fonts.completion.entry = "14pt monospace"
c.fonts.debug_console = c.fonts.completion.entry
c.fonts.downloads = c.fonts.completion.entry
c.fonts.hints = c.fonts.completion.entry
c.fonts.keyhint = c.fonts.completion.entry
c.fonts.messages.error = c.fonts.completion.entry
c.fonts.messages.info = c.fonts.completion.entry
c.fonts.messages.warning = c.fonts.completion.entry
c.fonts.prompts = c.fonts.completion.entry
c.fonts.statusbar = c.fonts.completion.entry
c.fonts.tabs = c.fonts.completion.entry

# Minimize fingerprinting
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0"
c.content.headers.accept_language = "en-US,en;q=0.9,fr;q=0.8,fr-FR;q=0.7"
c.content.headers.custom = {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
c.content.webgl = False

# Bindings
config.bind(",v","spawn mpv {url}")

