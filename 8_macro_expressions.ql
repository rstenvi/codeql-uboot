import cpp

from MacroInvocation mi
where mi.getMacro().getName().regexpMatch("ntoh[ls]l?")
select mi, mi.getExpr()
