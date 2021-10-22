require('orgmode').setup({
	-- Global settings
	
	-- All files with TODOs that go into the agenda.
	org_agenda_files = {'~/notes/todos.org'},

	-- The file that org captures go into.
	org_default_notes_file = '~/notes/capture.org',
	
	-- Al the todo keywords
	-- Includes fast access keys
	org_todo_keywords = {'TODO(t)', 'WORKING(w)', 'NEXT(n)', '|', 'DONE(d)'},

	-- No indentation
	org_indent_mode = 'noindent',

	-- Archive file
	org_archive_file = '~/notes/archive.org',

	-- Agenda Settings
	-- Deadline in days
	org_deadline_warning_days = 7,

	--Show week view on agenda by default
	org_agenda_span = 'week',

	-- Templates for capturing and refiling
	-- TODO Finish the orgmode capture templates
	org_agenda_templates = {
		t = { description = "Task", template = "* TODO %?\n %u", target = "~/notes/todos.org" },
		s = { description = "Spanish Note", template = "* %T \n** %?\n", target = "~/notes/spanish.org" },
		h = { description = "History Note", template = "* %T \n** %?\n", target = "~/notes/history.org" },
		g = { description = "Graphics Note", template = "* %T \n** %?\n", target = "~/notes/graphics.org" },
		p = { description = "Photography Note", template = "* %T \n** %?\n", target = "~/notes/photography.org" },
		a = { description = "AP Comp Sci Note", template = "* %T \n** %?\n", target = "~/notes/apcompsci.org" },
		y = { description = "Physics Note", template = "* %T \n** %?\n", target = "~/notes/physics.org" },
		m = { description = "Math Note", template = "* %T \n** %?\n", target = "~/notes/math.org" },
		e = { description = "English Note", template = "* %T \n** %?\n", target = "~/notes/english.org" }
	},

	-- Priorities
	org_priority_highest = 1,
	org_priority_default = 2,
	org_priority_lowest = 3,

	-- Hide scheduled or deadline entries if they are done
	org_agenda_skip_scheduled_if_done = true,
	org_agenda_skip_deadline_if_done = true,

	-- Tag settings
	
	-- Allow child tags to inheirit parent tags
	org_use_tag_inheritance = true,
	
	-- Tags to exclude from inheiritance
	org_tags_exclude_from_inheritance = {},

	--
})
