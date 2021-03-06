package com.game.quillyjumper.ecs.system

import com.badlogic.ashley.core.Entity
import com.badlogic.ashley.systems.IteratingSystem
import com.badlogic.gdx.physics.box2d.World
import com.game.quillyjumper.ecs.component.*
import com.game.quillyjumper.ecs.damageEmitter
import ktx.ashley.allOf
import ktx.ashley.exclude

class AttackSystem(private val world: World) : IteratingSystem(
    allOf(
        AttackComponent::class,
        TransformComponent::class,
        StatsComponent::class,
        FacingComponent::class
    ).exclude(RemoveComponent::class).get()
) {
    override fun processEntity(entity: Entity, deltaTime: Float) {
        entity.attackCmp.run {
            if (canAttack() && order == AttackOrder.ATTACK_ONCE) {
                // entity wants to attack and has no cooldown on its attack
                // 1) set cooldown
                attackTime = cooldown
                // 2) create damage emitter entity
                val transform = entity.transfCmp
                val offsetX = when (entity.facingCmp.direction) {
                    FacingDirection.LEFT -> -range
                    else -> transform.size.x
                }
                engine.damageEmitter(
                    world,
                    transform.position.x + offsetX,
                    transform.position.y,
                    range,
                    transform.size.y,
                    entity.statsCmp.damage,
                    0.25f,
                    entity,
                    damageDelay
                )
            }
            attackTime -= deltaTime
        }
    }
}