# FEMA-API

This is a simple REST API that gives access to natural disasters in the US based on the FEMA datset: https://www.fema.gov/api/open/v1/DisasterDeclarationsSummaries.csv

Datase legends can be found here:
https://www.fema.gov/openfema-dataset-disaster-declarations-summaries-v1
https://www.fema.gov/pdf/library/2300_15ch7.pdf

Built-in filtering by state, year, disaster type, and incident type.

Deployed on Heroku:
https://fema-api.herokuapp.com/

| Endpoints:                        | Functionality                       |
| ----------------------------------|-------------------------------------|
| GET /declarations                 | List all declarations               |
| GET /declarations/:id             | Get a declaration by id             |
| GET /declarations?state=CA        | List declarations by state          |
| GET /declarations?year=1992       | List declarations by year           |
| GET /declarations?disaster=DR     | List declarations by disaster type  |
| GET /declarations?incident=Flood  | List declarations by incident type  |

