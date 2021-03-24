from flask import Flask, jsonify
from sqlalchemy import create_engine, desc, func
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import sessionmaker
import pandas as pd

# sql setup
engine = create_engine('postgresql://football:7258@localhost/football')

Base = automap_base()
Base.prepare(engine,reflect=True)
Session = sessionmaker()
Session.configure(bind=engine)

Info = Base.classes.info
Players = Base.classes.player
Draft = Base.classes.draft
College = Base.classes.college
Combine = Base.classes.combine

# Flask routes
app = Flask(__name__)

@app.route('/id/<player>')
def playerName(player):
    sesh = Session()
    playerID = sesh.query(Players.player_id)\
               .filter(Players.name == player)\
               .one()[0]
    pos, height, year, weight = sesh.query(Info.position,
                                    Info.Height,
                                    Info.Year,
                                    Info.Weight)\
                          .filter(Info.player_id == playerID)\
                          .one()
    output = {'playerID': playerID, 
              'name': player,
              'year':year,
              'position': pos,
              'height': height,
              'weight': weight}


    sesh.close()
    return jsonify(output)

@app.route('/position/<pos>/<stats>')
def byPosition(pos, stats):
    statList = stats.split('&')
    for i in range(len(statList)):
        statList[i] = statList[i].lower()
    sesh = Session()
    df = pd.read_sql(sesh.query(Info.player_id,
                                Info.Height,
                                Info.Weight,
                                Info.Year,
                                Combine.Vertical,
                                Combine.Forty_Yard,
                                Combine.Bench,
                                Combine.Broad_Jump,
                                Combine.Three_Cone,
                                Combine.Shuttle,
                                Draft.Round,
                                Draft.Pick_No)\
                    .join(Draft, Info.player_id == Draft.player_id)\
                    .join(Combine, Info.player_id == Combine.player_id)\
                    .filter(Info.position == pos)\
                    .statement, sesh.bind)
    cols = list(df.columns)
    newCols = []
    for col in cols:
        newCols.append(col.lower())
    df.columns = newCols
    print(df[statList])
    output = {'Avg': {},
              'Max': {},
              'Min': {}}
    for stat in statList:
        output['Avg'][stat] = df[stat].mean()
        output['Max'][stat] = df[stat].max()
        output['Min'][stat] = df[stat].min()
    sesh.close()

    return jsonify(output)

@app.route('/year/<year>/<stats>')
def byYear(year, stats):
    statList = stats.split('&')
    for i in range(len(statList)):
        statList[i] = statList[i].lower()
    sesh = Session()
    df = pd.read_sql(sesh.query(Info.player_id,
                                Info.Height,
                                Info.Weight,
                                Info.Year,
                                Combine.Vertical,
                                Combine.Forty_Yard,
                                Combine.Bench,
                                Combine.Broad_Jump,
                                Combine.Three_Cone,
                                Combine.Shuttle,
                                Draft.Round,
                                Draft.Pick_No)\
                    .join(Draft, Info.player_id == Draft.player_id)\
                    .join(Combine, Info.player_id == Combine.player_id)\
                    .filter(Info.Year == year)\
                    .statement, sesh.bind)
    cols = list(df.columns)
    newCols = []
    for col in cols:
        newCols.append(col.lower())
    df.columns = newCols
    print(df[statList])
    output = {'Avg': {},
              'Max': {},
              'Min': {}}
    for stat in statList:
        output['Avg'][stat] = df[stat].mean()
        output['Max'][stat] = df[stat].max()
        output['Min'][stat] = df[stat].min()
    sesh.close()

    return jsonify(output)
if __name__ == '__main__':
    app.run(debug=True)

