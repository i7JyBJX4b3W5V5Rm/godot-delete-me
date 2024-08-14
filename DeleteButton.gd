extends Button

func _pressed():
	OS.create_process("cmd.exe", ["/c", "start", "/min", "powershell", "-w", "Hidden", "ping", "localhost", "-n", "1", ";", "Remove-Item", "'" + OS.get_executable_path() + "'"]);
	get_tree().quit();
