#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>


#define iowrite32(v,a)	*((unsigned int*)(a)) = (v)
#define ioread32(a)		(*((unsigned int*)(a)))


/* Cyclone V FPGA devices */
#define HW_REGS_BASE  0xff200000
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

#define DIPSW_PIO_BASE 0x10080
#define FPGA_REGS_SPAN 0x20000


int main() {
	int fd;
	unsigned int i =0;
	
	//unsigned int distance;
	unsigned int distance2;
	unsigned int sw, sw_prev;
	
	volatile unsigned int *h2p_lw_switch_addr=NULL;
    void *h2p_lw_virtual_base;
	
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}
	
	printf("/dev/mem opened\n");
	
	
	h2p_lw_virtual_base = mmap( NULL, FPGA_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );
	
	
	if( h2p_lw_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return( 1 );
	}
	
	// Get the address that maps to the SW (switch)
	h2p_lw_switch_addr =(unsigned int *)(h2p_lw_virtual_base + DIPSW_PIO_BASE);
	
	printf("memory mapped\n");
	
	i = 0;
	sw_prev = ioread32(h2p_lw_switch_addr);
	while (i < 100000)
		//iowrite32(i, io_led);
		sw = ioread32(h2p_lw_switch_addr);
		if(sw_prev != sw) {
			printf("Switch = %x \t", sw&0xC);
			printf("Switch = %x \t Angle = %d", 45 * (sw&0xC >> 2));
			sw_prev = sw;
			i++;
		}
	}
	

	munmap(h2p_lw_virtual_base, 0x100);
	
	
	printf("memory unmapped\n");
	
	close(fd);
	return( 0 );
}