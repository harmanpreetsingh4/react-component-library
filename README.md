    Instructions to run on local machine with Docker

    Pull the repo from github with: "git clone https://github.com/harmanpreetsingh4/react-component-library.git"

    Do: "cd react-component-library"

    Do: "docker build -t singh_harmanpreet_coding_assignment13 ."

    Finally do: "docker run -dp 8083:8083 --name singh_harmanpreet_coding_assignment13 singh_harmanpreet_coding_assignment13"

    Open the link in browser: "http://localhost:8083"

    For running Husky do: "npm install husky --save-dev" to install Husky

    Then do :  "npx husky install" to initialize Husky

    Navigate to ".husky/_/pre-commit" and add the following to the file:

    #!/bin/sh

    # Run lint
    npm run lint

    # Run format
    npm run format

    # Run tests
    npm test
