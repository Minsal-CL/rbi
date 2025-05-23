Instance:       riap-estadificacion-tnm-ex
InstanceOf:     EstadificacionTNM
Usage:          #example
Title:          "Observacion de Ejemplo: Grupo Estadificación TNM"
Description:    "Ejemplo de una observación del grupo de estadificacion TNM de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#399588009
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* hasMember[CategoriaT] = Reference(riap-tnm-categoria-tumor-primario-ex)
* hasMember[CategoriaN] = Reference(riap-tnm-categoria-nodo-regional-ex)
* hasMember[CategoriaM] = Reference(riap-tnm-categoria-metastasis-distantel-ex)