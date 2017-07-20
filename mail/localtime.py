#!/usr/bin/env python3

import sys
import re
from email.utils import format_datetime, parsedate_to_datetime

for line in sys.stdin:
    if line == "\n":
        # end of headers
        print(line, end="")
        break

    match = re.match(r'^Date: (.+)', line)

    if match:
        date_string = match.group(1)
        converted_date = format_datetime(parsedate_to_datetime(date_string).astimezone(tz=None))
        print('Date:', converted_date)
    else:
        print(line, end="")
        continue

# Print the rest
for line in sys.stdin:
    print(line, end="")
