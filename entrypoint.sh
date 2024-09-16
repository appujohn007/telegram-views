#!/bin/sh
# Entry point script to run tviews.py with environment variables

# Check if POST is set, and fall back to a default value if not
POST=${POST:-339}

# Run the Python script with the resolved POST value
exec python tviews.py --mode auto --channel botio_devs --post $POST
