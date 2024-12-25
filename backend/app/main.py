from fastapi import FastAPI
from app.db.database import Base, engine
from app.routers import auth, blog, products

app = FastAPI()

Base.metadata.create_all(bind=engine)

app.include_router(auth.router, prefix="/auth", tags=["Auth"])
app.include_router(blog.router, prefix="/blog", tags=["Blog"])
app.include_router(products.router, prefix="/products", tags=["Products"])