# homepage

This is the homepage for learnTrack on which potential users can inform themselves about learnTrack

## Deployment


| Branch | Domain                              | Server        | Repo                                                 |
|--------|-------------------------------------|---------------|------------------------------------------------------|
| Master | http://homepage.learnup.brunner.top | 46.232.178.95 | https://github.com/learn-track/learnTrack-Deployment |

## Development

### Prerequisites
* [nvm](https://github.com/nvm-sh/nvm)


### Setup

```shell
./setup.sh
```

#### Frontend

In IntelliJ, install the prettier plugin and select the installed prettier dependency to format js, jsx, ts and tsx files.

Start the dev environment:

```shell
# if necessary
cd frontend 
yarn dev
```

Format:

```shell
yarn format
```

Lint:

```shell
yarn lint
```
