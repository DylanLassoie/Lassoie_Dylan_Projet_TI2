-- Table: public.client

-- DROP TABLE IF EXISTS public.client;

CREATE TABLE IF NOT EXISTS public.client
(
    idclient integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 0 MAXVALUE 100 CACHE 1 ),
    nom text COLLATE pg_catalog."default" NOT NULL,
    prenom text COLLATE pg_catalog."default" NOT NULL,
    adresse text COLLATE pg_catalog."default" NOT NULL,
    numTel integer NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    mdp text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT client_pkey PRIMARY KEY (idclient),
    CONSTRAINT "emailUnique" UNIQUE (email),
    CONSTRAINT "idClientUnique" UNIQUE (idclient),
    CONSTRAINT "numTelUnique" UNIQUE (numTel)
    )

    TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.client
    OWNER to "Dylan";

COMMENT ON TABLE public.client
    IS 'Contient les comptes des clients';


-- Table: public.admin

-- DROP TABLE IF EXISTS public.admin;

CREATE TABLE IF NOT EXISTS public.admin
(
    idAdmin integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 0 MAXVALUE 10 CACHE 1 ),
    nom text COLLATE pg_catalog."default" NOT NULL,
    prenom text COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    mdp text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "idAdminPK" PRIMARY KEY (idAdmin),
    CONSTRAINT "emailAdminUnique" UNIQUE (email)
    )

    TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.admin
    OWNER to "Dylan";

COMMENT ON TABLE public.admin
    IS 'Contient les comptes administrateurs';


-- Table: public.reservation

-- DROP TABLE IF EXISTS public.reservation;

CREATE TABLE IF NOT EXISTS public.reservation
(
    idReservation integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 0 MAXVALUE 100 CACHE 1 ),
    dateReservation date NOT NULL,
    idClient integer NOT NULL,
    nbPersonne integer NOT NULL,
    CONSTRAINT "idReservaitonPK" PRIMARY KEY (idReservation),
    CONSTRAINT "idClientPK" FOREIGN KEY (idClient)
    REFERENCES public.client (idclient) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    )

    TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.reservation
    OWNER to "Dylan";

COMMENT ON TABLE public.reservation
    IS 'Contient les reservations faites par les clients';