-- Hello
-- This program will compiled to hello(1)
--
-- Build & Run:
-- % terra hello.t
-- % ./hello

local stdio = terralib.includec("stdio.h")

terra main()
    stdio.printf("Hello, world.\n")
end

terralib.saveobj("hello", {main = main})
