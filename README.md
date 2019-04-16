# 

# Build

```
docker build -t redshoga/python-scraper .
```

# Sample


```
docker run -it --rm -v /c/Users/redshoga/Desktop/python-scraping/src:/share redshoga/python-scraper python /share/test.py
docker run -it --rm -v $(pwd):/share redshoga/python-scraper python /share/test.py
```

# Based on
https://oliversi.com/2019/01/07/python-docker-selenium-chrome/

## Features added to the container in the article
- Add Japanese fonts to Docker image
- Several useful code samples

# License
MIT License
