# YAMLStorm
Command line network request made easy.

# Installation
```bash
make install
```

# Simple usage:
Create a YAML file with the following structure:
```yaml
example.yml
```yaml
url: "https://example.com"
method: "GET"
headers:
 Content-Type: application/json
data:
 name: "John Doe"
 age: 30
```

Then run the following command:
```bash
yaml-storm example.yml
```

# Features

## Variables
You can substitute environment variables in the YAML file. For example:
```yaml
url: "https://example.com"
method: "GET"
headers:
  Content-Type: application/json
  authorization: "Bearer {{TOKEN}}"
data:
  name: "{{NAME}}"
  age: {{AGE}}
```

Then run the following command:
```bash
TOKEN="<your_token>" NAME="John Doe" AGE=30; yaml-storm example.yml
```
