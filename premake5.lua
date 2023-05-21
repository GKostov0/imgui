project "ImGui"
  kind "StaticLib"
  language "C++"

targetdir ("bin/" .. outputdir .. "/%{proj.name}")
objdir ("bin-int/" .. outputdir .. "/%{proj.name}")

files
{
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp"
}

filter "system:windows"
  systemversion "latest"
  cppdialect "C++17"
  staticruntime "On"
  
filte { "system:windows", "configuration:Release" }
    buildoptions "/MT"
