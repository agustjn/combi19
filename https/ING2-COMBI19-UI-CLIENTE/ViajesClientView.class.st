Class {
	#name : #ViajesClientView,
	#superclass : #WAComponent,
	#instVars : [
		'parent',
		'filtro'
	],
	#category : #'ING2-COMBI19-UI-CLIENTE-Viajes-UI'
}

{ #category : #'instance creation' }
ViajesClientView class >> newWithParent: aParent [
	^ self new parent: aParent
]

{ #category : #'as yet unclassified' }
ViajesClientView >> buscarPorFiltro: html [
	| viajesFiltrados |
	"self model administrador viajes isEmpty"
	viajesFiltrados := self session user buscarViajeFiltradoPor: filtro.
	viajesFiltrados isEmpty
		ifTrue: [ html heading level4
				with: 'No hay viajes ' , filtro , 's para mostrar ' ]
		ifFalse: [ html unorderedList
				class: 'row';
				with: [ viajesFiltrados
						do: [ :viaje | 
							html listItem
								class: 'card col-md-4 bg-white border-warning mx-5 my-3';
								with: [ html
										render:
											(ViajeSeleccionView
												newWithParent: self
												delViaje: viaje
												conFiltro: filtro) ] ] ] ]
]

{ #category : #accessing }
ViajesClientView >> filtro [
	^filtro
]

{ #category : #accessing }
ViajesClientView >> filtro: unFiltro [
	filtro := unFiltro 
]

{ #category : #accessing }
ViajesClientView >> model [
	^ Combi19 soleInstance
]

{ #category : #accessing }
ViajesClientView >> parent [
	^ parent
]

{ #category : #accessing }
ViajesClientView >> parent: anObject [
	parent := anObject
]

{ #category : #rendering }
ViajesClientView >> renderContentOn: html [
	html render: (self session user advertencia). 
			self renderizarBotonBuscar: html.
	html break ; horizontalRule.
	self renderizarFiltro: html.
	filtro
		ifNotNil: [ self buscarPorFiltro: html ].

	
]

{ #category : #'as yet unclassified' }
ViajesClientView >> renderizarBotonBuscar: html [
	html
		break;
		break.
	html space.
	html space.
	html anchor
		callback: [ self session user renderizarEliminado . self call: (BuscarViajeClienteView newWithParent: self parent) ];
		with: [ html submitButton
				class: 'btn btn-primary';
				with: 'Buscar viaje' ]
]

{ #category : #'as yet unclassified' }
ViajesClientView >> renderizarFiltro: html [
	html
		form: [ html div
				class: 'form-group col-5';
				with: [ html label: 'Filtrar por:  '.
					html select
						class: 'form-control required';
						list: #(#Pendiente #Realizado #Rechazado  #Cancelado #Baja);
						selected: filtro;
						callback: [ :value | filtro := value ] ].
			html space.
			html space.
			html anchor
				callback: [ filtro inspect ];
				with: [ html submitButton
						class: 'btn btn-outline-success';
						with: 'Buscar' ].
			html break.
			html
				horizontalRule;
				break ]
]
