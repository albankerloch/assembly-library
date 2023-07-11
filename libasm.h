/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akerloc- <akerloc-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/09 12:12:57 by akerloc-          #+#    #+#             */
/*   Updated: 2020/02/09 12:14:49 by akerloc-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <inttypes.h>
# include <string.h>
# include <fcntl.h>
# include <unistd.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
ssize_t	ft_write(int fd, const void *buf, size_t count);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *s);
ssize_t	ft_read(int fd, void *buf, size_t count);

#endif
