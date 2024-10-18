/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nigarcia <nigarcia@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/12 14:29:38 by nigarcia          #+#    #+#             */
/*   Updated: 2022/05/16 12:25:23 by nigarcia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*cur;
	t_list	*newlst;
	t_list	*newcur;

	if (lst == NULL)
		return (NULL);
	cur = lst;
	newlst = ft_lstnew((*f)(cur->content));
	if (newlst == NULL)
		return (NULL);
	while (cur->next != NULL)
	{
		newcur = ft_lstnew((*f)(cur->next->content));
		if (newcur == NULL)
		{
			ft_lstclear(&newlst, del);
			return (NULL);
		}
		ft_lstadd_back(&newlst, newcur);
		cur = cur->next;
	}
	return (newlst);
}
