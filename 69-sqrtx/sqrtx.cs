public class Solution {
    public int MySqrt(int x) {
        long guess = x;
        while(guess * guess > x){
            guess = (guess + (x/guess))/2;
        }
        return (int)guess;

    }
}