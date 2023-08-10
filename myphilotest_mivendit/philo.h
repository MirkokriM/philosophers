
#ifndef PHILO_H
# define PHILO_H 

# include <stdio.h>
# include <stdlib.h>
# include <pthread.h>

typedef struct s_data
{
    int philo_num;
    int time_to_die;
    int time_to_eat;
    int time_to_sleep;
    int must_eat;

}   t_data;







#endif