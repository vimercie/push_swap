/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vimercie <vimercie@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/30 15:30:22 by vimercie          #+#    #+#             */
/*   Updated: 2022/04/05 17:48:44 by vimercie         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"
#include <stdio.h>

void	main_tester(int *stack_a, int *stack_b)
{
	int	i;

	i = 0;
	dprintf (1, "stack_a =\n");
	while (stack_a[i])
	{
		dprintf(1, "%d\n", stack_a[i]);
		i++;
	}
	i = 0;
	dprintf (1, "stack_b =\n");
	while (stack_b[i])
	{
		dprintf(1, "%d\n", stack_b[i]);
		i++;
	}
}

int	main(int argc, char **argv)
{
	int	*stack_a;
	int	*stack_b;
	int	size;

	size = 0;
	// if (argc <= 1)
	// 	return (0);
	// else
	// 	return (error_check(argc, argv));
	stack_a = ft_calloc(argc, sizeof(int));
	stack_b = ft_calloc(argc, sizeof(int));
	while (size < (argc - 1))
	{
		stack_a[size] = ft_atoi(argv[size + 1]);
		size++;
	}
	quick_sort(stack_a, stack_b, 0, size - 1);
	main_tester(stack_a, stack_b);
}
