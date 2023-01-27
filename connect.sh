sudo ssh -o StrictHostKeyChecking=no -N \ 
    \ -L 8080:flip3.engr.oregonstate.edu:2236 \
    \ -L 3308:classmysql.engr.oregonstate.edu:3306 \
    \ -L 443:classmysql.engr.oregonstate.edu:443 \ 
    \ moncrief@access.engr.oregonstate.edu