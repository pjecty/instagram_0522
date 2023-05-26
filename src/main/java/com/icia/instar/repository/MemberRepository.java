package com.icia.instar.repository;

import com.icia.instar.dto.MemberDTO;
import com.icia.instar.dto.MemberFileDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public MemberDTO save(MemberDTO memberDTO) {

        sql.insert("Member.save", memberDTO);
        return memberDTO;
    }

    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }

    public MemberDTO findByEmail(String memberEmail) {
        return sql.selectOne("Member.findByEmail", memberEmail);
    }


    public void update(MemberDTO memberDTO) {
        sql.update("Member.update", memberDTO);
    }

    public void updateA(MemberDTO memberDTO) {
        sql.update("Member.updateA", memberDTO);
    }

    public void delete(Long id) {
        sql.delete("Member.delete", id);
    }

    public void saveFile(MemberFileDTO memberFileDTO) {
        sql.insert("Member.saveFile", memberFileDTO);
    }
}
