FILENAME = rocket_animation

default:
	rm -f *.class
	rm -f *.java
	cat ./files/top.txt $(FILENAME).pde ./files/bottom.txt >> $(FILENAME).java
	javac -cp "./files/core.jar" $(FILENAME).java
	java -cp "./files/core.jar:." $(FILENAME) 1800 500

clean:
	rm -f *.class
	rm -f *.java
run:
	java -cp "./files/core.jar:." $(FILENAME)
