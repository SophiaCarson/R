funs <- function(n) {
    if (n <= 0)
        list(fail = "Pls enter a positive integer")
    else{
        repeat {
            if (n == 1)
                break
            else if (n %% 2 == 0) {
                n <- n / 2
            }
            else
                n <- 3 * n + 1
        }
        print("Success")
    }
}