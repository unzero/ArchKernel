;-------------------------------------Archivo de dominio para BIND ----------------------------
;Escrito por: Ciro Iván García López - Universidad Nacional de Colombia

;
; BIND data file for local loopback interface
;
$TTL  604800
@  IN SOA   ball.com. root.ball.com. (
               7     ; Serial
          604800     ; Refresh
           86400     ; Retry
         2419200     ; Expire
          604800 )   ; Negative Cache TTL
;
@  IN NS nagisa.ball.com.
nagisa.ball.com.  IN    A  192.168.1.57
@  IN NS corporativa.ball.com.
corporativa.ball.com.   IN A  192.168.1.57

ftp   IN A  192.168.1.55
