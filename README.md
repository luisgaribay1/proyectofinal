Proyecto de despliegue en sistema ORIENTANET 
Problematica
En la actualidad los estudiantes de nivel secundario y preuniversitario enfrentan una gran dificultad para elegir correctamente una carrera profesional debido a la falta de orientación personalizada y accesible. Muchos toman decisiones basadas en presión familiar o desinformación, lo cual puede afectar su rendimiento y bienestar académico a largo plazo
-----------------------------------------------------------------------------
Integrantes:
Tandaypan Garibay
Talledo Luis 
Cevallos Alonso
Docente:
Leturia Walter
-----------------------------------------------------------------------------
Flujo del sistema Orientanet (Arquitectura Serverless en AWS)
Cliente / Web Application
El usuario accede desde su navegador a la aplicación. La solicitud viaja por HTTPS a través de internet.

CloudFront
AWS CloudFront es un CDN (Content Delivery Network) que distribuye el contenido estático (Angular) con baja latencia. Acelera la entrega del frontend desde el Amazon S3.

Amazon S3 (Web Source Bucket)
Contiene el código fuente del frontend Angular. S3 actúa como hosting estático y sirve la aplicación al navegador del usuario.

Amazon Cognito (User Pool e Identity Pool)
Maneja la autenticación y autorización:

User Pool: valida usuarios (registro, login).

Identity Pool: entrega credenciales temporales para acceder a otros servicios AWS de forma segura.

IAM (Identity and Access Management)
Define los permisos que tiene cada usuario autenticado (qué puede hacer y a qué servicios puede acceder).

Amazon API Gateway
Es la puerta de entrada para todas las peticiones del frontend al backend. Recibe las solicitudes HTTPS del cliente y las enruta a funciones Lambda.

AWS Lambda (con Spring Boot)
Función sin servidor que contiene la lógica del backend. Aquí se ejecutan operaciones como guardar usuarios, consultar carreras, etc. Usa Spring Boot para estructurar los servicios.

DynamoDB
Base de datos NoSQL totalmente gestionada por AWS. Guarda la información persistente del sistema (por ejemplo: estudiantes, carreras, etc.).
