#include <tbb/task_scheduler_init.h>
#include <iostream>
int main()
{
    std::cout << tbb::task_scheduler_init::default_num_threads() << std::endl;
    return 0;
}
