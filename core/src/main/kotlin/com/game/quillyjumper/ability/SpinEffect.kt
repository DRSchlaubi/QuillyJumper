package com.game.quillyjumper.ability

import com.game.quillyjumper.ecs.component.attackCmp
import com.game.quillyjumper.ecs.component.statsCmp

object SpinEffect : AbilityEffect {
    override val cost = 0
    override val cooldown = 0f

    override fun trigger(ability: Ability) {
        ability.dealAreaDamage(ability.owner.statsCmp.damage, ability.owner.attackCmp.range, 0.75f)
    }
}
