# MU620A Project (AudioStreamCsound)

This repo contains a godot project showcasing.
The submodule [gdextension/audio-stream-csound](https://codeberg.org/vinni-richburgh/audio-stream-csound.git) is part of this project.
This project was built on Fedora Linux and should work on MacOS out of the box.
However, it does not support Windows!

Please find the project description for MU620A in the tex/ directory!


## Build

To build this plugin, please make sure you have CMake >= 3.12 installed on your machine.
Older versions might work, but weren't tested.
AudioStreamCsound works with Csound `7.0.0-beta.17` and I recommend using this version!

Make sure all Git submodules are initialized correctly!
Running `cmake -b ./build -S .; cmake --build ./build` should build all godot-cpp objects (might take a few minutes) and then libaudio-stream-csound.
If libcsound can't be found, Csound needs to be installed to the CMAKE\_INSTALL\_PREFIX directory.

Should Godot not be able to find the libaudio-stream-csound, it might have ended up in a different directory as is specified in the audio-stream-csound.gdextension file.
This should not be something to worry about, since the location of the library is dictated by the folder structure of this project.


## Run

After having built, you will need to open the project with Godot 4.6.x .
This can be done in one of two ways:
* Run `godot path/to/project.godot` in a terminal.
* Find and run the project from the Godot importer.

The godot editor should have opened the project.

The scene containing the demo for this project is set as the main scene, so pushing the little "play" button in the top right of the editor should run it.
You will be prompted with three buttons to interact with Csound.
Warning: Don't play the audio at full gain right away!
Start low and turn the volume up slowly!
