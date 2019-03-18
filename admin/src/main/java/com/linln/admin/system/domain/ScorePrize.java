package com.linln.admin.system.domain;

import lombok.Data;

@Data
public class ScorePrize {

    private String nickname;
    private String title;
    private Integer totalscore;
    private String level;

    public ScorePrize(String nickname,String title,Integer totalscore,String level) {
        this.nickname=nickname;
        this.title=title;
        this.totalscore=totalscore;
        this.level=level;
    }

}
