CREATE TABLE INVERSIONESAPP.INV_PORTAFOLIOS
(
    idPortafolio NUMBER,
    Desc_nombre VARCHAR2(100),
    Num_minimoInversion NUMBER(*,2),
    Num_minimaPermanencia NUMBER(4),
    Num_diasActivacion NUMBER(2),
    Num_penalizacion NUMBER(2,2)
)TABLESPACE TS_INVERSIONES;

--Creación del sinónimo de la tabla para consultas
CREATE SYNONYM PORTAF FOR INVERSIONESAPP.INV_PORTAFOLIOS;

--Creación de constraints
ALTER TABLE INVERSIONESAPP.INV_PORTAFOLIOS ADD CONSTRAINT PK_PORTAF PRIMARY KEY (idPortafolio);


COMMENT ON TABLE INVERSIONESAPP.INV_PORTAFOLIOS IS 'Almacena los datos generales de los portafolios';
COMMENT ON COLUMN INVERSIONESAPP.INV_PORTAFOLIOS.Num_penalizacion IS 'Campo que 
almacena el porcentaje de la penalización a realizar si se deja el portafolio antes de la permanencia mínima del mismo';