default:
	rm -f *.class
	javac -cp "core.jar" rocket_animation.java
	java -cp "core.jar:." rocket_animation

clean:
	rm -f *.class

run:
	java -cp "core.jar:." rocket_animation
