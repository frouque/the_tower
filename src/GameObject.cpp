#include "GameObject.hpp"
#include "TextureManager.hpp"

GameObject::GameObject(const char* textureSheet, int x, int y) {
    objTexture = TextureManager::LoadTexture(textureSheet);

    xpos = x;
    ypos = y;
}

GameObject::~GameObject() {}

void GameObject::update() {
    xpos++;
    ypos++;

    srcRect.h = 32;
    srcRect.w = 32;
    srcRect.x = 0;
    srcRect.y = 0;

    destRect.w = srcRect.w * 2;
    destRect.h = srcRect.h * 2;
    destRect.x = xpos;
    destRect.y = ypos;
}

void GameObject::render() {
    SDL_RenderCopy(Game::renderer, objTexture, &srcRect, &destRect);
}