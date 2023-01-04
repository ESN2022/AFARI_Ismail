#include <stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>


int i=0;

int main(){
	while(1){
		for(i=0; i<7; i++){
		IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,i<<1);
		usleep(3000);
		}
		for(i=7; i>0; i--){
		IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,i<<0);
		usleep(3000);
		}
	}
	return 0;
}