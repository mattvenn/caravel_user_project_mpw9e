#include <firmware_apis.h> // include required APIs
void main(){
   // Enable managment gpio as output to use as indicator for finishing configuration 
   flash_phy_clk_divisor_write(0);
   ManagmentGpio_outputEnable();
   ManagmentGpio_write(0);
   enableHkSpi(0); // disable housekeeping spi
   //GPIOs_configureAll(GPIO_MODE_MGMT_STD_OUT);
   for (int pin = 8 ; pin <= 13; pin ++)
	   GPIOs_configure(pin, GPIO_MODE_USER_STD_INPUT_NOPULL);
   for (int pin = 14 ; pin <= 17; pin ++)
	   GPIOs_configure(pin, GPIO_MODE_USER_STD_OUTPUT);

   GPIOs_loadConfigs();
   LogicAnalyzer_outputEnable(LA_REG_0, 0);
   LogicAnalyzer_write(LA_REG_0, 1);
   LogicAnalyzer_write(LA_REG_0, 0);
   ManagmentGpio_write(1); // configuration finished 

   
   return;
}
