/*MODULO DE PRUEBA 
 * DESARROLADO PARA LA CASE DE  SO
 *
 * DESARROLLADO POR:
 * CIRO IVAN GARCIA
 * JUAN CAMILO NEIVA 
 * ALEX EMILBERT ORTIZ
 * DAVID RICARDO DAGER
 *
 * PRESENTADO A:
 * LEONARDO QUINONES
 *
 *
 * FACULTAD DE INGENIERIA 
 * UNIVERSIDAD NACIONAL DE COLOMBIA
 * BOGOTA DC 2014
 *
 *
 * ESTE MODULO FUE DESARROLLADO PARA ARCH LINUX 
 * PARA PODER COMPILARLO ES NECESARIO TENER LOS ARCHIVOS HEADER DE LINUX
 * sudo pacman -S linux-headers
 * ADEMAS ES NECESARIO TENER EL SISTMA ACTUALIZADO
 * a la fecha del 28/06/14 la version es la 3.15.1-1-ARCH
 * CON ESTOS REQUISITOS SE PROCEDE A COMPILAR EL MODULO
 * make
 * Y LUEGO A EJECUTARLO
 * insmod so_module.ko
 */

#include<linux/init.h>
#include<linux/kernel.h>
#include<linux/module.h>

MODULE_AUTHOR("Ciro Garcia");
MODULE_VERSION("0.01");
MODULE_LICENSE("GPL V3");
MODULE_DESCRIPTION("Este es un modulo desarrollado para la clase se SO en la UNAL BOGOTA");

static void so_module_exit(void)
{
    printk("<1> Saliendo del modulo\nSayounara\n");
}

int init_module(void)
{
    printk("<1> Saludos Terricolas\n");
    return 0;
}

module_exit(so_module_exit);

/*void cleanup_module(void)
{
    printk("<1> Cleanup del modulo\n");
}*/
