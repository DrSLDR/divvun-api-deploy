#! /bin/bash

set -e

bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-sme/ usr/share/voikko/4/se.zcheck ../data/grammar/se.zcheck
bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-sme/ usr/share/giella/mobilespellers/se-mobile.zhfst ../data/spelling/se.zhfst

bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-sma/ usr/share/voikko/4/sma.zcheck ../data/grammar/sma.zcheck
bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-sma/ usr/share/giella/mobilespellers/sma-mobile.zhfst ../data/spelling/sma.zhfst

bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-smn/ usr/share/voikko/4/smn.zcheck ../data/grammar/smn.zcheck
bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-smn/ usr/share/giella/mobilespellers/smn-mobile.zhfst ../data/spelling/smn.zhfst

bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-sms/ usr/share/voikko/4/sms.zcheck ../data/grammar/sms.zcheck
bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-sms/ usr/share/giella/mobilespellers/sms-mobile.zhfst ../data/spelling/sms.zhfst

bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-smj/ usr/share/voikko/4/smj.zcheck ../data/grammar/smj.zcheck
bash ./download_speller.sh https://apertium.projectjj.com/apt/nightly/pool/main/g/giella-smj/ usr/share/giella/mobilespellers/smj-mobile.zhfst ../data/spelling/smj.zhfst

mv -f ./*.zcheck /home/api/dist/data/grammar/
mv -f ./*.zhfst /home/api/dist/data/spelling/
chown -R api:api /home/api/dist/data/
