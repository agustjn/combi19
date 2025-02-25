Class {
	#name : #AdvertiseComponent,
	#superclass : #WAComponent,
	#category : #'ING2-COMBI19-UI-ALL-UI'
}

{ #category : #rendering }
AdvertiseComponent >> renderContentOn: aCanvas [
	aCanvas horizontalRule.
	aCanvas heading level:4; with:'Hubo un error con su intento de registro'.
	aCanvas
		text: 'Su error pudo haber sido cualquiera de los siguientes:'.
	aCanvas
		div: [ aCanvas
				unorderedList: [ aCanvas listItem: 'Su contraseña no tiene mas de 5 digitos'.
					aCanvas
						listItem: 'Su correo electronico ya existe en el 	sistema'.
					aCanvas listItem: 'Su edad es menor a 18 años' ] ]
]
