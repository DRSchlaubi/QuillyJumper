package com.game.quillyjumper.ecs.component

import com.badlogic.ashley.core.Component
import com.badlogic.ashley.core.Entity
import ktx.ashley.mapperFor

class KillerComponent : Component {
    lateinit var killer: Entity

    companion object {
        val mapper = mapperFor<KillerComponent>()
    }
}