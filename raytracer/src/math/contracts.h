#include <assert.h>

#define DEBUGxxxx

#ifdef DEBUG

#define ASSERT(x)      assert(x)
#define REQUIRES(x)    assert(x)
#define ENSURES(x)     assert(x)

#else

#define ASSERT(x)
#define REQUIRES(x)
#define ENSURES(x)

#endif
