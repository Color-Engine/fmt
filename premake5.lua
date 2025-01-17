project "fmt"
	language "C++"
	cppdialect "C++17"
	kind "StaticLib"
	
	targetdir "%{OutputDir.Binaries}/%{prj.name}"
	objdir    "%{OutputDir.Objects}/%{prj.name}"
	
	files
	{
		"include/**.h",
		"src/fmt.cc"
	}
	
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"
	
	filter "configurations:Development"
		runtime "Debug"
		symbols "On"
		
	filter "configurations:Preview or Shipping"
		runtime "Release"
		optimize "Speed"
	