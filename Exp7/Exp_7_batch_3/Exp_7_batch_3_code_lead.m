%%lead compensator
s=tf('s');
gp = 10/(s^2+s);
figure(1)
step(feedback(gp,1))
stepinfo(feedback(gp,1))
title('closed loop response for the transfer function gp=10/(s^2+s) with feedback 1')
figure(2)
bode(gp)
margin(gp)
[m_r,w_r] = getPeakGain(feedback(gp,1))
gc = (1+0.385*s)/(1 + 0.162*s);
gt = gp*gc;
figure(3)
step(feedback(gt,1))
stepinfo(feedback(gt,1))
title('closed loop response for the transfer function gc = (1+0.385*s)/(1 + 0.162*s)with feedback 1')
figure(4)
bode(gt)
margin(gt)
[m_r_cont,w_r_cont] = getPeakGain(feedback(gt,1))
