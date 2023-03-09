<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ea49f26a-712d-42ce-8067-3f963f2ff1bb(VSR.Advanced.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="133afdf2-48e0-4c4c-9eb5-cd03f7ca7f3d" name="VSR.Advanced" version="0" />
    <use id="f46f47e0-75ce-4346-9b79-85c33d5363d7" name="VSR.Song" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f46f47e0-75ce-4346-9b79-85c33d5363d7" name="VSR.Song">
      <concept id="4013794742431793449" name="VSR.Song.structure.Absolute" flags="ng" index="1CipK$" />
      <concept id="4013794742431793762" name="VSR.Song.structure.Time" flags="ng" index="1CipXJ">
        <child id="4013794742431794700" name="stamp" index="1CipG1" />
      </concept>
      <concept id="4013794742431782856" name="VSR.Song.structure.Song" flags="ng" index="1CisF5">
        <property id="4013794742431784995" name="path" index="1CivOI" />
        <child id="4013794742431804456" name="points" index="1Cir4_" />
      </concept>
      <concept id="4013794742431786738" name="VSR.Song.structure.LED" flags="ng" index="1CivJZ">
        <property id="4013794742431787129" name="index" index="1CivlO" />
        <child id="4013794742431787496" name="color" index="1Civj_" />
      </concept>
      <concept id="4013794742431785284" name="VSR.Song.structure.ControlPoint" flags="ng" index="1CivL9">
        <property id="4341578394011681539" name="volume" index="3fOU68" />
        <property id="4341578394011681801" name="brightness" index="3fOUq2" />
        <child id="4013794742431792559" name="leds" index="1Ciu2y" />
        <child id="4013794742431786085" name="time" index="1Civ_C" />
      </concept>
    </language>
    <language id="133afdf2-48e0-4c4c-9eb5-cd03f7ca7f3d" name="VSR.Advanced">
      <concept id="4013794742431774825" name="VSR.Advanced.structure.SongReference" flags="ng" index="1Ciyl$">
        <reference id="4013794742431775528" name="target" index="1Ciyo_" />
      </concept>
      <concept id="4013794742431773391" name="VSR.Advanced.structure.Playlist" flags="ng" index="1CiyZ2">
        <property id="4013794742431777853" name="root" index="1Cit$K" />
        <child id="4013794742431777278" name="songs" index="1CitNN" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="69782f34-4521-4509-8ef2-6a2a47493153" name="VSR.TimeStamp">
      <concept id="4013794742431546665" name="VSR.TimeStamp.structure.ms" flags="ng" index="1Chq0$">
        <property id="4013794742431570452" name="minimum" index="1Chgsp" />
      </concept>
      <concept id="4013794742431439252" name="VSR.TimeStamp.structure.Timestamp" flags="ng" index="1ChKip">
        <property id="4013794742431580021" name="value" index="1Chi9S" />
      </concept>
    </language>
    <language id="e2b045ff-58e2-445c-bf54-c3956f05f847" name="VSR.Color">
      <concept id="4013794742431643846" name="VSR.Color.structure.RGB" flags="ng" index="1Ch2nb">
        <property id="4013794742431645045" name="g" index="1Ch21S" />
        <property id="4013794742431644809" name="r" index="1Ch264" />
        <property id="4013794742431645282" name="b" index="1Ch2dJ" />
      </concept>
      <concept id="4013794742431729829" name="VSR.Color.structure.HEX" flags="ng" index="1CiDmC">
        <property id="4013794742431731104" name="code" index="1CiD2H" />
      </concept>
    </language>
  </registry>
  <node concept="1CiyZ2" id="7_uHZVrDSte">
    <property role="TrG5h" value="Demo" />
    <property role="1Cit$K" value="C:\Users\akosb\Music\" />
    <node concept="1Ciyl$" id="7_uHZVrDStf" role="1CitNN">
      <ref role="1Ciyo_" node="7_uHZVrDSuC" resolve="Regret" />
    </node>
    <node concept="1Ciyl$" id="7_uHZVrDTBJ" role="1CitNN">
      <ref role="1Ciyo_" node="7_uHZVrDTBM" resolve="Winds of Change" />
    </node>
    <node concept="1Ciyl$" id="3L0oCJNzwzs" role="1CitNN">
      <ref role="1Ciyo_" node="3L0oCJNzwz8" resolve="Ghost" />
    </node>
  </node>
  <node concept="1CisF5" id="7_uHZVrDSuC">
    <property role="TrG5h" value="Regret" />
    <property role="1CivOI" value="Regret.flac" />
    <node concept="1CivL9" id="7_uHZVrDSuD" role="1Cir4_">
      <property role="3fOU68" value="100" />
      <property role="3fOUq2" value="100" />
      <node concept="1CipK$" id="7_uHZVrDS$r" role="1Civ_C">
        <node concept="1Chq0$" id="7_uHZVrDS$z" role="1CipG1">
          <property role="1Chgsp" value="0" />
          <property role="1Chi9S" value="0" />
        </node>
      </node>
      <node concept="1CivJZ" id="7_uHZVrDTBc" role="1Ciu2y">
        <property role="1CivlO" value="0" />
        <node concept="1Ch2nb" id="7_uHZVrDTBi" role="1Civj_">
          <property role="1Ch264" value="0" />
          <property role="1Ch21S" value="0" />
          <property role="1Ch2dJ" value="0" />
        </node>
      </node>
      <node concept="1CivJZ" id="7_uHZVrDSuG" role="1Ciu2y">
        <property role="1CivlO" value="128" />
        <node concept="1CiDmC" id="7_uHZVrDTAU" role="1Civj_">
          <property role="1CiD2H" value="000000" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1CisF5" id="7_uHZVrDTBM">
    <property role="TrG5h" value="Winds of Change" />
    <property role="1CivOI" value="Winds of Change.flac" />
    <node concept="1CivL9" id="7_uHZVrDTBN" role="1Cir4_">
      <property role="3fOU68" value="100" />
      <property role="3fOUq2" value="100" />
      <node concept="1CipK$" id="7_uHZVrDTBS" role="1Civ_C">
        <node concept="1Chq0$" id="7_uHZVrDTC0" role="1CipG1">
          <property role="1Chgsp" value="0" />
          <property role="1Chi9S" value="0" />
        </node>
      </node>
      <node concept="1CivJZ" id="7_uHZVrDTBQ" role="1Ciu2y">
        <property role="1CivlO" value="0" />
        <node concept="1CiDmC" id="7_uHZVrDTC3" role="1Civj_">
          <property role="1CiD2H" value="000000" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1CisF5" id="3L0oCJNzwz8">
    <property role="TrG5h" value="Ghost" />
    <property role="1CivOI" value="Ghost.flac" />
    <node concept="1CivL9" id="3L0oCJNzwz9" role="1Cir4_">
      <property role="3fOU68" value="100" />
      <property role="3fOUq2" value="100" />
      <node concept="1CipK$" id="3L0oCJNzwze" role="1Civ_C">
        <node concept="1Chq0$" id="3L0oCJNzwzm" role="1CipG1">
          <property role="1Chgsp" value="0" />
          <property role="1Chi9S" value="0" />
        </node>
      </node>
      <node concept="1CivJZ" id="3L0oCJNzwzc" role="1Ciu2y">
        <property role="1CivlO" value="0" />
        <node concept="1CiDmC" id="3L0oCJNzwzp" role="1Civj_">
          <property role="1CiD2H" value="000000" />
        </node>
      </node>
    </node>
  </node>
</model>

