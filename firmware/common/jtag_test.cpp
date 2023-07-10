// Include the necessary headers for time delay functions (specific to your platform)
#include <chrono>
#include <thread>

// GPIO register addresses
volatile uint32_t* const GPIO_DATA_IN = ...;    // Address of GPIO input data register
volatile uint32_t* const GPIO_DATA_OUT = ...;   // Address of GPIO output data register
volatile uint32_t* const GPIO_DIRECTION = ...;  // Address of GPIO direction register

// GPIO pin numbers for JTAG signals
const uint32_t TDI_PIN = ...;
const uint32_t TDO_PIN = ...;
const uint32_t TCK_PIN = ...;
const uint32_t TMS_PIN = ...;

// Delay between TCK transitions (adjust as needed)
const uint32_t TCK_DELAY_US = 1;

// Function to shift data into TDI pin
void jtag_shift_data(uint64_t data, int bit_length) {
    for (int i = bit_length - 1; i >= 0; --i) {
        bool bit = (data >> i) & 1;
        // Set TDI_PIN to bit
        if (bit)
            *GPIO_DATA_OUT |= (1 << TDI_PIN);
        else
            *GPIO_DATA_OUT &= ~(1 << TDI_PIN);

        // Clock TCK_PIN
        *GPIO_DATA_OUT |= (1 << TCK_PIN);
        *GPIO_DATA_OUT &= ~(1 << TCK_PIN);
    }
}

// Function to execute the JTAG commands
void executeJTAGCommands() {
    // Set up GPIO pins and JTAG signals (specific to your hardware)

    // ENDDR IDLE
    jtag_shift_data(0x0, 1);
    jtag_clock_tck();

    // ENDIR IDLE
    jtag_shift_data(0x0, 1);
    jtag_clock_tck();

    // STATE IDLE
    jtag_shift_data(0x0, 1);
    jtag_clock_tck();

    // RUNTEST 1 TCK
    jtag_clock_tck();

    // SIR 10 TDI (3f8)
    jtag_shift_data(0x3f8, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SIR 10 TDI (3f9)
    jtag_shift_data(0x3f9, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SIR 10 TDI (3f8)
    jtag_shift_data(0x3f8, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SIR 10 TDI (6)
    jtag_shift_data(0x6, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SDR 32 TDI (00000000) TDO (00025610) MASK (ffffffff)
    jtag_shift_data(0x00000000, 32);

    // SIR 10 TDI (3fc)
    jtag_shift_data(0x3fc, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SDR 8 TDI (f8)
    jtag_shift_data(0xf8, 8);

    // SIR 10 TDI (3fe)
    jtag_shift_data(0x3fe, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // RUNTEST 0.5 SEC (assuming a delay of 0.5 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(500));

    // SIR 10 TDI (3fc)
    jtag_shift_data(0x3fc, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SDR 8 TDI (f8)
    jtag_shift_data(0xf8, 8);

    // SIR 10 TDI (3fa)
    jtag_shift_data(0x3fa, 10);

    // RUNTEST 100 TCK
    for (int i = 0; i < 100; ++i) {
        // Shift any necessary data into TDI pin
        jtag_shift_data(/* Data to be shifted into TDI pin */, /* Bit length */);
        jtag_clock_tck();
    }

    // SDR 64 TDI (90e0000000010040)
    jtag_shift_data(0x90e0000000010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (086a400020010040)
    jtag_shift_data(0x086a400020010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (ffff000010010040)
    jtag_shift_data(0xffff000010010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (0400004530010040)
    jtag_shift_data(0x0400004530010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (04f0200008010040)
    jtag_shift_data(0x04f0200008010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (b385942c28010040)
    jtag_shift_data(0xb385942c28010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (c2ca165018010040)
    jtag_shift_data(0xc2ca165018010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (650b20f138010040)
    jtag_shift_data(0x650b20f138010040, 64);

    // RUNTEST 0.002 SEC (assuming a delay of 0.002 seconds)
    std::this_thread::sleep_for(std::chrono::milliseconds(2));

    // SDR 64 TDI (85942c8104010040)
    jtag_shift_data(0x85942c8104010040, 64);

    // End of JTAG commands
}

int main() {
    // Call the function to execute the JTAG commands
    executeJTAGCommands();

    return 0;
}