include image

fun tegne-flagg(Flagg):
  if Flagg == "Norge"
  block: 
rect1 = rectangle(220, 160, "solid", "red")
rect2 = rectangle(220, 40, "solid", "white")
rect3 = rectangle(40, 160, "solid", "white")
rect4 = rectangle(220, 20, "solid", "darkblue")
rect5 = rectangle(20, 160, "solid", "darkblue")
  
step1 = overlay-align("center", "middle", rect2, rect1
  )
step2 = overlay-xy(rect3, -60, 0, step1)

step3 = overlay-align("center", "middle", rect4, step2)

overlay-xy(rect5, -70, 0, step3)
  
    else if Flagg == "Sverige":
  rect1-Sverige = rectangle(220, 160, "solid", "blue")
  rect2-Sverige = rectangle(220, 40, "solid", "yellow")
  rect3-Sverige = rectangle(40, 160, "solid", "yellow")
  rect4-Sverige = rectangle(220, 20, "solid", "yellow")
  rect5-Sverige = rectangle(20, 160, "solid", "yellow")

  step1-Sverige = overlay-align("center", "middle", rect2-Sverige, rect1-Sverige
  )
  step2-Sverige = overlay-xy(rect3-Sverige, -60, 0, step1-Sverige)

  step3-Sverige = overlay-align("center", "middle", rect4-Sverige, step2-Sverige)

    overlay-xy(rect5-Sverige, -70, 0, step3-Sverige)
    
  else if Flagg == "Danmark":
    rect1-Danmark = rectangle(220, 160, "solid", "red")
    rect2-Danmark = rectangle(220, 40, "solid", "red")
    rect3-Danmark = rectangle(40, 160, "solid", "red")
    rect4-Danmark = rectangle(220, 20, "solid", "white")
    rect5-Danmark = rectangle(20, 160, "solid", "white")

    step1-Danmark = overlay-align("center", "middle", rect2-Danmark, rect1-Danmark
  )
    step2-Danmark = overlay-xy(rect3-Danmark, -60, 0, step1-Danmark)

    step3-Danmark = overlay-align("center", "middle", rect4-Danmark, step2-Danmark)

    overlay-xy(rect5-Danmark, -70, 0, step3-Danmark)
  else if Flagg == "Island":
    rect1-Island = rectangle(220, 160, "solid", "blue")
    rect2-Island = rectangle(220, 40, "solid", "white")
    rect3-Island = rectangle(40, 160, "solid", "white")
    rect4-Island = rectangle(220, 20, "solid", "red")
    rect5-Island = rectangle(20, 160, "solid", "red")

    step1-Island = overlay-align("center", "middle", rect2-Island, rect1-Island
  )
    step2-Island = overlay-xy(rect3-Island, -60, 0, step1-Island)

    step3-Island = overlay-align("center", "middle", rect4-Island, step2-Island)

    overlay-xy(rect5-Island, -70, 0, step3-Island)   
  else if Flagg == "Finland":
    rect1-Finland = rectangle(220, 160, "solid", "white")
    rect2-Finland = rectangle(220, 40, "solid", "blue")
    rect3-Finland = rectangle(40, 160, "solid", "blue")
    rect4-Finland = rectangle(220, 20, "solid", "blue")
    rect5-Finland = rectangle(20, 160, "solid", "blue")

    step1-Finland = overlay-align("center", "middle", rect2-Finland, rect1-Finland
  )
    step2-Finland = overlay-xy(rect3-Finland, -60, 0, step1-Finland)

    step3-Finland = overlay-align("center", "middle", rect4-Finland, step2-Finland)

    overlay-xy(rect5-Finland, -70, 0, step3-Finland)
  else if Flagg == "Faroyene":
     rect1-Faroyene = rectangle(220, 160, "solid", "white")
    rect2-Faroyene = rectangle(220, 40, "solid", "blue")
    rect3-Faroyene = rectangle(40, 160, "solid", "blue")
    rect4-Faroyene = rectangle(220, 20, "solid", "red")
    rect5-Faroyene = rectangle(20, 160, "solid", "red")

    step1-Faroyene = overlay-align("center", "middle", rect2-Faroyene, rect1-Faroyene
  )
    step2-Faroyene = overlay-xy(rect3-Faroyene, -60, 0, step1-Faroyene)

    step3-Faroyene = overlay-align("center", "middle", rect4-Faroyene, step2-Faroyene)

    overlay-xy(rect5-Faroyene, -70, 0, step3-Faroyene)
  else if Flagg == "Aaland": 
    rect1-Aaland = rectangle(220, 160, "solid", "blue")
    rect2-Aaland = rectangle(220, 40, "solid", "yellow")
    rect3-Aaland = rectangle(40, 160, "solid", "yellow")
    rect4-Aaland = rectangle(220, 20, "solid", "red")
    rect5-Aaland = rectangle(20, 160, "solid", "red")

    step1-Aaland = overlay-align("center", "middle", rect2-Aaland, rect1-Aaland
  )
    step2-Aaland = overlay-xy(rect3-Aaland, -60, 0, step1-Aaland)

    step3-Aaland = overlay-align("center", "middle", rect4-Aaland, step2-Aaland)

    overlay-xy(rect5-Aaland, -70, 0, step3-Aaland)
  else: "feil"
  end
end

tegne-flagg("Norge")
tegne-flagg("Sverige")
tegne-flagg("Danmark")
tegne-flagg("Island")
tegne-flagg("Finland")
tegne-flagg("Faroyene")
tegne-flagg("Aaland")
