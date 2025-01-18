project "fmt"
	language "C++"
	cppdialect "C++17"
	kind "StaticLib"
	
	targetdir "%{OutputDir.Binaries}/%{prj.name}"
	objdir    "%{OutputDir.Objects}/%{prj.name}"
	
	files
	{
		"include/**.h",
		"src/format.cc",
		"src/os.cc"
	}
	
	includedirs
	{
		"include"
	}
	
	defines
	{
		"_SILENCE_ALL_MS_EXT_DEPRECATION_WARNINGS",
		"_CRT_SECURE_NO_WARNINGS"
	}
	
	filter "system:windows"
		systemversion "latest"
	
	filter "configurations:Development"
		runtime "Debug"
		symbols "On"
		
	filter "configurations:Preview or Shipping"
		runtime "Release"
		optimize "Speed"
	