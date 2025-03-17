-- premake's lua script to create static library project for glfw source code for windows rn
project "glfw"
	kind "StaticLib"
	language "C"

	targetdir ("bin/%{cfg.buildcfg}")
	objdir ("bin-int/%{cfg.buildcfg}")

	files
	{
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",

		"src/internal.h",
		"src/platform.h", 
		"src/mappings.h", 
		"src/null_platform.h",
		"src/null_joystick.h", 
		"src/win32_time.h", 
		"src/win32_thread.h", 
		"src/win32_platform.h",
		"src/win32_joystick.h",
		"src/context.c",
		"src/init.c", 
		"src/input.c", 
		"src/monitor.c",
		"src/platform.c",
		"src/vulkan.c",
		"src/window.c", 
		"src/egl_context.c",
		"src/osmesa_context.c",
		"src/null_init.c",
		"src/null_monitor.c", 
		"src/null_window.c",
		"src/null_joystick.c",
		"src/win32_module.c", 
		"src/win32_time.c",
		"src/win32_thread.c",
		"src/win32_init.c",
		"src/win32_joystick.c",
		"src/win32_monitor.c",
		"src/win32_window.c", 
		"src/wgl_context.c"
	}

	defines
	{
		"WIN32",
		"WINDOWS",
		"_GLFW_WIN32",
		"UNICODE",
		"_UNICODE",
		"_CRT_SECURE_NO_WARNINGS",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
