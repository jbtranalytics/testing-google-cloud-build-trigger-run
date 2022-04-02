from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hello():
    return {"message": "Hello World"}

@app.get("/name/{name}")
def hello_name(name: str):
    return {"message": f"Hello {name}"}

@app.get("/square/{number}}")
def square_number(number: float):
    return {"message": number*number}


