package com.linln.admin.system.repository;

import com.linln.admin.system.domain.Score;
import com.linln.admin.system.domain.ScorePrize;
import com.linln.admin.system.repository.BaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;


/**
 * @author wuyz
 * @date 2019/03/17
 */
public interface ScoreRepository extends BaseRepository<Score, Long> {

    @Query(value = "SELECT a.glass_id as id,COUNT(a.course_id) as count FROM sys_score a GROUP BY a.glass_id ", nativeQuery = true)
    List<Map<String, Object>> selectGlassUserCount();

    @Query(value = "SELECT b.nickname,c.title,sum(a.score+a.behavior_score) as totalscore,'1' as level FROM sys_score a " +
            "LEFT JOIN sys_user b on a.user_id=b.id LEFT JOIN sys_glass c on a.glass_id=c.id WHERE a.glass_id= ?1 ORDER BY totalscore DESC LIMIT ?2", nativeQuery = true)
    List<Map<String, Object>> selectScorePrizeByGlassId(@Param("glassId") Long glassId, @Param("s") Integer s);
}

