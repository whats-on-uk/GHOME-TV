import sqlalchemy
from sqlalchemy import create_engine
engine = create_engine('sqlite:///test.db', echo=True)
engine.connect()