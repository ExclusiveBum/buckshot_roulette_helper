cmake_minimum_required(VERSION 3.21.1)

project(Buckshot_Roulette_Helper LANGUAGES CXX)

# Automatyczne generowanie plików
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOGEN_TARGETS_FOLDER "CMakeAutomocTargets")

# Standard C++
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
message(STATUS "Katalog wyjściowy: ${CMAKE_BINARY_DIR}")

# Znalezienie pakietów Qt i Vulkan
find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick)
find_package(Vulkan REQUIRED)

# Pliki źródłowe
set(RESOURCES_FILE resources.qrc)

qt6_add_executable(Buckshot_Roulette_Helper
    sources/main.cpp
    sources/controller.h sources/controller.cpp
    ${RESOURCES_FILE}
)
qt6_add_resources(Buckshot_Roulette_Helper
    ${RESOURCES_FILE})

# Ścieżka względna do resources.qrc


# qt6_add_qml_module(Buckshot_Roulette_Helper
#     URI "Buckshot_Roulette_Helper"
#     VERSION 1.0
#     RESOURCE_PREFIX "/qt/qml"
#     OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/qt/qml/Buckshot_Roulette_Helper"
#     QML_FILES
#         "Screen01.ui.qml"
#         "Screen02.ui.qml"
#         "App.qml"
#     RESOURCES
#         ${RESOURCES_FILE}
#     SOURCES
#         "sources/controller.h"
#         "sources/controller.cpp"
# )

# Linkowanie bibliotek Qt i Vulkan
target_link_libraries(Buckshot_Roulette_Helper PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
    Vulkan::Vulkan
)
