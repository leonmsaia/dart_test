from pydantic import BaseModel

class BlogPostCreate(BaseModel):
    title: str
    content: str

class BlogPostResponse(BaseModel):
    id: int
    title: str
    content: str

    class Config:
        orm_mode = True
