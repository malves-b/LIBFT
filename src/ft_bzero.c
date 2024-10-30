/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: malves-b <malves-b@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/09 12:08:54 by malves-b          #+#    #+#             */
/*   Updated: 2024/10/30 12:06:25 by malves-b         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

void	ft_bzero(void *s, size_t x)
{
	ft_memset(s, 0, x);
}
/* 
#include <ctype.h>

int	main(void)
{
	char	b[30] = "teste teste teste teste";

	ft_bzero(b, 5);
	puts(b);
} */