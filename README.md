# Booking Analysis Dataset
____________________________

### Purpose
> #### --> Our objective is to have at least 50% fill rate for our 20-seats buses and to ensure high customer satisfaction ratings.

### Description
> #### --> 17722 records of Booking Analysis dataset, containing:
    -   booking_id
    -   booking_from
    -   date_booking
    -   number_passengers
    -   booking_status
    -   date_cancellation
    -   user_id
    -   date_joined
    -   address_origin
    -   address_destination
    -   is_user_anonymized
    -   date_ride
    -   busline_name
    -   driver_name
    -   rating_driver
    -   rating_service
    -   initial_price
    -   payment_mode
    -   discount_code
    -   address_pickup
    -   address_dropoff

### EDA (Exploratory Data Analysis)

> #### --> Shape (17722,21) ---> (17561,14)
> #### --> Data Cleaning:

>	-  Cleaning Null-Values
>	-  Deleting redundant columns
>	-  Cleaning individual columns

### Data Analysis
> #### --> Questions:

#####   1) What is the total number of reservation including the total number for each booking status ?
##### 	2) What is the first time a reservation was made and how much users did that ?
#####	3) What is the highest reservation was made ?
#####	4) What is the highest date ride have bookings ?
#####	5) What is the total number of passengers booked for ? And the number of them including ride confirmed, cancelled, and changed ?
#####	6) What is the weight of percentage of booking status ?
#####	7) What is the number of users that used this service ?
#####	8) What is the top 5 users make reservation ?
#####	9) What is the top 5 users that installed the app or created account ?
#####	10) What is the weight of percentage of user anonymized ?
#####	11) What is the top 10 buslines that have bookings ?
#####	12) What is the top 5 buslines names that have ride confirmed ?
#####	13) What is The most ride destination that have reservation ?
#####	14) What is the highst date rides have booking status (Confirmed) ?
#####	15) What is the percentage of different payment mode ?

> #### --> Insights:

#####	1) My data contains 17,561 reservations, of which 9,802 were booked through the app, 7,750 from the call center, and 9 from the website.
#####	2) The first time reservation was made at the date(2023-04-29) by 14 users in 7 different busline.
#####	3) The highest reservation was made at (2023-11-03)=[284] followed by (2023-12-03)=[252].
>       - Comment: We extract that the bookings and the date rides increased through the years.      
#####	4) The highest date ride have bookings (2023-12-06)=[231] followed by (2023-12-04)=[226].
#####	5) The total number of passengers are (17627) including {Ride Confirmed:14449}.
>	- Comment: we extracted from this insight too that the difference between (total number of passengers-total number of bookings = 66) this means that users booked for (66 person) that didn't book through the app or account or call center.
#####	6) The highest percentage is for confirmed rides(81.96%), and this is a good indicator in our favor because it indicates the quality and excellence of the service.
#####	7) The number of users used for reservations is 436.	
#####	8) The top 5 users that made reservations:
	
	user_id		count
>   0	  1183	         372
>   1	  1180		 362
>   2	  1205		 357
>   3	  1077		 326
>   4	  1123		 319

#####	9) The first top 5 users that installed the app or created account:

	user_id	     date_joined
>   0	 116	     2023-01-17
>   1	 124	     2023-01-18
>   2	 292	     2023-01-24
>   3	 324	     2023-01-25
>   4	 366	     2023-01-26

#####	10) The percentage of users that were not anonymized (98.24%) and the users that anonymized (1.75%).
#####	11) The top 10 bus rides that have bookings:

	busline_name
>	LV AZHAR > BSK (via S.MOUMEN-CN) 05-23                     1280
>	LV - OULFA > HH > CN 05-23                                 1272
>	LV MOHA > BSK (via Beauséjour-CN) 05-23                    1248
>	RAB CN > H.MOHAMMEDI > A.SEBAA > BERN (graphiqué) 08-23     957
>	LV BERN> BSK (via CN-BOURNAZIL-H.MO-A.SEB) 07-23            948
>	RAB CN > H.H > OULFA (graphiqué) 05-23                      909
>	LV BSK > MOHAMEDIA > CN 05-23                               882
>	LV BSK> BERN(via CN-BOURNAZIL-H.MO-A.SEB) 07-23             875
>	LV BER>BSK (via Cn-Sebata-A.chok-Sidi Maarof) 07-23         685
>	LV Bsk > Azhar (via Sbata-S.Moumen-Anassi) 07-23            606


#####	12) The top 5 buslines that have ride confirmed:
	busline_name						   count
>	LV - OULFA > HH > CN 05-23				    1213
>	LV MOHA > BSK (via Beauséjour-CN) 05-23			    1134
>	LV AZHAR > BSK (via S.MOUMEN-CN) 05-23			    1008
>	RAB CN > H.MOHAMMEDI > A.SEBAA > BERN (graphiq...	     862
>	RAB CN > H.H > OULFA (graphiqué) 05-23		             829

>	- Comment: we got from this insight that the best rides_destinations related to the top buslines confirmed are (CSN, Bouskoura 27182).

#####	13) The most ride_destination that have reservation is (CSN).
#####	14) The highest date ride that have booking status (Confirmed) is equal (191) at (2023-12-06)
#####	15) The highest percentage of payment mode (credit:54.51%, ZERO:43.01%, CB:11.46%) 