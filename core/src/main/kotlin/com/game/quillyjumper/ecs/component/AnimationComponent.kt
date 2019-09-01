package com.game.quillyjumper.ecs.component

import com.badlogic.ashley.core.Component
import com.badlogic.gdx.graphics.g2d.TextureAtlas
import com.badlogic.gdx.utils.Array
import ktx.ashley.mapperFor

enum class ModelType {
    UNKNOWN,
    PLAYER,
    BLUE_SLIME
}

enum class AnimationType {
    IDLE, RUN, JUMP, FALL
}

class Animation(
    val modelType: ModelType,
    val animationType: AnimationType,
    regionKeys: Array<TextureAtlas.AtlasRegion>,
    frameDuration: Float = 1 / 15f
) : com.badlogic.gdx.graphics.g2d.Animation<TextureAtlas.AtlasRegion>(frameDuration, regionKeys)

class AnimationComponent(
    var modelType: ModelType = ModelType.UNKNOWN,
    var animationType: AnimationType = AnimationType.IDLE,
    var animationTime: Float = 0f
) : Component {
    // animation gets initialized in AnimationSystem
    lateinit var animation: Animation

    companion object {
        val mapper = mapperFor<AnimationComponent>()
    }
}