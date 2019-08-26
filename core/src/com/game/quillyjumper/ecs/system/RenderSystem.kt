package com.game.quillyjumper.ecs.system

import com.badlogic.ashley.core.Entity
import com.badlogic.ashley.systems.SortedIteratingSystem
import com.badlogic.gdx.graphics.g2d.SpriteBatch
import com.badlogic.gdx.physics.box2d.Box2DDebugRenderer
import com.badlogic.gdx.physics.box2d.World
import com.badlogic.gdx.utils.viewport.Viewport
import com.game.quillyjumper.ecs.component.RenderComponent
import com.game.quillyjumper.ecs.component.TransformComponent
import com.game.quillyjumper.ecs.component.render
import com.game.quillyjumper.ecs.component.transform
import ktx.ashley.allOf
import ktx.graphics.use
import ktx.log.logger

private val LOG = logger<RenderSystem>()

class RenderSystem(private val batch: SpriteBatch,
                   private val gameViewPort: Viewport,
                   private val world: World,
                   private val box2DDebugRenderer: Box2DDebugRenderer) : SortedIteratingSystem(allOf(RenderComponent::class, TransformComponent::class).get(),
        // sort entities by z and y coordinate
        // z = background or foreground
        // y = y value of positionXY
        compareBy(
                { entity -> entity.transform.z },
                { entity -> entity.transform.position.y }
        )) {
    override fun update(deltaTime: Float) {
        // always sort entities before rendering
        forceSort()
        // render entities
        gameViewPort.apply()
        batch.projectionMatrix = gameViewPort.camera.combined
        batch.use { super.update(deltaTime) }
        // debug render box2d
        box2DDebugRenderer.render(world, gameViewPort.camera.combined)
    }

    override fun processEntity(entity: Entity, deltaTime: Float) {
        // if the sprite does not have any texture then do not render it to avoid null pointer exceptions
        entity.render.sprite.run {
            if (texture == null) {
                LOG.error { "Entity is without a texture for rendering" }
                return
            }

            // adjust sprite position to render image centered around the entity's position
            setPosition(entity.transform.interpolatedPosition.x - width * 0.25f, entity.transform.interpolatedPosition.y - 0.01f)
            draw(batch)
        }
    }
}