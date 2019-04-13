beam_propagation <- function(range, elev_ang, R = 6371000, Rp = 4*R/3) {

#Calcula la altura teniendo en cuenta la apróximación
ht <- sqrt(range^2 + Rp^2 + 2*range*Rp*sin(pi*elev_ang/180)) - Rp
#Calcula el rango horizontal
rh <- range*cos(pi*elev_ang/180)
#Calcula el angulo de elevación efectivo teniendo en cuenta la aproximación
lea <- pi*elev_ang/180 + atan((range*cos(pi*elev_ang/180))/(range*sin(pi*elev_ang/180) + Rp))

}