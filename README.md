# Todo App API - Generate this project with Codegen.com

A simple RESTful API for managing todo tasks built with Ruby on Rails 7.

## Technologies Used

- Ruby 3.1.2
- Rails 7.0
- MySQL
- Docker & Docker Compose

## Getting Started

### Prerequisites

- Docker and Docker Compose installed on your machine

### Setup and Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/todo-app-rails.git
   cd todo-app-rails
   ```

2. Start the application using Docker Compose:
   ```bash
   docker-compose up
   ```

   This will:
   - Build the Docker image
   - Start the MySQL database
   - Start the Rails application
   - Run database migrations
   - Seed the database with sample data

3. The API will be available at:
   ```
   http://localhost:3001/api/todos
   ```

## API Endpoints

| Method | Endpoint       | Description         | Request Body                                | Response                  |
|--------|----------------|---------------------|---------------------------------------------|---------------------------|
| GET    | /api/todos     | Get all todos       | -                                           | Array of todo objects     |
| GET    | /api/todos/:id | Get a specific todo | -                                           | Todo object or 404 error  |
| POST   | /api/todos     | Create a new todo   | `{ "todo": { "title": "Task", "completed": false } }` | Created todo object      |
| PUT    | /api/todos/:id | Update a todo       | `{ "todo": { "title": "Task", "completed": true } }`  | Updated todo object      |
| DELETE | /api/todos/:id | Delete a todo       | -                                           | 204 No Content            |

## Todo Object Structure

```json
{
  "id": 1,
  "title": "Learn Ruby on Rails",
  "completed": false,
  "created_at": "2023-01-01T12:00:00.000Z",
  "updated_at": "2023-01-01T12:00:00.000Z"
}
```

## Development

### Running Tests

```bash
docker-compose run web rails test
```

### Accessing the Rails Console

```bash
docker-compose run web rails console
```

### Database Management

```bash
# Reset the database
docker-compose run web rails db:reset

# Run migrations
docker-compose run web rails db:migrate

# Seed the database
docker-compose run web rails db:seed
```

