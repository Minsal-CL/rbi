Instance:       riap-observacion-infiltracion-perineural-ex
InstanceOf:     ObservacionInfiltracionPerineuralRIAP
Usage:          #example
Title:          "Observacion de Ejemplo: Infiltración Perineural"
Description:    "Ejemplo de una observación de infiltración perineural de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#371513001
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* valueCodeableConcept = $snomed#385001000 "Perineural invasion by tumour not identified"
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"