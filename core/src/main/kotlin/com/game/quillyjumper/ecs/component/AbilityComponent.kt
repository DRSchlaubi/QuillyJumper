package com.game.quillyjumper.ecs.component

import com.badlogic.ashley.core.Component
import com.badlogic.ashley.core.Entity
import com.badlogic.gdx.utils.Array
import com.badlogic.gdx.utils.Pool
import com.game.quillyjumper.ability.Ability
import com.game.quillyjumper.ability.AbilityEffect
import ktx.ashley.get
import ktx.ashley.mapperFor

enum class CastOrder {
    NONE, BEGIN_CAST, CAST
}

class AbilityComponent : Component, Pool.Poolable {
    var order = CastOrder.NONE
    var abilityToCastIdx = -1
    val abilities = Array<Ability>(2)

    companion object {
        val mapper = mapperFor<AbilityComponent>()
    }

    fun canCast() = abilityToCastIdx >= 0 && abilityToCastIdx < abilities.size && abilities[abilityToCastIdx].canCast()

    fun addAbility(entity: Entity, abilityEffect: AbilityEffect) {
        abilities.add(Ability.pool.obtain().apply {
            owner = entity
            effect = abilityEffect
        })
        if (abilityToCastIdx == -1) {
            // no active ability yet -> make the first ability active
            abilityToCastIdx = 0
        }
    }

    override fun reset() {
        abilities.forEach {
            Ability.pool.free(it)
        }
        abilities.clear()
    }
}

val Entity.abilityCmp: AbilityComponent
    get() = this[AbilityComponent.mapper]
        ?: throw KotlinNullPointerException("Trying to access an ability component which is null")
