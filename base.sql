CREATE DATABASE BIG_DATA;

CREATE TABLE HOUSING(
    Longitud float (7),
    Latitud float (7),
    Housing_median_age float (5),
    Total_rooms float,
    Total_bethrooms float,
    Populations float,
    House_holds float,
    Median_Income float,
    Median_House_Value float,
    Ocean_Proximity varchar (60),
    PRIMARY KEY (Longitud, Latitud)
    )
