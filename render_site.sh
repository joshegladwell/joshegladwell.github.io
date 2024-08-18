# A shell script to render the quarto website and make additional necessary changes

# Start by rendering from quarto files
quarto render .

# Copy ads.txt into website's root directory
cp assets/after_render_insert/ads.txt docs/ads.txt
echo "ads.txt added to root directory"

# Edit link to school shootings project to open in new tab
sed -i '' 's|<a href="https://joshegladwell.github.io/us-school-shootings/" class="quarto-grid-link">|<a target="_blank" rel="noopener noreferrer" href="https://joshegladwell.github.io/us-school-shootings/" class="quarto-grid-link">|' docs/projects/projects.html
echo "us-school-shootings opens in new tab"

# Copy projects into website
# cp -rf assets/after_render_insert/projects/us-school-shootings docs/projects/
# echo "us-school-shootings added to projects"

cp -a assets/favicons/. docs/