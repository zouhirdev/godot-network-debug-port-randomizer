tool
extends EditorPlugin


const RANGE_MIN = 1000
const RANGE_MAX = 9999

func build():
	var interface = self.get_editor_interface()
	var settings = interface.get_editor_settings()
	var port = randi() % RANGE_MAX + RANGE_MIN
	settings.set('network/debug/remote_port', port)
	prints("Set port to in settings to", port)
	return true
