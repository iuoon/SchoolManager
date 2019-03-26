package com.linln.admin.system.domain;

import lombok.Data;

@Data
public class ScorePrize {

    private String nickname;
    private String title;
    private Integer totalScore;
    private String level;

    public ScorePrize(String nickname,String title,Integer totalScore,String level) {
        this.nickname=nickname;
        this.title=title;
        this.totalScore=totalScore;
        this.level=level;
    }

}
