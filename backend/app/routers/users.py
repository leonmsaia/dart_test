from fastapi import APIRouter

router = APIRouter()

@router.get("/profile")
async def get_profile():
    return {"username": "admin", "email": "admin@example.com"}
