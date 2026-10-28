import math
import pyperclip
import datetime

#//vars
particle_name="sculk_soul"
#radius, in blocks, of circle 
circle_radius=0
#num of points in circle
particle_count=12
#velocity 
particle_velocity=1
particle_velocity*= 1000000.0
force_mode=""
if force_mode!="":force_mode=" "+force_mode

#//script
#empty
commands=[]

for i in range(particle_count):
    #radian conversion
    angle=(i*360/particle_count)*(math.pi/180)
    
    x=circle_radius*math.sin(angle)
    y=circle_radius*math.cos(angle)
    
    dx=math.sin(angle)*particle_velocity
    dy=math.cos(angle)*particle_velocity

    #set to blank if close enough to zero (so no e^-129813)
    x_str=f"^{round(x, 16)}" if abs(math.sin(angle)) > 0.01 else "^"
    y_str=f"^{round(y, 16)}" if abs(math.cos(angle)) > 0.01 else "^"
    dx_str=f"^{round(dx, 10)}" if abs(math.sin(angle)) > 0.01 else "^"
    dy_str=f"^{round(dy, 10)}" if abs(math.cos(angle)) > 0.01 else "^"

    #instantiate
    command=f"particle {particle_name} {x_str} {y_str} ^ {dx_str} {dy_str} ^ 0.0000001 0{force_mode}"
    commands.append(command)

#voila
clipboard_content="\n".join(commands)
pyperclip.copy(clipboard_content)
current_time=datetime.datetime.now().strftime("%I:%M:%S %p")
print(f"[{current_time}] Copied {len(commands)} particles to clipboard.")


