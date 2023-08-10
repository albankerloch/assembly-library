/**
 * @file ft_libasm.h
 * @author alban kerloc'h
 * @date 01/02/2020
 * @version 1.0
 */

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
