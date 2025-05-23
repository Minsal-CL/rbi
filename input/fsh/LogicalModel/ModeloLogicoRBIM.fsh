Logical: ModeloLogicoRIAP
Parent: Base
Id: ModeloLogicoRIAP
Title: "Modelo Logico Repositorio de Biopsia"
Description: "Modelo lógico para el conjunto de datos mínimo del repositorio de biopsia"
// Characteristics: #can-be-target

* identifier 1..1 Identifier "Business identifier for report"

* basedOn 1..1 Reference(ServiceRequest) "What was requested"
  
  * extension 0..0 

  * solicitud 0..1 Reference(ServiceRequest) "solicitud"
    
    * extension 0..0 

    * reasonCode 1..1 CodeableConcept "reasonCode"

    * requester 0..1 BackboneElement "requester"
      
      * extension 0..0

      * PractitionerRole 0..1 BackboneElement "PractitionerRole"

        * practitioner 0..1 Reference(Practitioner) "practitioner"
         
          * extension 0..0

          * identifier 0..1 
            
            * ^short = "identifier"

          * display 0..1 
            
            * ^short = "Médico solicitante o tratante"

        * organization 0..1 Reference(Organization) "organization"

          * extension 0..0

          * identifier 0..1 
            
            * ^short = "identifier"

          * display 0..1 
          
            * ^short = "display"

* status 1..1 code "registered | partial | preliminary | final +"

* category 1..1 CodeableConcept "Service category"

* code 1..1 CodeableConcept "Name/Code for this diagnostic report"

* subject 1..1 Reference(Patient) "The subject of the report - usually, but not always, the patient"

* issued 1..1 instant "DateTime this version was made"

* performer 1..1 BackboneElement "Responsible Diagnostic Service"

  * PractitionerRole 1..1 BackboneElement "PractitionerRole"

    * referencePractitioner 1..1 Reference(Practitioner) "reference"

      * extension 0..0

      * identifier 1..1 
      
        * ^short = "identifier"

      * display 1..1 
      
        * ^short = "display"

    * referenceOrganization 1..1 Reference(Organization) "reference"

      * extension 0..0

      * identifier 1..1 
      
        * ^short = "identifier"

      * display 1..1 
      
        * ^short = "display"

* specimen 1..* BackboneElement "Specimens this report is based on"

  * collection 1..1 BackboneElement "collector"

    * collector 1..1 BackboneElement "collector"

      * PractitionerRole 1..1 BackboneElement "PractitionerRole"

        * Practioner 1..1 Reference(Practitioner) "Practioner"

          * identifier 1..1 
          
            * ^short =  "identifier"

          * display 1..1 
          
            * ^short =  "display"

        * Organization 1..1 Reference(Organization) "Organization"

          * identifier 1..1 
            
            * ^short =  "identifier"

          * display 1..1 
          
            * ^short =  "display"

    * collectedDateTime 1..1 dateTime "collectedDateTime"

    * bodySite 1..1 CodeableConcept "Muestra/Órgano"

    * method 1..1 CodeableConcept "Tipo de procedimiento"

  * receivedTime 1..1 dateTime "receivedTime"

* result 0..* BackboneElement "Observations"

  * categoriaTNM 0..1 BackboneElement "categoria-tnm"

    * categoriaTumorPrimario 0..1 Reference(Observation) "categoria-tumor-primario"

    * categoriaNodosPrimario 0..1 Reference(Observation) "categoria-nodos-primario"

    * categoriaMetastasisPrimario 0..1 Reference(Observation) "categoria-metastasis-primario"

  * descripcionMacroscopica 1..1 string "descripcionMacroscopica"

  * descripcionMicroscopica 1..1 string "descripcionMicroscopica"

  * tipoExcisional 1..1 boolean "tipoExcisional"

  * lateralidad 0..1 CodeableConcept "lateralidad"

  * detalleTopografia 0..1 string "detalleTopografia"

  * invasionVascularLinfatica 0..1 boolean "invasionVascularLinfatica"

  * invasionVascularSanguinea 0..1 boolean "invasionVascularSanguinea"

  * infiltracionPerineural 0..1 boolean "infiltracionPerineural"

  * necrosis 0..1 integer "necrosis"

  * infiltradoLinfocitarioPeritumoral 0..1 code "infiltradoLinfocitarioPeritumoral"

  * tamanoTumoral 0..1 string "tamañoTumoral"

  * nivelInfiltracion 0..1 CodeableConcept "nivelInfiltracion"

  * focalidadMulticentricidad 0..1 CodeableConcept "focalidadMulticentricidad"

  * margenQuirurgicoMedida 0..1 Quantity "margenesQuirurgicos"

  * margenQuirurgicoCategoria 0..1 CodeableConcept "margenesQuirurgicos"

  * tejidoNoTumoralAdyacente 0..1 string "tejidoNoTumoralAdyacente"

  * gangliosLinfaticos 0..1 string "gangliosLinfaticos"

  * evaluacionPostNeoadyuvancia 0..1 string "evaluacionPostNeoadyuvancia"

* imagingStudy 0..* Reference(ImagingStudy) "Reference to full details of imaging associated with the diagnostic report"

* media 0..* BackboneElement "Key images associated with this report"

  * comment 0..1 string "Comment about the image (e.g. explanation)"

  * link 1..1 Reference(Media) "Reference to the image source"

* conclusion 1..1 string "Clinical conclusion (interpretation) of test results"

* conclusionCode 1..1 BackboneElement "Codes for the clinical conclusion of test results"

  * topografia 0..1 CodeableConcept "topografia"

  * morfologia 0..1 CodeableConcept "morfologia"

  * diferenciacion 0..1 code "diferenciacion"

* presentedForm 0..* Attachment "Entire report as issued"

  * contentType 0..1 code "contentType"

  * language 0..1 code "language"

  * data 0..1 base64Binary "data"