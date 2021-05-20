-- outputdir need to be defined, like:
-- outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "utils"
    language "C++"
    architecture "x86_64"
    cppdialect "C++14"
    kind "StaticLib"

    location "%{prj.name}"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

