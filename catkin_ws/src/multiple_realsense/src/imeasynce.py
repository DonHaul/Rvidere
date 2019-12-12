def main():
    camTopics = FileIO.getJsonFromFile(sys.argv[1])
    timesync=[]

    for cam in camTopics:
        for topic in camTopics[k]:
            timesync.append(TimeSyncer(cam , topic))