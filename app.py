#!/usr/bin/python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hello_world_root():
    return {"Hello": "World"}


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=9000)