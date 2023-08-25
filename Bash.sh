#!/bin/bash

# Wo sind die Bilder
IMAGE_DIR="Ihr Bild"
IMAGE2_DIR="Ihr Bild2"
IMAGE3_DIR="Ihr Bild3"
IMAGE4_DIR="Ihr Bild4"
IMAGE5_DIR="Ihr Bild5"

# Liste aller Bilder im Verzeichnis abrufen
IMAGE_LIST=$(ls -1 $IMAGE_DIR)
IMAGE2_LIST=$(ls -1 $IMAGE2_DIR)
IMAGE3_LIST=$(ls -1 $IMAGE3_DIR)
IMAGE4_LIST=$(ls -1 $IMAGE4_DIR)
IMAGE5_LIST=$(ls -1 $IMAGE5_DIR)

# Ist nacht
while true; do

time1=$(date +"%k")


  if [[ $time1 -lt 6 ]]; then

    
    gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE_LIST
 
  else
  
    if [[ $time1 -lt 9 ]]; then
     
      gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE2_LIST

    else

      if [[ $time1 -lt 11 ]]; then

        
        gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE3_LIST

      else

        if [[ $time1 -lt 18 ]]; then

          gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE4_LIST

        else

          if [[ $time1 -lt 20 ]]; then

         
            gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE5_LIST

          else

            if [[ $time1 -lt 22 ]]; then

              gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE2_LIST

            else

      
              gsettings set org.gnome.desktop.background picture-uri file:///$IMAGE_LIST
          
            fi
          
          fi

        fi
        

      fi
   
    fi


  fi
  sleep 1800
done

exit
