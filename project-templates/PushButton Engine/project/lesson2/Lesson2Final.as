/*******************************************************************************
 * PushButton Engine
 * Copyright (C) 2009 PushButton Labs, LLC
 * For more information see http://www.pushbuttonengine.com
 * 
 * This file is licensed under the terms of the MIT license, which is included
 * in the License.html file at the root directory of this SDK.
 ******************************************************************************/

package
{
    import com.pblabs.engine.PBE;
    import com.pblabs.engine.core.*;
    import com.pblabs.engine.entity.*;
    import com.pblabs.rendering2D.*;
    import com.pblabs.rendering2D.ui.*;
    
    import flash.display.Sprite;
    import flash.geom.Point;
    
    [SWF(width="800", height="600", frameRate="60")]
    public class Lesson2Final extends Sprite
    {
        public function Lesson2Final()
        {
            PBE.startup(this);                                                // Start up PBE
            
            createScene();                                                    // Set up a simple scene entity
            
            createHero();                                                     // Create a simple avatar entity
        }
        
        private function createScene():void 
        {
            var sceneView:SceneView = new SceneView();                        // Make the SceneView
            sceneView.width = 800;
            sceneView.height = 600;
            
            PBE.initializeScene(sceneView);                                   // This is just a helper function that will set up a basic scene for us
        }
        
        private function createHero():void
        {
            var hero:IEntity = allocateEntity();                              // Allocate an entity for our hero avatar
            
            var spatial:SimpleSpatialComponent = new SimpleSpatialComponent();// Create our spatial component
            
            spatial.position = new Point(-375,-275);                          // Set our hero's spatial position as -375,-275 -- the upper left corner
            spatial.size = new Point(50,50);                                  // Set our hero's size as 50,50
            spatial.spatialManager = PBE.spatialManager;

            hero.addComponent( spatial, "Spatial" );                          // Add our spatial component to the Hero entity with the name "Spatial"
            
            var render:SimpleShapeRenderer = new SimpleShapeRenderer();       // Create a renderer to display our object
            render.fillColor = 0x0000FF0;
            render.isCircle = true;
            render.radius = 25;
            render.lineSize = 2;
            render.lineColor = 0x000000;
            render.scene = PBE.scene;                                         // Set which scene this is a part of
            
            // Point the render component to this entity's Spatial component for position information
            render.positionProperty = new PropertyReference("@Spatial.position");
            // Point the render component to this entity's Spatial component for rotation information
            render.rotationProperty = new PropertyReference("@Spatial.rotation");
            
            hero.addComponent( render, "Render" );                            // Add our render component to the Hero entity with the name "Render"

            var controller:DemoControllerComponent = new DemoControllerComponent();
            // Point the controller component to this entity's Spatial component for position information
            controller.positionReference = new PropertyReference("@Spatial.position");
            // Add the demo controller component to the Hero entity with the name "Controller"
            hero.addComponent( controller, "Controller" );
            
            hero.initialize("Hero");                                          // Register the entity with PBE under the name "Hero"         
        }
    }
}
