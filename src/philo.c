#include "./philo.h"

int parse_arg(t_data *data, int argc, char **argv)
{
    data->philo_num = atoi(argv[1]);
    if (data->philo_num < 1)
        return (1);
    data->time_to_die = atoi(argv[2]);
    if (data->time_to_die < 1)
        return (1);
    data->time_to_eat = atoi(argv[3]);
    if (data->time_to_eat < 1)
        return (1);
    data->time_to_sleep = atoi(argv[4]);
    if (data->time_to_sleep < 1)
        return (1);
    if (argc == 6)
    {
        data->must_eat = atoi(argv[5]);
        if (data->must_eat < 1)
            return (1);
    }
    else
        data->must_eat = 0;
    return (0);
}

void data_debug(t_data *data)
{
    printf("philo_num: %d\n", data->philo_num);
    printf("time_to_die: %d\n", data->time_to_die);
    printf("time_to_eat: %d\n", data->time_to_eat);
    printf("time_to_sleep: %d\n", data->time_to_sleep);
    printf("must_eat: %d\n", data->must_eat);
}

int main(int argc, char **argv)
{
    t_data data;

    if (argc <= 4 || argc > 6)
        return (1);
    if (parse_arg(&data, argc, argv))
        return (1);
    data_debug(&data);
    return (0);
}