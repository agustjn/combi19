Class {
	#name : #HomeAdminComponent,
	#superclass : #WAComponent,
	#instVars : [
		'choferView',
		'combiView',
		'choferCreationView',
		'lugarView',
		'lugarCreationView',
		'combiCreationView',
		'viajeView',
		'viajeCreationView',
		'rutasView',
		'insumosView',
		'rutasCreationView',
		'insumoCreationView',
		'foroView',
		'advertenciaCorrectaViaje',
		'mensajeExito'
	],
	#category : #'ING2-COMBI19-UI-ADMIN-Components'
}

{ #category : #event }
HomeAdminComponent >> activarChoferCreationView [
	choferView := nil.
	foroView := nil.
	combiView := nil.
	lugarView := nil.
	viajeView := nil.
	insumosView := nil.
	lugarCreationView := nil.
	combiCreationView := nil.
	viajeCreationView := nil.
	insumoCreationView := nil.
	choferCreationView := ChoferCreationView newWithParent: self.
	mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarChoferView [
	"Si se activa cualquier componente, los demas se desactivan para evitar errores de render"

	foroView := nil.
	choferCreationView := nil.
	combiView := nil.
	lugarView := nil.
	viajeView := nil.
	viajeCreationView := nil.
	lugarCreationView := nil.
	combiCreationView := nil.
	choferView := ChoferView newWithParent: self.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarCombiCreationView [
	choferView := nil.
	foroView := nil.
	combiView := nil.
	lugarView := nil.
	viajeView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	viajeCreationView := nil.
	lugarCreationView := nil.
	choferCreationView := nil.
	combiCreationView := CombiCreationView newWithParent: self.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarCombiView [
	viajeView := nil.
	viajeCreationView := nil.
	choferView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	foroView := nil.
	rutasCreationView := nil.
	choferCreationView := nil.
	lugarView := nil.
	combiView := CombiView newWithParent: self.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarForoView [
	viajeView := nil.
	viajeCreationView := nil.
	choferView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	choferCreationView := nil.
	lugarView := nil.
	combiView := nil.
	foroView := ForoView newWithParent: self.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarInsumoCreationView [
	choferView := nil.
	combiView := nil.
	foroView := nil.
	lugarView := nil.
	viajeView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := InsumoCreationView newWithParent: self.
	rutasCreationView := nil.
	viajeCreationView := nil.
	lugarCreationView := nil.
	choferCreationView := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarInsumoView [
	combiView := nil.
	choferView := nil.
	lugarView := nil.
	rutasView := nil.
	insumosView := InsumoView newWithParent: self.
	insumoCreationView := nil.
	rutasCreationView := nil.
	lugarCreationView := nil.
	combiCreationView := nil.
	choferCreationView := nil.
	viajeView := nil.
	viajeCreationView := nil.
	foroView := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarInsumosCreationView [
	choferView := nil.
	combiView := nil.
	foroView := nil.
	lugarView := nil.
	viajeView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := InsumoCreationView newWithParent: self.
	rutasCreationView := nil.
	viajeCreationView := nil.
	lugarCreationView := nil.
	choferCreationView := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarLugarCreationView [
	choferView := nil.
	combiView := nil.
	foroView := nil.
	lugarView := nil.
	viajeView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	viajeCreationView := nil.
	lugarCreationView := LugarCreationView newWithParent: self.
	choferCreationView := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarLugarView [
	combiView := nil.
	choferView := nil.
	foroView := nil.
	viajeView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	viajeCreationView := nil.
	lugarCreationView := nil.
	combiCreationView := nil.
	choferCreationView := nil.
	lugarView := LugarView newWithParent: self.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarMensajeExito: unMensaje [
	mensajeExito := GenericAdvertiseView
		newWithParent: self
		heading: unMensaje
		item1: nil
		item2: nil
		item3: nil.

	choferCreationView := nil.
	choferView := nil.
	combiCreationView := nil.
	combiView := nil.
	foroView := nil.
	insumoCreationView := nil.
	insumosView := nil.
	lugarCreationView := nil.
	lugarView := nil.
	rutasCreationView := nil.
	rutasView := nil.
	viajeCreationView := nil.
	viajeView := nil
]

{ #category : #event }
HomeAdminComponent >> activarRutaCreationView [
	combiView := nil.
	foroView := nil.
	choferView := nil.
	lugarView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := RutaCreationView newWithParent: self.
	lugarCreationView := nil.
	combiCreationView := nil.
	choferCreationView := nil.
	viajeView := nil.
	viajeCreationView := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarRutasView [
	foroView := nil.
	combiView := nil.
	choferView := nil.
	lugarView := nil.
	rutasView := RutasView newWithParent: self.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	lugarCreationView := nil.
	combiCreationView := nil.
	choferCreationView := nil.
	viajeView := nil.
	viajeCreationView := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarViajeCreationView [
	choferView := nil.
	combiView := nil.
	lugarView := nil.
	foroView := nil.
	rutasView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	lugarCreationView := nil.
	choferCreationView := nil.
	viajeView := nil.
	viajeCreationView := ViajeCreationView newWithParent: self.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> activarViajeView [
	combiView := nil.
	choferView := nil.
	lugarView := nil.
	rutasView := nil.
	foroView := nil.
	insumosView := nil.
	insumoCreationView := nil.
	rutasCreationView := nil.
	lugarCreationView := nil.
	combiCreationView := nil.
	choferCreationView := nil.
	viajeView := ViajeView newWithParent: self.
	viajeCreationView := nil.
	advertenciaCorrectaViaje := nil.
		mensajeExito :=nil
]

{ #category : #event }
HomeAdminComponent >> cerrarSesion [
	self session user: nil.
	self show:LoginComponent new.
]

{ #category : #event }
HomeAdminComponent >> desactivarChoferCreationView [
	choferCreationView := nil.
]

{ #category : #event }
HomeAdminComponent >> desactivarCombiCreationView [
	combiCreationView := nil
]

{ #category : #event }
HomeAdminComponent >> desactivarForoView [
	foroView:= nil
]

{ #category : #event }
HomeAdminComponent >> desactivarInsumoCreationView [
	insumoCreationView := nil
]

{ #category : #event }
HomeAdminComponent >> desactivarLugarCreationView [
	lugarCreationView := nil.
]

{ #category : #event }
HomeAdminComponent >> desactivarRutaCreationView [
	rutasCreationView := nil.
]

{ #category : #event }
HomeAdminComponent >> desactivarViajeCreationView [
	viajeCreationView := nil
]

{ #category : #event }
HomeAdminComponent >> desactivarViajeCreationView: advertenciaCorrecta [
	viajeCreationView := nil.
	advertenciaCorrectaViaje := advertenciaCorrecta
]

{ #category : #rendering }
HomeAdminComponent >> renderContentOn: aCanvas [
	
	aCanvas div
		class: 'container';
		with: [ aCanvas heading level1 with: 'Combi-19'.
			aCanvas text: 'Bienvenido admin: ' , self session user nombre.
			aCanvas break.
			aCanvas anchor
				callback: [ self cerrarSesion ];
				with: 'Cerrar sesion'.
			aCanvas horizontalRule.
			aCanvas render: (MenuAdminView newWithParent: self).
			aCanvas render: mensajeExito.
			aCanvas render: advertenciaCorrectaViaje.
			aCanvas render: choferView.
			aCanvas render: choferCreationView.
			aCanvas render: combiView.
			aCanvas render: combiCreationView.
			aCanvas render: lugarView.
			aCanvas render: lugarCreationView.
			aCanvas render: viajeView.
			aCanvas render: viajeCreationView.
			aCanvas render: rutasView.
			aCanvas render: rutasCreationView.
			aCanvas render: insumosView.
			aCanvas render: insumoCreationView.
			aCanvas render: foroView ]
]

{ #category : #updating }
HomeAdminComponent >> updateRoot: anHtmlRoot [ 
    super updateRoot: anHtmlRoot.
    anHtmlRoot stylesheet url: 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'
]
