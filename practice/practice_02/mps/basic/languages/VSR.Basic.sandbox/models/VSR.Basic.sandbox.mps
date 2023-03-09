<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f083415b-fb66-41a2-89c9-94d22a3b648e(VSR.Basic.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="d50a7f83-a7c4-45e7-9db7-f6da655fa22d" name="VSR.Basic" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="d50a7f83-a7c4-45e7-9db7-f6da655fa22d" name="VSR.Basic">
      <concept id="5198339029482139759" name="VSR.Basic.structure.Color" flags="ng" index="1yscmx">
        <property id="5198339029482246526" name="b" index="1ysEiK" />
        <property id="5198339029482246211" name="g" index="1ysEmd" />
        <property id="5198339029482246027" name="r" index="1ysFD5" />
      </concept>
      <concept id="5198339029482252140" name="VSR.Basic.structure.LED" flags="ng" index="1ysDay">
        <property id="5198339029482252609" name="index" index="1ysDMf" />
        <child id="5198339029482252949" name="color" index="1ysDXr" />
      </concept>
      <concept id="5198339029482250340" name="VSR.Basic.structure.ControlLogic" flags="ng" index="1ysDmE">
        <child id="5198339029482251356" name="points" index="1ysD6i" />
      </concept>
      <concept id="5198339029482247939" name="VSR.Basic.structure.ControlPoint" flags="ng" index="1ysEbd">
        <child id="5198339029482254175" name="leds" index="1ysDEh" />
        <child id="5198339029482249086" name="time" index="1ysEUK" />
      </concept>
      <concept id="5198339029482247129" name="VSR.Basic.structure.Timestamp" flags="ng" index="1ysEon">
        <property id="5198339029482247598" name="timestamp" index="1ysE1w" />
      </concept>
    </language>
  </registry>
  <node concept="1ysDmE" id="3zGOTOYUMam">
    <node concept="1ysEbd" id="3zGOTOYUMaT" role="1ysD6i">
      <node concept="1ysEon" id="3zGOTOYUMaU" role="1ysEUK">
        <property role="1ysE1w" value="0" />
      </node>
      <node concept="1ysDay" id="3zGOTOYUMaV" role="1ysDEh">
        <property role="1ysDMf" value="10" />
        <node concept="1yscmx" id="3zGOTOYUMaW" role="1ysDXr">
          <property role="1ysFD5" value="0" />
          <property role="1ysEmd" value="0" />
          <property role="1ysEiK" value="0" />
        </node>
      </node>
    </node>
    <node concept="1ysEbd" id="3zGOTOYUMaD" role="1ysD6i">
      <node concept="1ysEon" id="3zGOTOYUMaE" role="1ysEUK">
        <property role="1ysE1w" value="5000" />
      </node>
      <node concept="1ysDay" id="3zGOTOYUMbP" role="1ysDEh">
        <property role="1ysDMf" value="20" />
        <node concept="1yscmx" id="3zGOTOYUMbQ" role="1ysDXr">
          <property role="1ysFD5" value="32" />
          <property role="1ysEmd" value="32" />
          <property role="1ysEiK" value="0" />
        </node>
      </node>
      <node concept="1ysDay" id="3zGOTOYUMaF" role="1ysDEh">
        <property role="1ysDMf" value="70" />
        <node concept="1yscmx" id="3zGOTOYUMaG" role="1ysDXr">
          <property role="1ysFD5" value="100" />
          <property role="1ysEmd" value="100" />
          <property role="1ysEiK" value="100" />
        </node>
      </node>
    </node>
    <node concept="1ysEbd" id="3zGOTOYUMan" role="1ysD6i">
      <node concept="1ysDay" id="3zGOTOYUMax" role="1ysDEh">
        <node concept="1yscmx" id="3zGOTOYUMay" role="1ysDXr" />
      </node>
      <node concept="1ysEon" id="3zGOTOYUMao" role="1ysEUK">
        <property role="1ysE1w" value="15000" />
      </node>
    </node>
  </node>
</model>

