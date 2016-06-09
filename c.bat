
del classes\com\vmware\helper\*.class
del vimutil.jar;

javac -d classes -cp vim25.jar src\com\vmware\helper\*.java
cd classes
jar -cvf ..\vimutil.jar com\vmware\helper
cd ..
copy src\com\vmware\helper\*.java e:\json
copy vimutil.jar e:\json
copy javadoc.jar e:\json

