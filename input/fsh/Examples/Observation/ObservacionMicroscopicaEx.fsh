Instance:       riap-observacion-microscopica-ex
InstanceOf:     ObservacionMicroscopicaRIAP
Usage:          #example
Title:          "Observacion de Ejemplo: Microscopía"
Description:    "Ejemplo de una observación microsópica de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#102034-6
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* valueString = "Se observa tejido mamario con células epiteliales y estromales, con signos de malignidad con metastasis en ganglios linfáticos"
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"