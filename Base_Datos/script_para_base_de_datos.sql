
# ***********************************************************
# Script utlilizado para crear la base de datos, la tabla y poblarla con datos
# *********************************************************** 

# Paso 1, creamos una base de datos con el nombre animalesDB.
CREATE DATABASE animalesDB;

# Paso 2, Utilizamos nuestra base de datos.
USE animalesDB;


# Muestra las bases de datos existentes
SHOW DATABASES;

# Paso 3, se crea la tabla EndangeredAnimals, la cual contendra la informacion de los animales en peligro de extencion
CREATE Table EndangeredAnimals (
            idAnimal INT UNSIGNED NOT NULL AUTO_INCREMENT,
            nameAnimal varchar(80) NOT NULL,
            imageURL varchar(180), 
            descripcion varchar(280), 
            ubicacion varchar(280), 
            esListaRoja varchar(10), 
            noEjemplares varchar(180), 
            PRIMARY KEY (idAnimal)
        );


# Paso 4, se inserta informacion de Tortuga Carey
INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        'Tortuga carey',
		'https://energiahoy.com/wp-content/uploads/2021/06/Tortuga_carey.jpeg',
        'Las tortugas carey, que no son particularmente grandes comparadas con otras tortugas marinas, llegan a medir hasta 114 centímetros respecto del tamaño de su caparazón y a pesar 68 kilogramos. De jóvenes, su caparazón tiene la forma de un corazón y, a medida que van creciendo, se extiende. Su caparazón de colores asombrosos es serrado y posee esculetos solapados o piezas de exoesqueleto gruesas.' ,
        ' se encuentran en las aguas tropicales de los océanos Atlántico, Pacífico e Índico. ' ,
        'Y', 
        'Al igual que muchas tortugas marinas, las carey están en peligro crítico de extinción principalmente debido al impacto humano..' );

# Paso 5, se inserta informacion de Vaquita marina
INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        'Vaquita marina',
		'https://www.durangomas.mx/wp-content/uploads/2020/09/images.jpeg',
        'La vaquita marina (Phocoena sinus) es uno de los cetáceos más pequeños del mundo, único mamífero marino mexicano miembro de la familia Phocoenidae (marsopas verdaderas), esta especie es endémica de México.' ,
        ' Habita en el norte del Golfo de California. ' ,
        '(P)', 
        ' Los científicos estiman que quedan menos de 20 vaquitas. ' );

# Paso 6, se inserta informacion de Ballena azul
INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        'Ballena azul',
		'https://energiahoy.com/wp-content/uploads/2021/06/Ballena-azul.jpeg',
        'La ballena azul es el animal conocido más grande que jamás haya poblado la Tierra. Estos majestuosos mamíferos marinos dominan los océanos con sus 30 metros de longitud y hasta 180 toneladas de peso.' ,
        ' La ballena azul es una especie cosmopolita que vive en todos los océanos, en México se distribuye en el Océano Pacífico Norte y Golfo de Baja California, en los estados de Baja California, Baja California Sur, Sonora, Sinaloa y Nayarit. ' ,
        ' Y ', 
        ' Quedan entre 10.000 y 25.000 en todo el mundo. ' );

# Paso 7, se inserta informacion de León marino de Steller
INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        'León marino de Steller',
		'https://lpfw.org/wp-content/uploads/2017/12/Stellar-Sea-Lion_Rylee-Isitt.png',
        'El león marino de Steller (Eumetopias jubatus) es una especie de mamífero pinnípedo de la familia de los otáridos.Es el miembro más grande de la familia Otariid y la cuarta especie de foca más larga del mundo.' ,
        ' Se localiza en las frías aguas costeras del Pacífico norte. ' ,
        ' Y ', 
        ' En México se ha estimado el tamaño de su población en alrededor de 93,000 individuos: 63,000 en la costa del Pacífico y 30,000 en el Golfo de California. ' );
        
     # Paso 8, se inserta informacion de Tiburón martillo gigante   
       INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        'Tiburón martillo gigante',
		'https://energiahoy.com/wp-content/uploads/2021/06/Tiburo%CC%81n-martillo-gigante.jpeg',
        'El tiburón martillo es un depredador que utiliza su peculiar cabeza para mejorar su capacidad a la hora de encontrar presas. Sus grandes ojos le confieren un mayor alcance visual que la mayoría de sus parientes, además de tener sus órganos sensoriales a lo largo de su ancha cabeza en forma de mazo que le permiten rastrear a fondo el océano en busca de alimento. ' ,
        ' Podemos encontrarlo surcando las aguas templadas y tropicales de todo el mundo, tanto cerca como lejos de las costas. ' ,
        ' Y ', 
        ' Hay un estudio que muestra que la población de tiburones martillo en 1981 en la Isla Espíritu Santo era alrededor de 425 tiburones, “una abundancia, pues era una cifra realmente alta”, sin embargo, hasta la fecha no se ha hecho ningún estudio para tratar de registrar cuántos hay actualmente. ' );
       
       # Paso 9, se inserta informacion de Delfín de cabeza blanca
        INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        ' Delfín de cabeza blanca',
		'https://energiahoy.com/wp-content/uploads/2021/06/Delfi%CC%81n-de-cabeza-blanca.jpeg',
        ' El delfín de cabeza blanca es el cetáceo de menor tamaño conocido, pertence a la familia Delphinidae. ' ,
        ' El delfín de cabeza blanca o de Héctor es endémico de Nueva Zelanda.  ' ,
        ' Y ', 
        ' Se cree que existen máximo 100 ejemplares en su medio natural. ' );
      
      
        # Paso 10, se inserta informacion de Rocul común
    INSERT INTO EndangeredAnimals VALUES ( 
		NULL, 
        ' Rorcual común',
		'https://energiahoy.com/wp-content/uploads/2021/06/Rorcual-comu%CC%81n.jpeg',
        ' El rorcual común, también llamado ballena de aleta, es una especie de cetáceo misticeto de la familia Balaenopteridae. Es el segundo animal más grande del planeta, solo superado por la ballena azul. ' ,
        ' Se distribuye por la mayoría de los océanos de zonas templadas y polares. Es raro encontrarlos en latitudes tropicales.
			En el Mediterráneo es uno de los misticetos más comunes aunque no tiene un hábitat concreto y se puede encontrar a distintas profundidades. ' ,
        ' Y ', 
        ' Al igual que otros animales también ha sufrido de pesca desmedida, al punto en que su población ronda entre los 100 mil y 119 mil ejemplares. ' );
    
        
# Se muestran las columnas y tipos de datos de la tabla
SHOW COLUMNS FROM EndangeredAnimals;


# Se guardan cambios
commit;


# Se muestra informacion de la tabla, aqui es donde podemos ver los valores que insertamos
SELECT * FROM EndangeredAnimals;



