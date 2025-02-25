Class {
	#name : #Lugar,
	#superclass : #Object,
	#instVars : [
		'provincia',
		'localidad'
	],
	#category : #'ING2-COMBI19-Modelo'
}

{ #category : #initialization }
Lugar class >> deProvincia: unaProvincia yLocalidad: unaLocalidad [
	^self new 
	 provincia: unaProvincia;
	 localidad: unaLocalidad ;
		yourself.
	
]

{ #category : #comparing }
Lugar >> = unLugar [

	^ self string = unLugar string
]

{ #category : #'as yet unclassified' }
Lugar >> editarPronvincia: unaProvincia localidad: unaLocalidad [
	unaProvincia = ''
		ifFalse: [ provincia := unaProvincia ]. unaLocalidad = ''
		ifFalse: [ localidad := unaLocalidad ]
]

{ #category : #'as yet unclassified' }
Lugar >> editarProvincia: unaProvincia localidad: unaLocalidad [
	unaProvincia = ''
		ifFalse: [ provincia := unaProvincia ]. unaLocalidad = ''
		ifFalse: [ localidad := unaLocalidad ]
]

{ #category : #'as yet unclassified' }
Lugar >> esIgualA: unLugar [

	^ (provincia = unLugar provincia) or: (localidad = unLugar localidad )
]

{ #category : #initialization }
Lugar >> localidad [ 
	^localidad
]

{ #category : #accessing }
Lugar >> localidad: anObject [
	localidad := anObject
]

{ #category : #initialization }
Lugar >> provincia [ 
	^ provincia
]

{ #category : #accessing }
Lugar >> provincia: anObject [
	provincia := anObject
]

{ #category : #accessing }
Lugar >> string [
	^ self provincia , ' - ' , self localidad
]
