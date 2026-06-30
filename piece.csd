<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
; ==============================================
<CsInstruments>

sr	= 44100
ksmps	= 64
;nchnls	= 2
0dbfs	= 1


gkGain chnexport "gain", 1, 2, .5, 0, 1
gkFrequency chnexport "frequency", 1, 2, 50, 25, 440
gkPulseWidth chnexport "pulse_width", 1, 2, .5, .125, .5

instr 1
	envelope:k = expseg:k(1, p3, .001)
	signal:a = vco2:a(envelope * gkGain, gkFrequency, 2, gkPulseWidth)
	out(signal)
endin

</CsInstruments>
; ==============================================
<CsScore>
i 1 0 10
</CsScore>
</CsoundSynthesizer>
