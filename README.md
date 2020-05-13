# DSP first

## Guide To From GitHub And Create Virtual Environment For The Project
```console
foo@bar:~$ git clone https://github.com/hosseinmohammadi12/dsp_first.git
foo@bar:~$ cd /PATH/TO/dsp_first/
foo@bar:~$ python3 -m venv .    # Create venv for current/working directory
foo@bar:~$ source ./bin/activate  # Active the venv
foo@bar:~$ pip3 install -r requirements.txt
```
## A Brief Description And Implementation of Project
### fseriesdemo
  - *The **Fourier series Demo** is a GUI that shows Fourier Series synthesis using different numbers of Fourier coefficients. One of the following signals can be synthesised*: 
    + Square wave 
    + Triangle    
    + Ramp 
    + Full-Wave rectified Sine 
    + Full-Wave rectified Cosine 
    + Half-Wave rectified Sine 
    + Half-Wave rectified Cosine 
  - Run the fseriesdemo (in *dsp_first* directory)
    ```console
    foo@bar:~$ cd fseriesdemo/
    foo@bar:~$ python fseriesdemo.py
    ```  
### sindrill 
  - ***Sindrill** is a program that helps master the understanding of sinusoids and enhances the ability to quickly identify their essential characteristics.*
  - Run the sindrill (in *dsp_first* directory) 
    ```console
    foo@bar:~$ cd sindrill/
    foo@bar:~$ python sindrill.py
    ```  
### amdemod
  - *Demodulate an amplitude modulated waveform using a simple scheme  consisting of a rectifier followed by a leaky first-order hold scheme.*
  **usage** : dd = amdemod(xx,fc,fs,tau)
### clip
  - *Clips a signal so laves fall between "lo" and "hi".*
  **usage** : y = clip( x, low, high )
### dirich
  -  *compute sin(L*omega/2)/Lsin(omega/2).*  
  **usage** : D = dirich(omega, L)
### dtft
  -  *calculate DTFT at N equally spaced frequencies.*
  **usage** : H, W = dtft(h, N)
### dtmfchck
  - *decode the DTMF waveform into keys that were pressed.*
  **usage** : keys = dtmfdeco(xx,fs)
### dtmfcut
  -  *find the DTMF tones within x[n].*
  **usage** : index = dtmfmain(xx,fs)
### firfilt
  - *FIR filter implemented as a difference equation.*
  **usage** : yy = firfilt(bb, xx)
### hammfilt
  - *FIR filter design with a Hamming window  works for lowpass, highpass, and bandpass cases.*
  **usage** : hh = hammfilt( N, WhHat, hilo )
### imsample
  - *Function for sub-sampling an image.*
  **usage** : yy = imsample(xx,P)
### inout
  - *plot LONG input & output signals together and plot LONG input & output signals.* together
  **usage** : inout(xin, yout, nstart, npts, nsect)
### mattostr
  - *convert an entire matrix X to formatted numbers.*
  **usage** : mattostr(X,STYLE)
### pkinterp
  - *interpolate to refine a peak position.*
  **usage** : peaks,pos = pkinterp( x, locs )
### pkpick
  - *pick out the peaks in a vector.*
  **usage** : peaks,locs = pkpick( x, thresh, number )
### showspec
  - *Plot a simple estimate of the spectrum of a signal.*
  **usage** : X,w = SHOWSPEC(x,fs)
### striplot
  - *plot long signal in horizontal strips.*
  **usage** : striplot(X, FS, N)
### ucplot
  - *Plot a circle with specified center and radius.*
  **usage** : huc = ucplot( radius, center, linetype )
### woodwenv
  - *produces amplitude and mod. index envelope functions.*
  **usage** : y1,y2 = woodwenv(a,s,r,Fs);
### zcat
  - *Plot vectors in z-plane end-to-end.*
  **usage** : hv = zcat(Z, LTYPE, SCALE)
### zone_make
  -  *Creates an N by N zone-plate image*
  **usage** : create_zone(N, shift)
### zprint
  -  *printout complex # in rect and polar form.*
  **usage** : zprint(z)
### zvect
  - *Plot vectors in complex z-plane from zFrom to zTo.*
  **usage** : zvect(Z) 






