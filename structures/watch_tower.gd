extends Node2D

var inZoomArea = false

func _on_zoom_area_body_entered(body):
	inZoomArea = true

func _on_zoom_area_body_exited(body):
	inZoomArea = false


func _process(delta):
	if inZoomArea == true:
		Global.airLeft = Global.maxAir
		
		if !Global.cameraZoom <= Vector2(0.35,0.35):
			Global.cameraZoom += Vector2(-1,-1) * delta
	if inZoomArea == false and Global.cameraZoom != Vector2(1.3,1.3):
		Global.cameraZoom += Vector2(1,1) * delta
		if Global.cameraZoom >= Vector2(1.3,1.3):
			Global.cameraZoom = Vector2(1.3,1.3)






