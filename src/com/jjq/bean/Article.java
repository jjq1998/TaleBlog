package com.jjq.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.ArrayList;

@Repository
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article
{
    private int id;
    private int cid;
    private int visitCount;
    private String title;
    private String content;
    private String state;
    private Timestamp createTime;
    private String categoryName;
    private String userName;
    private ArrayList<Tag> tags;
    private int messageCount;
    private String background;

    public String getBackground()
    {
        int count = (int)Math.abs(Math.random()*20);
        if (count > 20)
        {
            count = 20;
        }
        else if (count <=0)
        {
            count = 1;
        }
        String file = "/image/articleBackground/" + count + ".jpg";
        return file;
    }
}
