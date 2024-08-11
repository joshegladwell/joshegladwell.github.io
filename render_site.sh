# A shell script to render the quarto website and make additional necessary changes

# Start by rendering from quarto files
quarto render .

# Copy ads.txt into website's root directory
cp assets/after_render_insert/ads.txt docs/ads.txt
echo "ads.txt added to root directory"

# Copy projects into website
cp -r assets/after_render_insert/projects/decline-great-salt-lake docs/projects/
echo "decline-great-salt-lake added to projects"
cp -r assets/after_render_insert/projects/us-school-shootings docs/projects/
echo "us-school-shootings added to projects"