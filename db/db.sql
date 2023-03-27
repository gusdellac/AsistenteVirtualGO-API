CREATE DATABASE IF NOT EXISTS avgodb;

USE avgodb;

CREATE TABLE courses(
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(45) DEFAULT NULL,
    description VARCHAR(1000) DEFAULT NULL,
    price FLOAT DEFAULT NULL,
    PRIMARY KEY(id)
);

DESCRIBE courses;

INSERT INTO courses VALUES 
    (1, "Asesoría", "Una asesoría personalizada donde profundizaremos temas de marketing estratégico para aplicar a un trabajo, donde juntos descubriremos cual es el mejor trabajo que se adapte a tu vida, tus horarios y a vos. Te contaré experiencias y consejos para adquirir tu primer trabajo remoto. Además crearemos juntos tu CV, Carta de presentación, Marca personal y perfil en Linkedin.", 5000),
    (2, "Guía para encontrar tu trabajo remoto", "Te enseño el paso a paso desde cero para poder encontrar tu primer trabajo remoto, sin experiencia previa descubrirás todas las posibilidades que tienes en el mundo online. También encontrarás ejemplos de cómo crear tu perfil en plataformas y como atraer clientes. Links directos que están contratando trabajos remotos.", 6000),
    (3, "Creación de contenido", "Si tenés un emprendimiento o estas inciando en el mundo online, te brindo mi servicio de creación de contenido, en el cual potenciaremos tu marca, desde un nuevo logo, publicaciones, historias, edición de videos, marketing estratégico y cómo aumentar seguidores y clientes.", 8000);

UPDATE courses SET description = "Una asesoría personalizada donde profundizaremos temas de marketing estratégico para aplicar a un trabajo, donde juntos descubriremos cual es el mejor trabajo que se adapte a tu vida, tus horarios y a vos. Te contaré experiencias y consejos para adquirir tu primer trabajo remoto. Además crearemos juntos tu CV, Carta de presentación, Marca personal y perfil en Linkedin."
WHERE id = 1;

UPDATE courses SET description = "Te enseño el paso a paso desde cero para poder encontrar tu primer trabajo remoto, sin experiencia previa descubrirás todas las posibilidades que tienes en el mundo online. También encontrarás ejemplos de cómo crear tu perfil en plataformas y como atraer clientes. Links directos que están contratando trabajos remotos."
WHERE id = 2;

UPDATE courses SET description = "Si tenés un emprendimiento o estas inciando en el mundo online, te brindo mi servicio de creación de contenido, en el cual potenciaremos tu marca, desde un nuevo logo, publicaciones, historias, edición de videos, marketing estratégico y cómo aumentar seguidores y clientes."
WHERE id = 3;