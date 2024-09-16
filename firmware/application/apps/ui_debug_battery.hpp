#ifndef __UI_DEBUG_BATTERY_HPP__
#define __UI_DEBUG_BATTERY_HPP__

#include "ui.hpp"
#include "ui_widget.hpp"
#include "ui_navigation.hpp"
#include "battery.hpp"

namespace ui {

class BatteryCapacityView : public View {
   public:
    BatteryCapacityView(NavigationView& nav);
    ~BatteryCapacityView();
    void focus() override;
    std::string title() const override { return "Battery Registers"; }

   private:
    struct RegisterEntry {
        std::string name;
        uint8_t address;
        std::string type;
        float scalar;
        bool is_signed;
        std::string unit;
        bool abbr_units;
        int resolution;
        bool is_user;
        bool is_save_restore;
        bool is_nv;
        uint16_t por_data;
        bool is_read_only;
    };

    static RegisterEntry get_entry(size_t index);
    static size_t get_entry_count();

    Labels labels;
    std::array<Text, 16> name_texts;
    std::array<Text, 16> addr_texts;
    std::array<Text, 16> hex_texts;
    std::array<Text, 16> value_texts;

    Button button_prev;
    Button button_next;
    Text page_text;
    Button button_done;

    void update_values();
    void populate_page(int start_index);
    void update_page_text();
    int current_page = 0;
    static constexpr int ENTRIES_PER_PAGE = 16;
};

}  // namespace ui

#endif  // __UI_DEBUG_BATTERY_HPP__