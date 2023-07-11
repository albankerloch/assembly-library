/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akerloc- <akerloc-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/09 12:11:24 by akerloc-          #+#    #+#             */
/*   Updated: 2020/02/09 15:55:45 by akerloc-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void	ft_check_strcpy(void)
{
	char *str;
	char *dest;
	char *str2;
	char *dest2;

	printf("strcpy\n");
	str = strdup("essai234");
	dest = strdup("vide");
	str2 = strdup("essai234");
	dest2 = strdup("vide2");
	printf("%s\n", dest);
	printf("%s\n", strcpy(dest, str));
	printf("%s\n\n", dest);
	printf("%s\n", dest2);
	printf("%s\n", ft_strcpy(dest2, str2));
	printf("%s\n\n", dest2);
}

void	ft_check_read(void)
{
	int		fd;
	char	buffer[100];

	printf("read\n");
	fd = open("main.c", O_RDONLY);
	ft_read(fd, buffer, 100);
	buffer[99] = '\0';
	printf("%s\n\n", buffer);
	close(fd);
	fd = open("main.c", O_RDONLY);
	read(fd, buffer, 100);
	buffer[99] = '\0';
	printf("%s\n\n", buffer);
}

void	ft_check_strdup(void)
{
	char	*str;
	char	*str2;
	char	*dest;
	char	*dest2;

	printf("strdup\n");
	str = strdup("essai");
	str2 = strdup("essai2");
	printf("%s\n", str);
	dest = strdup(str);
	printf("%s\n\n", dest);
	printf("%s\n", str2);
	dest2 = ft_strdup(str2);
	printf("%s\n", dest2);
}

int		main(void)
{
	printf("\nstrlen\n");
	printf("%zu\n", ft_strlen("essai1"));
	printf("%zu\n\n", ft_strlen("essai12"));
	printf("%zu\n", strlen("essai1"));
	printf("%zu\n\n", strlen("essai12"));
	printf("write\n");
	ft_write(1, "essai1\n", 7);
	ft_write(1, "essai2\n\n", 8);
	printf("strcmp\n");
	printf("%d %d\n", ft_strcmp("essai1", "essai2"), strcmp("essai1", "\
essai2"));
	printf("%d %d\n", ft_strcmp("esspai1", "essai2"), strcmp("esspai1", "\
essai2"));
	printf("%d %d\n", ft_strcmp("essai12", "essai12"), strcmp("essai12", "\
essai12"));
	printf("%d %d\n", ft_strcmp("e", "essai12"), strcmp("e", "essai12"));
	printf("%d %d\n\n", ft_strcmp("", "essai12"), strcmp("", "essai12"));
	ft_check_read();
	ft_check_strcpy();
	ft_check_strdup();
	return (0);
}
