include image

rod_bakgrunn = rectangle(220, 160, "solid", "red")
hvit_vannrett = rectangle(220, 40, "solid", "white")
hvit_loddrett = rectangle(40, 160, "solid", "white")
blaa_vannrett = rectangle(220, 20, "solid", "darkblue")
blaa_loddrett = rectangle(20, 160, "solid", "darkblue")




hvit_rod_vannrett = overlay-align("center", "middle", hvit_vannrett, rod_bakgrunn
  )

hvit_rod_begge = overlay-xy(hvit_loddrett, -60, 0, hvit_rod_vannrett)

blaa_vannrett_ihvit_og_rod = overlay-align("center", "middle", blaa_vannrett, hvit_rod_begge)

overlay-xy(blaa_loddrett, -70, 0, blaa_vannrett_ihvit_og_rod)

