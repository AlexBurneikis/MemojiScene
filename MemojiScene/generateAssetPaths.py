## return a list of paths to all the assets in the folder in the format
# case "assetName": "assetPath",
#example output:
# case "hair_afro_long_down_sidePart": "memoji/hair/hair_afro_long_down_sidePart.aa/main.scnz",

import os

def main():
    for folder in os.listdir("memoji/assets/"):
        #continue if not a folder
        if not os.path.isdir("memoji/assets/" + folder):
            continue
        path = "memoji/assets/" + folder
        files = os.listdir(path)
        for file in files:
            if file.endswith(".aa"):
                print('case ' + file[:-3] + ' = "' + path + '/' + file + '/main.scnz"')

if __name__ == "__main__":
    main()