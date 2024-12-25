from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from app.db.database import get_db
from app.db.models import BlogPost
from app.schemas.blog import BlogPostCreate, BlogPostResponse

router = APIRouter()

@router.get("/", response_model=list[BlogPostResponse])
def get_all_posts(db: Session = Depends(get_db)):
    return db.query(BlogPost).all()

@router.post("/", response_model=BlogPostResponse)
def create_post(post: BlogPostCreate, db: Session = Depends(get_db)):
    new_post = BlogPost(title=post.title, content=post.content)
    db.add(new_post)
    db.commit()
    db.refresh(new_post)
    return new_post
