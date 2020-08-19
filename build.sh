#/bin/bash
cd betaflight
HOME="/root" git config --global user.email "akra@mode.com"
HOME="/root" git config --global user.name "AkraMode"
for i in $(find ../betaflight-akramode/ -name "*.patch" -printf "%f\n" | cut -d '.' -f 1,2,3 | sort -nr); do git checkout tags/$i -b $i; make arm_sdk_install; git apply ../betaflight-akramode/$i.patch; if [ ${i//.} -lt 420 ]; then make all; else make unified ;fi; cp obj/*.hex ../firmware; make clean_all; git stash; done;
cd ../firmware/; zip betaflight_all.zip *
