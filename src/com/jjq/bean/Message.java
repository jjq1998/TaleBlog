package com.jjq.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;

@Repository
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message
{
    private int id;
    private int articleId;
    private String userName;
    private String content;
    private String articleName;
    private Timestamp createTime;
}
