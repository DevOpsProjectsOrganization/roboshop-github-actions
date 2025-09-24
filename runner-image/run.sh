if [ -z "${ORG}" ]; then echo Input ORG is missing ; exit 1 ; fi
if [ -z "${TOKEN}" ]; then echo Input TOKEN is missing ; exit 1 ; fi
if [ -z "${NAME}" ]; then echo Input NAME is missing ; exit 1 ; fi
cd /home/github/actions-runner
./config.sh --unattended  --url ${ORG} --token ${TOKEN} --name ${NAME} --runnergroup Default --work _work --replace
./run.sh #--replace