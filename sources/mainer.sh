mainer () {
    touch Main.java
    echo "public class Main {" > Main.java
    echo "    public static void main(String[] args) {" >> Main.java
    echo "        " >> Main.java
    echo "    }" >> Main.java
    echo "}" >> Main.java
}

mainerUVA () {
    touch Main.java
    echo "import java.util.*;" > Main.java
    echo "" >> Main.java
    echo "public class Main {" >> Main.java
    echo "    public static void main(String[] args) {" >> Main.java
    echo "        Scanner scanner = new Scanner(System.in);" >> Main.java
    echo "        " >> Main.java
    echo "        scanner.close();" >> Main.java
    echo "    }" >> Main.java
    echo "}" >> Main.java
    touch input
}


