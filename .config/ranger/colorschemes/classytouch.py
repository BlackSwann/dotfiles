from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
	def use(self, context):
		fg, bg, attr = default_colors

		if context.reset:
			return default_colors

		elif context.in_browser:
			if context.selected:
				fg = white
				attr = bold
			else:
				attr = normal
			if context.empty or context.error:
				fg = black
			if context.border:
				attr = normal
				fg = black
			if context.media:
				if context.image:
					fg = black
				else:
					fg = white
			if context.container:
				attr |= normal
				fg = green
			if context.directory:
				attr |= normal
				fg = white
			elif context.executable and not \
					any((context.media, context.container,
						context.fifo, context.socket)):
				attr |= normal
				fg = magenta
			if context.socket:
				fg = magenta
			if context.fifo or context.device:
				fg = yellow
				if context.device:
					attr |= bold
			if context.link:
				fg = context.good and white or magenta
			if context.tag_marker and not context.selected:
				attr |= bold
				if fg in (magenta, white):
					fg = black
				else:
					fg = green
			if not context.selected and (context.cut or context.copied):
				fg = white
				attr |= bold
			if context.main_column:
				if context.selected:
					attr |= normal
				if context.marked:
					attr |= underline
					fg = white
			if context.badinfo:
				if attr & reverse:
					bg = magenta
				else:
					fg = magenta

		elif context.in_titlebar:
			attr |= normal
			if context.hostname:
				attr |= normal
				fg = magenta
			elif context.directory:
				fg = magenta
			elif context.tab:
				if context.good:
					bg = green
			elif context.link:
				fg = magenta

		elif context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = black
				elif context.bad:
					fg = magenta
			if context.marked:
				attr |= bold | reverse
				fg = yellow
			if context.message:
				if context.bad:
					attr |= bold
					fg = magenta

		if context.text:
			if context.highlight:
				attr |= bold

		if context.in_taskview:
			if context.title:
				fg = magenta
				
			if context.selected:
				attr |= normal

		return fg, bg, attr
