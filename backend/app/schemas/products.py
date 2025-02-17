from pydantic import BaseModel

class ProductResponse(BaseModel):
    id: int
    name: str
    description: str

    class Config:
        orm_mode = True
