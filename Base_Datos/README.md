# Azure Database for MySQL

Para este proyecto se creó un servidor de Azure Database for MySQL mediante Azure Portal, el cual nos permite consumir la información almacenada en la base de datos desde cualquier dispositivo, permitiendonos trabajar de forma colaborativa.

La información del servidor se muestra a continuación:

![Image text](https://github.com/PameFSL/HackTheOcean-LanchX/blob/main/Base_Datos/InstanciaDatabaseMySQL.png)


Con esta información se brinda el acceso al servidor y nos es de ayuda para: 
1. Acceder a la base de datos y realizar modificaciónes (create, update, delete, etc).
2. Consumir la base de datos desde una aplicacion. 



## Configuración - Regla de Firewall de nivel de servidor

Es importante mencionar que para utilizar el servicio se debe configurar el firewall ya que por default Azure proteje el servidor con un firewall y para conectarse se debe proporcionar acceso a la dirección IP como se muestra a continuación:

![Image text](https://github.com/PameFSL/HackTheOcean-LanchX/blob/main/Base_Datos/FirewallRule.png)



## Administración de base de datos
Una vez realizadas las configuraciones necesarias, se procedió a crear la base de datos para poder crear las intancias necesarias y guardar la información correspondiente. 

[Click here to see Script](https://github.com/PameFSL/HackTheOcean-LanchX/blob/main/Base_Datos/script_para_base_de_datos.sql)




## Consumo desde API
Para poder establecer la conexión con el servidor desde nodeJS se siguieron los pasos de este tutorial: 
[Click to see](https://docs.microsoft.com/en-us/azure/azure-sql/database/connect-query-nodejs?view=azuresql&tabs=windows). 

Obteniendo como resultado una conexion exitosa y visualización correcta de la base :D

![Image text](https://github.com/PameFSL/HackTheOcean-LanchX/blob/main/Base_Datos/ConexionNodeJS.png)
