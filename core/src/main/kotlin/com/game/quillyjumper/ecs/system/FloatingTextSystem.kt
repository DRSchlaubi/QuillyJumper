package com.game.quillyjumper.ecs.system

import com.badlogic.ashley.core.Entity
import com.badlogic.ashley.systems.SortedIteratingSystem
import com.badlogic.gdx.graphics.OrthographicCamera
import com.badlogic.gdx.graphics.g2d.SpriteBatch
import com.badlogic.gdx.utils.viewport.Viewport
import com.game.quillyjumper.ecs.component.*
import ktx.ashley.allOf
import ktx.ashley.exclude
import ktx.graphics.use
import ktx.math.vec2

class FloatingTextSystem(
    private val batch: SpriteBatch,
    private val gameViewport: Viewport,
    private val uiViewport: Viewport
) : SortedIteratingSystem(
    allOf(FloatingTextComponent::class, TransformComponent::class).exclude(RemoveComponent::class).get(),
    compareBy { entity -> entity.transfCmp }
) {
    private val camera = uiViewport.camera as OrthographicCamera
    private val projectionVector = vec2()

    override fun update(deltaTime: Float) {
        // always sort entities before rendering
        forceSort()
        // update camera to set the correct matrix for rendering later on
        uiViewport.apply(true)
        batch.use(camera.combined) {
            // render entities
            super.update(deltaTime)
        }
    }

    override fun processEntity(entity: Entity, deltaTime: Float) {
        entity.floatingCmp.run {
            // 1) reduce lifespan and check if text should be removed
            lifeSpan -= deltaTime
            if (lifeSpan <= 0f) {
                entity.add(engine.createComponent(RemoveComponent::class.java))
                return
            }

            // 2) move floating text according to speed
            val transform = entity.transfCmp
            transform.position.set(
                transform.position.x + speed.x * deltaTime,
                transform.position.y - speed.y * deltaTime
            )

            // 3) render text
            projectionVector.set(transform.position)
            // transform world to screen coordinates
            gameViewport.project(projectionVector)
            // transform screen to UI coordinates
            uiViewport.unproject(projectionVector)
            font.color = color
            font.draw(batch, stringBuilder, projectionVector.x, uiViewport.screenHeight - projectionVector.y)
        }
    }
}