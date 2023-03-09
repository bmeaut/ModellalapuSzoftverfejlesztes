<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b81102d1-1f6d-4bc3-ae1c-3b95669bb96b(VSR.Song.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="hirn" ref="r:a0b1f4d9-19d8-4e59-944f-372f87e628ec(VSR.Song.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3uNRgPvYyL8">
    <ref role="1XX52x" to="hirn:3uNRgPvYyrM" resolve="LED" />
    <node concept="3EZMnI" id="3uNRgPvYyOO" role="2wV5jI">
      <node concept="3F0ifn" id="3uNRgPvYyRO" role="3EZMnx">
        <property role="3F0ifm" value="LED" />
      </node>
      <node concept="3F0A7n" id="3uNRgPvYyY0" role="3EZMnx">
        <ref role="1NtTu8" to="hirn:3uNRgPvYyxT" resolve="index" />
      </node>
      <node concept="3F0ifn" id="3uNRgPvYz31" role="3EZMnx">
        <property role="3F0ifm" value="→" />
      </node>
      <node concept="3F1sOY" id="3uNRgPvYz8z" role="3EZMnx">
        <ref role="1NtTu8" to="hirn:3uNRgPvYyBC" resolve="color" />
      </node>
      <node concept="2iRfu4" id="3uNRgPvYyOR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3uNRgPvY$UU">
    <ref role="1XX52x" to="hirn:3uNRgPvY$4D" resolve="Absolute" />
    <node concept="3EZMnI" id="3uNRgPvY$VK" role="2wV5jI">
      <node concept="3F0ifn" id="3uNRgPvY$XW" role="3EZMnx">
        <property role="3F0ifm" value="@" />
      </node>
      <node concept="3F1sOY" id="3uNRgPvY_3M" role="3EZMnx">
        <ref role="1NtTu8" to="hirn:3uNRgPvY$oc" resolve="stamp" />
      </node>
      <node concept="2iRfu4" id="3uNRgPvY$VN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3uNRgPvY_gA">
    <ref role="1XX52x" to="hirn:3uNRgPvY_7x" resolve="Relative" />
    <node concept="3EZMnI" id="3uNRgPvY_hs" role="2wV5jI">
      <node concept="3F0ifn" id="3uNRgPvY_ni" role="3EZMnx">
        <property role="3F0ifm" value="+" />
      </node>
      <node concept="3F1sOY" id="3uNRgPvY_v$" role="3EZMnx">
        <ref role="1NtTu8" to="hirn:3uNRgPvY$oc" resolve="stamp" />
      </node>
      <node concept="2iRfu4" id="3uNRgPvY_hv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3uNRgPvY_$e">
    <ref role="1XX52x" to="hirn:3uNRgPvYy54" resolve="ControlPoint" />
    <node concept="3EZMnI" id="3uNRgPvY_B6" role="2wV5jI">
      <node concept="3EZMnI" id="3uNRgPvYAfg" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYAfi" role="3F10Kt" />
        <node concept="3F0ifn" id="3uNRgPvYAki" role="3EZMnx">
          <property role="3F0ifm" value="define" />
        </node>
        <node concept="3F1sOY" id="3uNRgPvYAo6" role="3EZMnx">
          <ref role="1NtTu8" to="hirn:3uNRgPvYyh_" resolve="time" />
        </node>
        <node concept="3F0ifn" id="3uNRgPvYAur" role="3EZMnx">
          <property role="3F0ifm" value="» {" />
        </node>
        <node concept="3F0A7n" id="3L0oCJN_1O0" role="3EZMnx">
          <ref role="1NtTu8" to="hirn:3L0oCJN$Wc3" resolve="volume" />
        </node>
        <node concept="3F0ifn" id="3L0oCJN_1R9" role="3EZMnx">
          <property role="3F0ifm" value="|" />
        </node>
        <node concept="3F0A7n" id="3L0oCJN_1Wn" role="3EZMnx">
          <ref role="1NtTu8" to="hirn:3L0oCJN$Wg9" resolve="brightness" />
        </node>
        <node concept="3F0ifn" id="3L0oCJN_1Z3" role="3EZMnx">
          <property role="3F0ifm" value="}:" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYAfl" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3uNRgPvYAya" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYAyc" role="3F10Kt" />
        <node concept="3XFhqQ" id="3uNRgPvYAAS" role="3EZMnx" />
        <node concept="3EZMnI" id="3uNRgPvYAEC" role="3EZMnx">
          <node concept="VPM3Z" id="3uNRgPvYAEE" role="3F10Kt" />
          <node concept="3F2HdR" id="3uNRgPvYAHG" role="3EZMnx">
            <ref role="1NtTu8" to="hirn:3uNRgPvYzQJ" resolve="leds" />
            <node concept="2iRkQZ" id="3uNRgPvYAHI" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3uNRgPvYAEH" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYAyf" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3uNRgPvY_B9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3uNRgPvYAUW">
    <ref role="1XX52x" to="hirn:3uNRgPvYxv8" resolve="Song" />
    <node concept="3EZMnI" id="3uNRgPvYAYe" role="2wV5jI">
      <node concept="3EZMnI" id="3uNRgPvYAZz" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYAZ_" role="3F10Kt" />
        <node concept="3F0ifn" id="3uNRgPvYB0x" role="3EZMnx">
          <property role="3F0ifm" value="Song" />
        </node>
        <node concept="3F0A7n" id="3uNRgPvYB5X" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYAZC" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3uNRgPvYB9M" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYB9O" role="3F10Kt" />
        <node concept="3F0ifn" id="3uNRgPvYB9Q" role="3EZMnx">
          <property role="3F0ifm" value="path" />
        </node>
        <node concept="3F0A7n" id="3uNRgPvYBj4" role="3EZMnx">
          <ref role="1NtTu8" to="hirn:3uNRgPvYy0z" resolve="path" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYB9R" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3uNRgPvYBm$" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYBmA" role="3F10Kt" />
        <node concept="3F0ifn" id="3uNRgPvYBmC" role="3EZMnx">
          <property role="3F0ifm" value="effects:" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYBmD" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3uNRgPvYBOq" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYBOs" role="3F10Kt" />
        <node concept="3XFhqQ" id="3uNRgPvYBTE" role="3EZMnx" />
        <node concept="3EZMnI" id="3uNRgPvYBX0" role="3EZMnx">
          <node concept="VPM3Z" id="3uNRgPvYBX2" role="3F10Kt" />
          <node concept="3F2HdR" id="3uNRgPvYBZE" role="3EZMnx">
            <ref role="1NtTu8" to="hirn:3uNRgPvYAKC" resolve="points" />
            <node concept="2iRkQZ" id="3uNRgPvYBZG" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3uNRgPvYBX5" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYBOv" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3uNRgPvYAYh" role="2iSdaV" />
    </node>
  </node>
</model>

