package com.game.quillyjumper.ability

import com.game.quillyjumper.assets.ParticleAssets

object FireballEffect : AbilityEffect {
    override val cost = 3
    override val cooldown = 2f

    override fun trigger(ability: Ability) {
        ability.createMissile(0.5f, 5f, 1f, ParticleAssets.FIREBALL)
    }
}
