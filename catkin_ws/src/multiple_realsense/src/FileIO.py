import json
import numpy as np
import random
import datetime
import os
import pickle
import scipy.io
import pickle, sys

saveInc=0

def CreateFolderIncremental(directory):
    
    count=1
    path = directory  + str(count)

    while os.path.exists(path):
        count=count+1
        path = directory + str(count)

    os.makedirs(path)

    return path




def CreateFolder(directory,putDate=True,suffix=''):

    path=directory
    if(putDate==True):
        path=path +  datetime.datetime.now().strftime("%Y-%m-%d_%H_%M_%S")+'_'+suffix

    if not os.path.exists(path):
        os.makedirs(path)

    return path
    

def GetFileName(directory):

    names = directory.split("/")
    myString = names[len(names)-1]
    myString = myString[0:myString.find(".")]

    return myString

 

def SaveAsMat(data,dest_name):
 
	scipy.io.savemat(dest_name, mdict=data)
    #print("Data successfully converted to .mat " + dest_name)

def putFileWithJson(data,filename=None,folder=None,animal=False,putDate=False):
    '''
    puts dictionary into a json

    Args:
        data: data to put in the file
        filename: name of the file
        folder: place to save the file to
    '''

    if folder is None:
        folder = "./tmp"

        CreateFolder("./tmp",False)
    
    if filename is None:
        filename = ""

    saveName =folder + "/" + filename

    if animal:
        saveName = saveName + "_" + GetAnimalName()

    if putDate:
        saveName = saveName + "_" +  datetime.datetime.now().strftime("%d-%m-%Y_%H_%M_%S")


    f = open(saveName+".json","w")

    #save files
    json.dump(data,f,indent=4, separators=(',', ': '))
    
    f.close()

    print("Saved File: "+str(saveName)+".json")

def GetAnimalName():
    '''
    Fetch animal name, from the names.json file
    '''
    f=open("static/names.json","r")

    arr = json.load(f)

    animalName = random.choice(arr)
    f.close()

    return animalName

def getFromPickle(filename):
    '''
    Gets data from pickle file

    Args:
        filename: name of the file to fetch the data from
    '''

    p={}

    try:
        f= open(filename,"rb")
        p  =  pickle.load(f)
        f.close
    except IOError:
        return None
    #raise Exception("No Such File")

        
    return p


def SaveImageAllFormats(figure,name,directory):
    saveAsPickle(name+"-fig",figure,path=directory,animal=False,putDate=False)
    figure.savefig(directory+name+".png", facecolor='w', edgecolor='w',orientation='portrait',transparent=True, bbox_inches=None)
    #figure.savefig(directory+name+".svg", facecolor='w', edgecolor='w',orientation='portrait',transparent=True, bbox_inches=None)



def saveAsPickle(name,data,path="pickles/",putDate=True,animal=True):
    '''
        Args:
        name (str):Filename
        key (str):Name of the variable will be saved as
        data (anything): Data to be saved in the dict
        path (str): Where will it be saved
        putData (bool,optional): whether or not the current data is concatenated to the file name
    '''

    saveName = path+name #path and filename



    #add date
    if putDate:
        saveName = saveName+"_" + datetime.datetime.now().strftime("%Y-%m-%d_%H_%M_%S")

    if animal :
        saveName = saveName+"_"+GetAnimalName()
    
    f= open(saveName+".pickle","wb")    #open file and write bytes
    
    pickle.dump(data,f)          #dump stuff into that file
    
    f.close

    print("Data Saved on: " + saveName +".pickle")


    return saveName + ".pickle"


def getJsonFromFile(filename):
    '''
    Get data from the json file

    Args:
        filename: path to the file to retrieve data from
    '''

    try:
        f=open(filename,"r")
    
        data = json.load(f)
        f.close()

        return data

    except IOError:
      print ("Error:"+filename+"  does not appear to exist.")
      return None

def LoadScene(filename):
    '''
    Gets R and T of a specific scene
    '''

    scene = getJsonFromFile(filename)


    R=[]
    t=[]
    camNames=[]
    for cam in  scene['cameras']:
        R.append(np.asarray(cam['R'], dtype=np.float32))
        t.append(np.asarray(cam['t'], dtype=np.float32))
        camNames.append(cam['name'])


    return R,t,camNames