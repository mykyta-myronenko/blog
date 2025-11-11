---
tags:
  - 3D-modelling
  - film_making
status: draft
title: Rigging my first 3D character
publish: "false"
---

After getting comfortable with Blender’s functionality for 3D-modelling, I thought why wait and jumped into rigging my first character.

It’s… still work in progress.

But I did find that it's not all so scary — although _very_ time-consuming on the first go.

The character I’m modelling is a semi-realistic astronaut for my animated short film.

%%
I don't have a very clear vision of the style but I know that I want to hybridise 3D and 2D animation. This might mean rotoscoping 3D models after I’m finished animating them, which sounds a little bit like animating same thing twice… We’ll see how I feel in a month.
%%

# Rigging was… easier than you’d expect!

For my project specifically, the “spaceman” character should be a fairly forgiving beginner-friendly experience. In all scenes the space-guy will be quite still and sort of just drifting or gently spinning.

He will only be seen in full from afar, and all the close-ups focus on the space-buds visor which will have nearly 100% reflectivity.^[Meaning the face doesn't need to be animated for the most part, but we’ll see about that. The obstuction of the space-dude’s features are important to the story–for now–but that could change as I finalise the storyboard.]

All of this means that I don’t need to over-detail the space suit too much; I for sure can get away with low poly mesh (I do like the PS1 aesthetic); and realistically I only need to rig his shoulders, arms, and some of the fingers (thumb, pointer finger, and the rest as a “mitten”). It also means I don't need to worry about feet-to-ground interactions (i.e. Inverse Kinematics, or IK)[^1] because, our space-pal never touches the ground, or anything else, apart from his little virtual screen.[^3] And I’m sure a tone of other stuff I don't even know I won't have to worry about.

The short point is, because astronauts are not know for their bombastic animated movements and are just sort of floating fetus-style, I can get away with a really simple and rigid rig.[^2]

# My approach

Before modelling my little space-friend, I looked into some best practices to avoid making silly time-wasting mistakes [that didn't really work].

Here are some concepts that helped me inform my modelling choices:

1. is your character a solid mesh, or split in parts
2. knowing the different approaches for rigging a solid character vs a character split in several parts
3. choosing the default modelling pose, between T-pose, A-pose, “Hug-pose”, and other options.

My space…-amigo is not very cartoony. It's a fairly grounded in reality character design, so I’m going with these “configs”:

1. Solid mesh^[I can model parts separately but then use boolean union modifier to merge.]
2. More-or-less manual rig.^[Because I’m doing a solid humanoid mesh, a lot of the rigging *could* be automated via add-ons. But I’m going down the manual route to learn more. It’s a simple enough rig to do manually I believe.]
3. “Hug-pose” seems to make the most sense for a space-boy, as astronauts are very fetus-like… in terms of their pose I mean.

[^1]:

[^2]: For now… I do want to add two more human characters which will have to be fully rigged (including faces, unless I decide to go the 2D route), so I’m yet to experience the real suffering of character rigging. Before I jump into that mess, I should really finish the storyboard and the voice lines.

[^3]: That actually might benefit from IK for the sake of learning it on a tiniest scale–a single finger–and to simplify the animation process.
