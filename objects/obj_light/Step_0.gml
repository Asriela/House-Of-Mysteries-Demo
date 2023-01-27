/// @description Insert description here
// You can write your code in this editor



flow+=rr(-.01,0.01)
if flow>1
flow=1

if flow<1-fluctation
flow=1-fluctation

color=merge_color(color_1,color_2,flow)

if exists(owner){
x=owner.x
y=owner.y
}
else
instance_destroy(id)