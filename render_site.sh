# A shell script to render the quarto website and make additional necessary changes

# Start by rendering from quarto files
quarto render .

# Copy ads.txt into root directory
cp ads.txt docs/ads.txt
echo "ads.txt added to root directory"