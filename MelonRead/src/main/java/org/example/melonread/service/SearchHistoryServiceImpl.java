package org.example.melonread.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.SearchHistoryDao;
import org.example.melonread.entity.SearchHistory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchHistoryServiceImpl extends ServiceImpl<SearchHistoryDao, SearchHistory> {

    // 获取用户的搜索历史
//    public List<SearchHistory> getSearchHistoryByUserId(Integer userId) {
//        return this.lambdaQuery().eq(SearchHistory::getUserId, userId).orderByDesc(SearchHistory::getSearchedAt).list();
//    }

    // 添加搜索历史
    public boolean addSearchHistory(SearchHistory searchHistory) {
        return this.save(searchHistory);
    }

    // 清空搜索历史
//    public boolean clearSearchHistory(Integer userId) {
//        return this.lambdaUpdate().eq(SearchHistory::getUserId, userId).remove();
//    }
}
