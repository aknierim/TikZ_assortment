## QR standalone

This simple LaTeX document allows to create a QR code by simply changing the following parameters inside `qr.tex`:
```tex
\qrurl{}            % URL or text for QR code
\qrheight{}         % Height of the QR code

\leftcolor{}        % Left color (for color gradient)
\rightcolor{}       % Right color (for color gradient)
\gradientangle{}    % Gradient angle

\imageheight{}      % Image height
\qrimage{}          % Image path
\imagepadding{}     % Image padding
```
Note, that some parameters (`gradientangle`, `qrimage`, `imagepadding`) do not require an input value and will fall 
back to a default value if empty. Also, this project was mainly for me learning more about "interface3-style"
syntax in TeX. I don't think it has a lot value to anyone else :)
