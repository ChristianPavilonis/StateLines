@echo off

if ["%~1"]==["json"] (
    copy /-y resources\State.json State.json
)
if ["%~1"]==[""] (
    copy /-y resources\State.yaml State.yaml
)

copy /-y resources\after.sh after.sh
copy /-y resources\aliases aliases

echo State initialized!
