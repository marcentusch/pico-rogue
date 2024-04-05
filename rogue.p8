pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
function _init()
	grid={}
	initgrid()
end

function _draw()
	cls(8)
	rendergrid()
end

function _update()

end

function initgrid()
    for y=1,16 do
        grid[y]={}
        for x=1,16 do
            grid[y][x] = "#"
        end
    end
end

function rendergrid()
    for y=0,15 do
        for x=0,15 do
            local char=grid[y+1][x+1]
            print(char,x*8+2,y*8+1)
        end
    end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
