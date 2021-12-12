#!/usr/bin/env sh
# Runs AFTER installing package
# Fix the *.desktop files
#FLDIGI_DESKTOPS="/usr/local/share/applications $HOME/.local/share/applications"
#for D in ${FLDIGI_DESKTOPS}
#   do
#      for F in ${D}/fl*.desktop
#      do

#FLDIGI_DESKTOPS="/usr/local/share/applications $HOME/.local/share/applications"
FLDIGI_DESKTOPS="/usr/local/share/applications"
for D in ${FLDIGI_DESKTOPS}
do
   for F in ${D}/flrig*.desktop
   do
      [ -e "$F" ] || continue
      sudo sed -i 's/Network;//g' $F
      if [ $F -eq "${FLDIGI_DESKTOPS}/flrig.desktop" ]
      then
         grep -q "\-\-debug-level 0" ${FLDIGI_DESKTOPS}/flrig.desktop 2>/dev/null || sudo sed -i 's/Exec=flrig/Exec=flrig --debug-level 0/' $F
      fi
   done
done
[ -f /usr/local/share/applications/flrig.desktop ] && sudo mv -f /usr/local/share/applications/flrig.desktop /usr/local/share/applications/flrig.desktop.disabled
exit 0