# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

set -e

virtualenv wptrunner
cd wptrunner
source bin/activate
pip install wptrunner
wget https://raw.githubusercontent.com/w3c/wptrunner/master/requirements_firefox.txt -O requirements/requirements_firefox.txt
pip install -r requirements/requirements_firefox.txt
wptrunner \
  --config ../tests/config.ini \
  --tests ../../git-ts-W3C \
  --metadata ../tests/meta \
  --prefs-root ../tests/profile \
  --binary `which firefox` 

