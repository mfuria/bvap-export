CREATE TABLE "S_CODICE_INVIO" (
	"CODICE_INVIO" CHAR(13) NULL DEFAULT NULL
);

alter table "S_CODICE_INVIO" add ANNO_STAGIONE CHAR(2)
alter table "S_CODICE_INVIO" add STAGIONE CHAR(1)

