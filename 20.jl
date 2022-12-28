using HorizonSideRobots
function move_next!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
    else
        move!(robot, right(side))
        move_next!(robot, side)
        move!(robot, left(side))
    end
end
