#ifndef TextureManager_hpp
#define TextureManager_hpp

#include "Game.hpp"
class TextureManager {

public:
    static SDL_Texture* LoadTexture(const char* filename, SDL_Renderer* ren);
};

#endif /* TextureManager_hpp */
