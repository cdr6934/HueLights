source("HueLightFunctions.R")

#############################################################
# Variables 
#############################################################
ip <- getIP()
userName <- "xxx" #Username will have to be generated via the SDK
light <- "1"
effect <-"none"


# Get list of lights
getLights(ip, userName)


# Turn Light on / off
turnLightOnOff(ip,userName,light,"true")


#############################################################
# BRIGHTNESS
#############################################################

#Change Brightness of the light 
changeBrightness(ip,userName,light,"255")

#Randomly change the brightness
vals <- sample(1:254,100)
for(i in vals){changeBrightness(ip,userName,light,i)}


# change the brightness based on sin wave 
t = seq(0,60,0.3)
y <- sin(t)
plot(y)
vals <- as.integer(rescale(y,range(1,254)))
for(i in vals){changeBrightness(ip,userName,light,i)}


#############################################################
# LIGHT HUE 
#############################################################
# Change Light Hue 
changeHue(ip,userName,light,"254")

#Randomly change the brightness
vals <- sample(0:65535,100)
for(i in vals){changeHue(ip,userName,light,i)}


#############################################################
# LIGHT HUE 
#############################################################
changeEffect(ip,userName,light,effect)


#############################################################
# ALERT LIGHT
#############################################################
alertLights
