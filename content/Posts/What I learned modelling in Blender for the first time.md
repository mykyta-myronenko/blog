---
permalink: blender-first-time
publish: true
date published: 2024-09-17
tags:
  - blog
  - 3D-modelling
  - film_making
---

For the film I’m currently working on (working title: _[[stuck floating animation project|stuck floating]]_) I’ve decided that the best aesthetic is hybrid animation, combining 3D and 2D techniques.

So I launched blender and for the past week have been learning the ins-and-outs. By now I have a basic grasp on how to box model.

## Box modelling

It’s a technique used in 3D modelling where you start with a basic object, like a cube, and shape it into a more complex model. In Blender you’d do it by subdividing faces and edges, knife-cutting planes, adding ridges, extruding parts or moving vertices around - move, rotate and scale.

This method helps to keep the mesh size down, meaning it is more performant for scenes with lots of objects, and it's easier to work with the mesh further (i.e UV mapping and weight painting).

Other approaches include sculpting like in Z-Brush (Blender also has this functionality but Z-Brush is well-known even outside 3D-modelling circles), or other methods that I don't even know about.[^2]

## Storyboarding

I started with the idea for the script and currently working through the storyboard. To keep it simple I’m trying to do as much as possible in Blender. The Grease Pencil in Blender feels a little limiting compared to illustration softwares I have used before[^3], but in all honesty for now it's enough, and I haven't even scratched the surface. I’m sure Blender has a lot of powerful tools that I’m yet unaware of, so I might not need any other software for illustration in the future anyway.

## Modelling Objects

The storyboard, although very taxing, considering how many choices I have to make for every shot, has been very helpful to for visualising and learning what assets I might need.

One important one is a rotary telephone, which I think is a perfect first modelling project for beginners. It has a variety of shapes, you can keep it quite low poly or go for a smoother look.[^4]

So here’s what I have so far.

![SFA_rotary phone (low poly)](https://www.dropbox.com/scl/fi/taeffwrw6l1em9ha5bjc2/SFA_rotary-phone-low-poly.png?rlkey=4uohghag5kjdrykycr85xdqp5&st=7wdht5nq&raw=1)

A little cute red rotary phone. It can be rendered with low polygon count.

![SFA_rotary phone](https://www.dropbox.com/scl/fi/3tnqpgn9oq8k5i6w625nr/SFA_rotary-phone.png?rlkey=7orleiyzfmsb0bfmy1n84jaoz&st=qjjyxfb9&raw=1)

Or be rendered smooth-ish-ly, by increasing the subdivision count in modifiers. I am leaning towards keeping it low poly, because I like the style and it is admittedly easier to make.

## Keeping Topography Clean

My topography is not super correct, which has created some issues when working with subdivision tools. This is most likely because my model contains non-Quad N-gons, meaning planes with more than 5 vertices. If you try to subdivide a non-Quad plane (for example a triangle) Blender doesn’t how to “cut up” the triangle so it just stops trying.

A good rule of thumb for good topology, from what I’ve seen, is making sure that planes are for the most part quads (4 vertices), and making sure their vertices are planar.[^5][^6]

[^2]: Would photogrammetry be also considered a 3D modelling technique?

[^3]: Previously I’ve used Photoshop, Krita and a little bit of Flash (Adobe Animate). Krita, when I was heavily using it 6 years ago, I found very good for illustration and animation, because I love the simplicity and the power that comes with raster software. Photoshop is not super great for animation, but great for raster illustration. Flash’s development has been basically dead for the past 8-or-so years, and Blender nowadays can offer a ton more, judging from my limited exposure to both softwares.

[^4]: And with Blender’s modifiers I don't have to decide right away. You can subdivide the mesh in a non-destructive way. For now I lean towards low-poly aesthetic but that could change. I like this non-committal option…

[^5]: When I say planar, I mean that the edges that are defining the object’s face are parallel - they could lie on a single imaginary plane. Non-planar faces result in being a little [twisted](https://study.com/cimages/videopreview/screenshot-421_121909.jpg). The computer will draw it but it creates issues. Triangles are always planar. Just like you can draw a line through any two points, you can place a plane between any 3 vertices. It's the quads that could become non-planar, and one (not always ideal) way to fix this is by splitting it into triangles. Another good axiom is that any two parallel edges are co-planar, and that a planar quad only needs two planar edges. So to fix a quad, one could make two of its edges parallel, or to make sure that at least two of it’s edges are planar.

[^6]: I want to note a difference between terms planar and co-planar, since it was something I got confused about. Planar means that a faces edges and vertices lay on the same plane. Planar refers only to one face. Co-planar refers when comparing multiple planes. If two faces are co-planar, it means they are intersecting alongside a single plane. This might cause artifacting, like shimmering and antialiasing where the renderer doesn't know which plane to draw in front. “Perfectly” co-planar faces will have identical coordinates for all of their vertices. This could happen if you accidentally duplicate a face and forget to delete it for example. Which results in (usually undesired) artifacting.
