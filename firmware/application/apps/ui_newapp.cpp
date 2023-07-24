#include "ui_newapp.hpp"
#include "portapack.hpp"
#include <cstring>

using namespace portapack;

namespace ui {

void NewAppView::focus() {  // Default selection to button_helloWorld when app starts
    button_helloWorld.focus();
}

NewAppView::NewAppView(NavigationView& nav)  // Application Main
{
    add_children({
        // Add pointers for widgets
        &button_helloWorld,
        &label_progress,
        &numberField_progress,
        &progressBar_progress,
        &timestamp,
    });

    progressBar_progress.set_max(PROGRESS_MAX);  // Set max for progress bar

    button_helloWorld.on_select = [this](Button&) {  // Button logic
        if (progress < 100) {
            numberField_progress.set_value(100);  // Because numberField_progress has an on_change function,
        } else {                                  // progressBar_progress will update automatically.
            numberField_progress.set_value(0);
        }
    };

    numberField_progress.on_change = [this](int32_t v) {  // When NumberField is changed
        progress = v;
        // int data = read_file("/hardware/settings.txt");
        runAppFromSDCard();
        // progressBar_progress.set_value(data);
        progressBar_progress.set_value(progress);
    };

    timestamp.set_seconds_enabled(true);  // DateTime enable seconds
}

void NewAppView::update()  // Every time you get a DisplayFrameSync message this
{                          // function will be ran.
                           // Message code
}

void NewAppView::runAppFromSDCard() {
    // Assume the SD card is already initialized and mounted.

    // Open the app binary file for reading
    // File appFile = SD.open(appName, FILE_READ);
    File appFile;
    auto success = appFile.open("/hardware/app.elf");
    // File appFile = SD.open("/app.elf", FILE_READ);
    if (success.is_valid()) {
        // Handle file opening failure
        return;
    }

    // Calculate the size of the binary file
    size_t fileSize = appFile.size();

    // Allocate memory to store the binary data
    char* appBuffer = new char[fileSize];
    if (!appBuffer) {
        // Handle memory allocation failure
        // appFile.close();
        return;
    }

    // Read the binary data into the buffer
    appFile.read(appBuffer, fileSize);
    // appFile.close();


    // Cast the buffer to a function pointer type
    using AppEntryPoint = void (*)();
    AppEntryPoint entryPoint = reinterpret_cast<AppEntryPoint>(appBuffer);

    // Call the application entry point
    entryPoint();
}

int NewAppView::read_file(std::string name) {
    std::string return_string = "";
    File file;
    auto success = file.open(name);

    if (!success.is_valid()) {
        char one_char[1];
        for (size_t pointer = 0; pointer < file.size(); pointer++) {
            file.seek(pointer);
            file.read(one_char, 1);
            return_string += one_char[0];
        }
        return std::stoi(return_string);
    }
    return 50;
}
}  // namespace ui