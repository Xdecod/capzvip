#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�J  ��E� ���onޮ����    P:6��wzwn.�BS�)=O�6L�?Q�jh���F�d�6�@2$�����ѧ��     �*x��C�h��C@� ���4 �@ 6�Sm)���P��A��4�4142M��%		����h�&� Ѡ@4  4 
�� 8�t]X$��(:�Ɉԍ֬B��cU�i����6�9������Ns9W�8]U9*�yu�f�����s ���n�j�<=��r��r��ō��N�Of�J�Ǆ��F�J�/ 1����T:�^�C��q���9���f�~v��Xx��ΕM��0�t�� �_ qv�JA���H̢'U���/B�ƒ��X߸��c/��IT�jS�l�3��K��z�SH�!	Y7xjq����+m�,��>Jݠ�����s�"$��S�& ߀+�橯S�b~}�{�ȓ�-�W�P��t�l�@���	�=�h����z���E���4��02�Y�C/�t��,0eXȁ�Kb���)�FG��w�<Y�E
�&_�i4�;�+���VUR��ku錊��H��5�m��лƘ�I=pZpy�����V1���A<P9d�V�UR���w�E9�7;�d�yE#r���@�갔��z�Q�Cd :��SX�����&�M����ϐU�|��S�مeE݈9�
�b��DH��#$*z�����p�Th�&آ��[j��D�k�Q�bdI
����#�����P�(q�1d��3��r�Y*�
�������,!��BLG�ދD�U�*����T1W�IZX�4��XeP��l�wa"IZ�H(x�������I*=����ⴏ%�"�U���K�5a/`+�.u���j֨R�Ze�q��I%�@�@K2�"�(H���