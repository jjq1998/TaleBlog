package com.jjq.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ArticlePage
{
    private int currentPage = 1;//当前页
    private int pageCount = 20;//每页文章数
    private int beginCount;
    private int totalCount;//总文章数目
    private int totalPage;//总页数
    private List<Article> pageDate;//查询得到的结果

    public int getTotalPage()
    {
        totalPage = totalCount / pageCount;
        if (totalCount % pageCount != 0)
            totalPage++;
        return totalPage;
    }

    public int getBeginCount()
    {
        return (currentPage - 1) * 10;
    }
}
