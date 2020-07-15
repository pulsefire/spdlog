
project "Spdlog"
    kind "StaticLib"
    language "C++"
    targetdir "./lib/"
    objdir "./obj/"
    location "./build/"

    files
    {
        "./src/*.cpp"
    }

    includedirs
    {
        "./include/"
    }

    filter "system:Windows"
        cppdialect "C++14"
        staticruntime "On"
        systemversion "latest"

    filter "configurations:Debug"
        defines { "DEBUG", "SPDLOG_COMPILED_LIB", "SPDLOG_ENABLE_PCH" }
        symbols "On"
    
    filter "configurations:Release"
        defines { "NDEBUG", "SPDLOG_COMPILED_LIB", "SPDLOG_ENABLE_PCH" }
        optimize "ON"

    filter {}
