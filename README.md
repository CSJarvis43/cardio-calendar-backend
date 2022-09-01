# API Documentation

## POST /users

Creates a new user:

Accepts a user object:
```json
{
    "user": {
        "username": "csjarvis43",
        "password": "123",
        "name": "charlie",
        "location": "Colorado"
    }
}
```

Returns the user object if created successfully

## POST /login

Logs a user into an existing account

Accepts a user object with username and password:
```json
{
    "user": {
        "username": "csjarvis43",
        "password": "123"
    }
}
```

Returns the user object and a JWT token:
```json
{
	"user": {
		"id": 16,
		"username": "csjarvis432",
		"location": "Colorado",
		"name": "charlie"
	},
	"jwt": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNn0.TeQZt3vwCQpLhBV0VkqOM2T4Q1VLvQFU7NYwzwbZ8Hc"
}
```

### GET /me

Returns the user object if authenticated by a bearer token:
```json
{
	"user": {
		"id": 16,
		"username": "csjarvis432",
		"location": "Colorado",
		"name": "charlie"
	}
}
```

If not authenticated, returns a message:

```json
{
	"message": "Please log in"
}
```

### POST /auto_login

Takes in a JWT:

```json
{
    "jwt": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNn0.TeQZt3vwCQpLhBV0VkqOM2T4Q1VLvQFU7NYwzwbZ8Hc"
    
}
```

Returns the user object matching that token:

```json
{
	"id": 16,
	"username": "csjarvis432",
	"location": "Colorado",
	"name": "charlie"
}
```

## GET /active_days

Returns a list of active days and the user they belong to:

```json
[
	{
		"id": 1,
		"date": "2022-08-31",
		"day_of_week": "wednesday",
		"streak": 4,
		"user_id": 1
	},
	{
		"id": 2,
		"date": "2022-08-30",
		"day_of_week": "tuesday",
		"streak": 3,
		"user_id": 1
	}
]
```

## GET /active_days/:id

Returns a single active days found by id:

```json
{
	"active_day": {
		"id": 1,
		"date": "2022-08-31",
		"day_of_week": "wednesday",
		"streak": 4,
		"user_id": 1
	}
}
```

## POST /active_days

Accepts an active_day JSON object with keys date, day_of_week, streak, and user_id:

```json
{
	"active_day": {
		"date": "2022-08-31",
		"day_of_week": "wednesday",
		"streak": 4,
		"user_id": 1
	}
}
```
Returns the JSON object with its newly created id:

```json
{
	"active_day": {
		"id": 8,
		"date": "2022-08-31",
		"day_of_week": "wednesday",
		"streak": 4,
		"user_id": 1
	}
}
```

## DELETE /active_days/:id

Destroys the ActiveDay record associated with the provided ID

## GET /activities

Returns a list of activities and the user they belong to:

```json
[
	{
		"id": 1,
		"active_day_id": 1,
		"exercise_type": "bike"
	},
	{
		"id": 2,
		"active_day_id": 1,
		"exercise_type": "run"
	},
	{
		"id": 3,
		"active_day_id": 2,
		"exercise_type": "bike"
	}
]
```

## GET /activities/:id

Returns a single activity found by id:

```json
{
	"activity": {
		"id": 1,
		"active_day_id": 1,
		"exercise_type": "bike"
	}
}
```

## POST /activities

Accepts an activity JSON object with keys active_day_id and exercise_type:

```json
{
	"activity": {
		"active_day_id": 1,
		"exercise_type": "bike"
	}
}
```
Returns the JSON object with its newly created id:

```json
{
	"activity": {
		"id": 11,
		"active_day_id": 1,
		"exercise_type": "bike"
	}
}
```

## DELETE /activities/:id

Destroys the Activity record associated with the provided ID

## GET /bikes

Returns a list of bike sessions and the user they belong to:

```json
[
	{
		"id": 1,
		"activity_length": 93,
		"calories": 1063,
		"distance": 12.65,
		"streak": 3,
		"rating": 8,
		"summary": "good",
		"activity_id": 1
	},
	{
		"id": 2,
		"activity_length": 49,
		"calories": 560,
		"distance": 8.69,
		"streak": 2,
		"rating": 7,
		"summary": "good",
		"activity_id": 3
	}
]
```

## GET /bikes/:id

Returns a single bike session found by id:

```json
{
	"bike": {
		"id": 2,
		"activity_length": 49,
		"calories": 560,
		"distance": 8.69,
		"streak": 2,
		"rating": 7,
		"summary": "good",
		"activity_id": 3
	}
}
```

## POST /bikes

Accepts a bike JSON object with keys activity_length, calories, distance, streak, rating, summary, and activity_id:

```json
{
	"bike": {
		"activity_length": 49,
		"calories": 560,
		"distance": 8.69,
		"streak": 2,
		"rating": 7,
		"summary": "good",
		"activity_id": 3
	}
}
```
Returns the JSON object with its newly created id:

```json
{
	"bike": {
		"id": 5,
		"activity_length": 49,
		"calories": 560,
		"distance": 8.69,
		"streak": 2,
		"rating": 7,
		"summary": "good",
		"activity_id": 3
	}
}
```

## DELETE /bikes/:id

Destroys the bike session record associated with the provided ID

## GET /hikes

Returns a list of hike sessions and the user they belong to:

```json
[
	{
		"id": 1,
		"activity_length": 142,
		"calories": 974,
		"distance": 5.22,
		"streak": 1,
		"rating": 5,
		"summary": "good",
		"activity_id": 6
	},
	{
		"id": 2,
		"activity_length": 82,
		"calories": 562,
		"distance": 2.75,
		"streak": 1,
		"rating": 8,
		"summary": "good",
		"activity_id": 10
	}
]
```

## GET /hikes/:id

Returns a single hike session found by id:

```json
{
	"hike": {
		"id": 1,
		"activity_length": 142,
		"calories": 974,
		"distance": 5.22,
		"streak": 1,
		"rating": 5,
		"summary": "good",
		"activity_id": 6
	}
}
```

## POST /hikes

Accepts a hike JSON object with keys activity_length, calories, distance, streak, rating, summary, and activity_id:

```json
{
	"hike": {
		"activity_length": 142,
		"calories": 974,
		"distance": 5.22,
		"streak": 1,
		"rating": 5,
		"summary": "good",
		"activity_id": 6
	}
}
```
Returns the JSON object with its newly created id:

```json
{
	"hike": {
		"id": 3,
		"activity_length": 142,
		"calories": 974,
		"distance": 5.22,
		"streak": 1,
		"rating": 5,
		"summary": "good",
		"activity_id": 6
	}
}
```

## DELETE /hikes/:id

Destroys the hike session record associated with the provided ID

## GET /runs

Returns a list of run sessions and the user they belong to:

```json
[
	{
		"id": 1,
		"activity_length": 73,
		"calories": 1163,
		"distance": 7.01,
		"streak": 1,
		"rating": 9,
		"summary": "good",
		"activity_id": 2
	},
	{
		"id": 2,
		"activity_length": 58,
		"calories": 912,
		"distance": 12.65,
		"streak": 1,
		"rating": 8,
		"summary": "good",
		"activity_id": 5
	}
]
```

## GET /runs/:id

Returns a single run session found by id:

```json
{
	"run": {
		"id": 1,
		"activity_length": 73,
		"calories": 1163,
		"distance": 7.01,
		"streak": 1,
		"rating": 9,
		"summary": "good",
		"activity_id": 2
	}
}
```

## POST /runs

Accepts a run JSON object with keys activity_length, calories, distance, streak, rating, summary, and activity_id:

```json
{
	"run": {
		"activity_length": 58,
		"calories": 912,
		"distance": 12.65,
		"streak": 1,
		"rating": 8,
		"summary": "good",
		"activity_id": 5
	}
}

```
Returns the JSON object with its newly created id:

```json
{
	"run": {
		"id": 3,
		"activity_length": 58,
		"calories": 912,
		"distance": 12.65,
		"streak": 1,
		"rating": 8,
		"summary": "good",
		"activity_id": 5
	}
}
```

## DELETE /runs/:id

Destroys the run session record associated with the provided ID

## GET /skis

Returns a list of ski sessions and the user they belong to:

```json
[
	{
		"id": 1,
		"activity_length": 243,
		"calories": 1667,
		"distance": 25.37,
		"streak": 1,
		"rating": 9,
		"summary": "good",
		"activity_id": 7
	},
	{
		"id": 2,
		"activity_length": 342,
		"calories": 2346,
		"distance": 33.28,
		"streak": 1,
		"rating": 10,
		"summary": "good",
		"activity_id": 9
	}
]
```

## GET /skis/:id

Returns a single ski session found by id:

```json
{
	"ski": {
		"id": 2,
		"activity_length": 342,
		"calories": 2346,
		"distance": 33.28,
		"streak": 1,
		"rating": 10,
		"summary": "good",
		"activity_id": 9
	}
}
```

## POST /skis

Accepts a ski JSON object with keys activity_length, calories, distance, streak, rating, summary, and activity_id:

```json
{
	"ski": {
		"activity_length": 342,
		"calories": 2346,
		"distance": 33.28,
		"streak": 1,
		"rating": 10,
		"summary": "good",
		"activity_id": 9
	}
}
```
Returns the JSON object with its newly created id:

```json
{
	"ski": {
		"id": 3,
		"activity_length": 342,
		"calories": 2346,
		"distance": 33.28,
		"streak": 1,
		"rating": 10,
		"summary": "good",
		"activity_id": 9
	}
}
```

## DELETE /skis/:id

Destroys the ski session record associated with the provided ID

## GET /swims

Returns a list of swim sessions and the user they belong to:

```json
[
	{
		"id": 1,
		"activity_length": 45,
		"calories": 309,
		"distance": 12.65,
		"streak": 1,
		"rating": 3,
		"summary": "good",
		"activity_id": 8
	},
	{
		"id": 2,
		"activity_length": 45,
		"calories": 309,
		"distance": 12.65,
		"streak": 1,
		"rating": 3,
		"summary": "good",
		"activity_id": 8
	}
]
```

## GET /swims/:id

Returns a single swim session found by id:

```json
{
	"swim": {
		"id": 1,
		"activity_length": 45,
		"calories": 309,
		"distance": 12.65,
		"streak": 1,
		"rating": 3,
		"summary": "good",
		"activity_id": 8
	}
}
```

## POST /swims

Accepts a swim JSON object with keys activity_length, calories, distance, streak, rating, summary, and activity_id:

```json
{
	"swim": {
		"activity_length": 45,
		"calories": 309,
		"distance": 12.65,
		"streak": 1,
		"rating": 3,
		"summary": "good",
		"activity_id": 8
	}
}
```
Returns the JSON object with its newly created id:

```json
{
	"swim": {
		"id": 2,
		"activity_length": 45,
		"calories": 309,
		"distance": 12.65,
		"streak": 1,
		"rating": 3,
		"summary": "good",
		"activity_id": 8
	}
}
```

## DELETE /swims/:id

Destroys the swim session record associated with the provided ID