/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* 0 if you do not want the Andes JTAG Programmer. */
#define BUILD_AICE 1

/* 0 if you don't want the Amontec JTAG-Accelerator driver. */
#define BUILD_AMTJTAGACCEL 0

/* 0 if you do not want the Olimex ARM-JTAG-EW Programmer. */
/* #undef BUILD_ARMJTAGEW */

/* 0 if you don't want at91rm9200. */
#define BUILD_AT91RM9200 0

/* 0 if you don't want bcm2835gpio. */
#define BUILD_BCM2835GPIO 0

/* 0 if you don't want the Buspirate JTAG driver. */
#define BUILD_BUSPIRATE 0

/* 0 if you do not want the CMSIS-DAP Compliant Debugger. */
/* #undef BUILD_CMSIS_DAP */

/* 0 if you don't want dummy driver. */
#define BUILD_DUMMY 0

/* 0 if you don't want ep93xx. */
#define BUILD_EP93XX 0

/* 0 if you do not want the Bitbang mode of FT232R based devices. */
#define BUILD_FT232R 1

/* 0 if you do not want the MPSSE mode of FTDI based devices. */
#define BUILD_FTDI 1

/* 0 if you do not want the cJTAG OSCAN1 tunneled thru MPSSE. */
#define BUILD_FTDI_OSCAN1 1

/* 0 if you don't want the Gateworks GW16012 driver. */
#define BUILD_GW16012 0

/* 0 if you want the High Level JTAG driver. */
#define BUILD_HLADAPTER 1

/* 0 if you do not want the TI ICDI JTAG Programmer. */
#define BUILD_HLADAPTER_ICDI 1

/* 0 if you do not want the ST-Link JTAG Programmer. */
#define BUILD_HLADAPTER_STLINK 1

/* 0 if you don't want imx_gpio. */
#define BUILD_IMX_GPIO 0

/* 0 if you do not want the SEGGER J-Link Programmer. */
#define BUILD_JLINK 1

/* 0 if you don't want JTAG VPI. */
#define BUILD_JTAG_VPI 0

/* 0 if you do not want the Cypress KitProg Programmer. */
/* #undef BUILD_KITPROG */

/* Use the dummy minidriver. */
/* #undef BUILD_MINIDRIVER_DUMMY */

/* 0 if you don't want the OpenOCD+trace ETM capture driver. */
#define BUILD_OOCD_TRACE 0

/* 0 if you do not want the eStick/opendous JTAG Programmer. */
#define BUILD_OPENDOUS 1

/* 0 if you do not want the OpenJTAG Adapter. */
#define BUILD_OPENJTAG 1

/* 0 if you do not want the OSBDM (JTAG only) Programmer. */
#define BUILD_OSBDM 1

/* 0 if you don't want parport. */
#define BUILD_PARPORT 0

/* 0 if you do not want the ASIX Presto Adapter. */
#define BUILD_PRESTO 1

/* 0 if you don't want the Remote Bitbang JTAG driver. */
#define BUILD_REMOTE_BITBANG 0

/* 0 if you do not want the Raisonance RLink JTAG Programmer. */
/* #undef BUILD_RLINK */

/* 0 if you don't want SysfsGPIO driver. */
#define BUILD_SYSFSGPIO 0

/* 0 if you don't want 64-bit addresses. */
#define BUILD_TARGET64 1

/* 0 if you do not want the Keil ULINK JTAG Programmer. */
#define BUILD_ULINK 1

/* 0 if you do not want the USBProg JTAG Programmer. */
/* #undef BUILD_USBPROG */

/* 0 if you do not want the Altera USB-Blaster Compatible. */
#define BUILD_USB_BLASTER 1

/* 0 if you do not want the Altera USB-Blaster II Compatible. */
#define BUILD_USB_BLASTER_2 1

/* 0 if you do not want the Versaloon-Link JTAG Programmer. */
#define BUILD_VSLLINK 1

/* 0 if you do not want the TI XDS110 Debug Probe. */
#define BUILD_XDS110 1

/* 0 if you don't want ZY1000. */
#define BUILD_ZY1000 0

/* 0 if you don't want ZY1000 JTAG master registers. */
#define BUILD_ZY1000_MASTER 0

/* Define to 1 if you have the <arpa/inet.h> header file. */
#define HAVE_ARPA_INET_H 1

/* Define to 1 if you have the <dirent.h> header file. */
#define HAVE_DIRENT_H 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the <elf.h> header file. */
#define HAVE_ELF_H 1

/* Define to 1 if you have the <fcntl.h> header file. */
#define HAVE_FCNTL_H 1

/* Define to 1 if you have the `gettimeofday' function. */
#define HAVE_GETTIMEOFDAY 1

/* Define to 1 if you have the <ifaddrs.h> header file. */
#define HAVE_IFADDRS_H 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <jtag_minidriver.h> header file. */
/* #undef HAVE_JTAG_MINIDRIVER_H */

/* Define if you have libusb-1.x */
#define HAVE_LIBUSB1 1

/* Define if your libusb has libusb_error_name() */
#define HAVE_LIBUSB_ERROR_NAME 1

/* Define if your libusb has libusb_get_port_numbers() */
#define HAVE_LIBUSB_GET_PORT_NUMBERS 1

/* Define to 1 if the system has the type 'long long int'. */
#define HAVE_LONG_LONG_INT 1

/* Define to 1 if you have the <malloc.h> header file. */
#define HAVE_MALLOC_H 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the <netdb.h> header file. */
#define HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#define HAVE_NETINET_IN_H 1

/* Define to 1 if you have the <netinet/tcp.h> header file. */
#define HAVE_NETINET_TCP_H 1

/* Define to 1 if you have the <net/if.h> header file. */
#define HAVE_NET_IF_H 1

/* Define to 1 if you have the <poll.h> header file. */
#define HAVE_POLL_H 1

/* Define to 1 if you have the <pthread.h> header file. */
#define HAVE_PTHREAD_H 1

/* Define to 1 if you have the `realpath' function. */
#define HAVE_REALPATH 1

/* Define to 1 if stdbool.h conforms to C99. */
#define HAVE_STDBOOL_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strndup' function. */
#define HAVE_STRNDUP 1

/* Define to 1 if you have the `strnlen' function. */
#define HAVE_STRNLEN 1

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#define HAVE_SYS_IOCTL_H 1

/* Define to 1 if you have the <sys/io.h> header file. */
/* #undef HAVE_SYS_IO_H */

/* Define to 1 if you have the <sys/param.h> header file. */
#define HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
#define HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#define HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/sysctl.h> header file. */
#define HAVE_SYS_SYSCTL_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if the system has the type 'unsigned long long int'. */
#define HAVE_UNSIGNED_LONG_LONG_INT 1

/* Define to 1 if you have the `usleep' function. */
#define HAVE_USLEEP 1

/* Define to 1 if you have the `vasprintf' function. */
#define HAVE_VASPRINTF 1

/* Define to 1 if the system has the type `_Bool'. */
#define HAVE__BOOL 1

/* 0 if not building for Cygwin. */
#define IS_CYGWIN 0

/* 0 if not building for Darwin. */
#define IS_DARWIN 0

/* 0 if not building for Mingw. */
#define IS_MINGW 0

/* 0 if not building for Win32. */
#define IS_WIN32 0

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#define LT_OBJDIR ".libs/"

/* Define to 1 if assertions should be disabled. */
/* #undef NDEBUG */

/* Must declare 'environ' to use it. */
/* #undef NEED_ENVIRON_EXTERN */

/* Name of package */
#define PACKAGE "openocd"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "OpenOCD Mailing List <openocd-devel@lists.sourceforge.net>"

/* Define to the full name of this package. */
#define PACKAGE_NAME "openocd"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "openocd 0.10.0+dev"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "openocd"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "0.10.0+dev"

/* 0 if you don't want parport to use giveio. */
#define PARPORT_USE_GIVEIO 0

/* 0 if you don't want parport to use ppdev. */
#define PARPORT_USE_PPDEV 1

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* Version number of package */
#define VERSION "0.10.0+dev"

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
/* #  undef WORDS_BIGENDIAN */
# endif
#endif

/* Include malloc free space in logging */
/* #undef _DEBUG_FREE_SPACE_ */

/* Print verbose JTAG I/O messages */
/* #undef _DEBUG_JTAG_IO_ */

/* Print verbose USB communication messages */
/* #undef _DEBUG_USB_COMMS_ */

/* Print verbose USB I/O messages */
/* #undef _DEBUG_USB_IO_ */

/* Use GNU C library extensions (e.g. stdndup). */
#define _GNU_SOURCE 1

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */


#include <helper/system.h>
#include <helper/types.h>
#include <helper/replacements.h>

