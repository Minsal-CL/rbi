Instance:       riap-tamano-tumor-ex
InstanceOf:     TamanoTumorRIAP
Usage:          #example
Title:          "Observacion de Ejemplo: Tamaño del Tumor"
Description:    "Ejemplo de una observación de tamaño del tumor de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#21889-1
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* component[DimensionLargoTumor]
  * code = http://loinc.org#33728-7
  * valueQuantity
    * value = 1.5
    * unit = "cm"
    * system = "http://unitsofmeasure.org"
    * code = #cm
* component[OtrasDimensionesTumor][0]
  * code = http://loinc.org#33729-5
  * valueQuantity
    * value = 1.2
    * unit = "cm"
    * system = "http://unitsofmeasure.org"
    * code = #cm
* component[OtrasDimensionesTumor][1]
  * code = http://loinc.org#33729-5
  * valueQuantity
    * value = 0.7
    * unit = "cm"
    * system = "http://unitsofmeasure.org"
    * code = #cm