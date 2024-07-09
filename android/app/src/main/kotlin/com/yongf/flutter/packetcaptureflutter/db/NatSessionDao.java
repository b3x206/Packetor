package com.yongf.flutter.packetcaptureflutter.db;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

/**
 * @author wangyong.1996@bytedance.com
 * @since 2019-04-21.
 */
@Dao
public interface NatSessionDao {

    @Query("SELECT * FROM TB_NAT_SESSION")
    List<NatSessionEntity> getAll();

    @Query("SELECT * FROM tb_nat_session where id in (:ids)")
    List<NatSessionEntity> getAllByIds(long[] ids);

    @Insert
    void insert(NatSessionEntity... entities);

    @Delete
    void delete(NatSessionEntity entity);

    @Update
    void update(NatSessionEntity entity);
}
