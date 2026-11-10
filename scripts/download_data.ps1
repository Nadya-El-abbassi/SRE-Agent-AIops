# Télécharge le dataset Kaggle 2015 Flight Delays dans data/raw
# Prérequis : jeton Kaggle dans $HOME\.kaggle\access_token
kaggle datasets download -d usdot/flight-delays -p data/raw --unzip
if (-not (Test-Path data/raw/flights.csv)) { Write-Error "flights.csv introuvable"; exit 1 }
Write-Host "OK : données prêtes dans data/raw"
