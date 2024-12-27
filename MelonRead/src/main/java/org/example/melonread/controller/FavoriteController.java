package org.example.melonread.controller;

import org.example.melonread.entity.Favorite;
import org.example.melonread.service.FavoriteServiceImpl;
import org.example.melonread.util.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/melon/favorite")
@CrossOrigin
public class FavoriteController {

    @Autowired
    private FavoriteServiceImpl favoriteService;

    @PostMapping("/add")
    public ResponseResult<String> favoriteArticle(@RequestBody Favorite favorite) {
        boolean success = favoriteService.favoriteArticle(favorite);
        return success ? new ResponseResult<String>().success("Article favorited") : new ResponseResult<String>().fail("Favorite failed");
    }

    @DeleteMapping("/remove/{favoriteId}")
    public ResponseResult<String> unfavoriteArticle(@PathVariable Integer favoriteId) {
        boolean success = favoriteService.unfavoriteArticle(favoriteId);
        return success ? new ResponseResult<String>().success("Favorite removed") : new ResponseResult<String>().fail("Remove failed");
    }
}
