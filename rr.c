/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rr.c                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vimercie <vimercie@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/30 16:10:59 by vimercie          #+#    #+#             */
/*   Updated: 2022/04/05 17:40:45 by vimercie         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void    rr(int *stack_a, int *stack_b)
{
    rotate(stack_a, 't');
    rotate(stack_b, 's');
    return ;
}
