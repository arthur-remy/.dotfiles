#!/bin/python3

from subprocess import getoutput
from pathlib import Path
from datetime import date

cache_path = Path.home() / ".cache/custom-scripts/systemd-failure-notification"
notification_icon = 'placeholder'

IGNORED_SERVICES = [
        ]

cmd_output = getoutput("systemctl --failed --no-legend")
failed_services = [line.split(' ')[1] for line in cmd_output.splitlines()]


if len(failed_services) == 0:
    quit()

cache_file = cache_path / str(date.today())

new_errors = []
if cache_file.is_file():
    with open(cache_file, 'r') as f:
        old_errors = f.read().splitlines()
    new_errors = [item for item in failed_services if item not in old_errors]
else:
    new_errors = failed_services

final_errors = [item for item in new_errors if item not in IGNORED_SERVICES]

if len(final_errors) > 0:
	getoutput(
        'notify-send --icon={} "systemd service failed" "{}"'.format(
            notification_icon, "\n".join(final_errors)
            )
        )
    
cache_path.mkdir(parents=True, exist_ok=True)
with open(cache_file, 'a') as f:
    f.write("\n".join(final_errors))

