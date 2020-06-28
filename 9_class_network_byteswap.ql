import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists(MacroInvocation mi |
            mi.getMacro().getName().regexpMatch("ntoh[ls]l?") and
            mi.getExpr() = this
        )
    } 
}
  
from NetworkByteSwap n
select n, "Network byte swap"
