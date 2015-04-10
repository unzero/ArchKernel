;-------------------------------------Archivo de dominio para BIND ----------------------------
;Escrito por: Ciro Iván García López - Universidad Nacional de Colombia

;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	nagisa.ball.com. root.ball.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	nagisa.ball.com.
nagisa.ball.com. 	IN 	A	192.168.1.55

