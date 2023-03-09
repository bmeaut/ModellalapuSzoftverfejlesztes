<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a1f571e0-9ea9-4748-b5d2-1b8c5552a484(VSR.Basic.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="f64j" ref="r:7e2434c6-62a0-47a6-a668-2a8d38759e2e(VSR.Basic.structure)" implicit="true" />
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
  <node concept="24kQdi" id="4w$dsSElFT5">
    <ref role="1XX52x" to="f64j:4w$dsSElE1$" resolve="ControlLogic" />
    <node concept="3EZMnI" id="4w$dsSElFUl" role="2wV5jI">
      <node concept="3F0ifn" id="4w$dsSElG31" role="3EZMnx">
        <property role="3F0ifm" value="LED visualisation" />
      </node>
      <node concept="3F0ifn" id="4w$dsSElGaP" role="3EZMnx">
        <property role="3F0ifm" value="Controlled Points:" />
      </node>
      <node concept="3EZMnI" id="4w$dsSElGeB" role="3EZMnx">
        <node concept="VPM3Z" id="4w$dsSElGeD" role="3F10Kt" />
        <node concept="3F2HdR" id="4w$dsSElGiR" role="3EZMnx">
          <ref role="1NtTu8" to="f64j:4w$dsSElEhs" resolve="points" />
          <node concept="2iRkQZ" id="4w$dsSElGiT" role="2czzBx" />
        </node>
        <node concept="2iRkQZ" id="4w$dsSElGeG" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4w$dsSElFUo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4w$dsSElGnW">
    <ref role="1XX52x" to="f64j:4w$dsSElDs3" resolve="ControlPoint" />
    <node concept="3EZMnI" id="4w$dsSElGs2" role="2wV5jI">
      <node concept="3EZMnI" id="4w$dsSElGzd" role="3EZMnx">
        <node concept="VPM3Z" id="4w$dsSElGzf" role="3F10Kt" />
        <node concept="3F0ifn" id="4w$dsSElGCD" role="3EZMnx">
          <property role="3F0ifm" value="@" />
        </node>
        <node concept="3F1sOY" id="4w$dsSElGQF" role="3EZMnx">
          <ref role="1NtTu8" to="f64j:4w$dsSElDHY" resolve="time" />
        </node>
        <node concept="3F0ifn" id="4w$dsSElGS1" role="3EZMnx">
          <property role="3F0ifm" value="do" />
        </node>
        <node concept="2iRfu4" id="4w$dsSElGzi" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4w$dsSElGZz" role="3EZMnx">
        <node concept="VPM3Z" id="4w$dsSElGZ_" role="3F10Kt" />
        <node concept="3XFhqQ" id="4w$dsSElH3R" role="3EZMnx" />
        <node concept="3EZMnI" id="4w$dsSElH81" role="3EZMnx">
          <node concept="VPM3Z" id="4w$dsSElH83" role="3F10Kt" />
          <node concept="3F2HdR" id="4w$dsSElHaF" role="3EZMnx">
            <ref role="1NtTu8" to="f64j:4w$dsSElEXv" resolve="leds" />
            <node concept="2iRkQZ" id="4w$dsSElHaH" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="4w$dsSElH86" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="4w$dsSElGZC" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4w$dsSElGs5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4w$dsSElHeW">
    <ref role="1XX52x" to="f64j:4w$dsSElEtG" resolve="LED" />
    <node concept="3EZMnI" id="4w$dsSElHhq" role="2wV5jI">
      <node concept="3F0ifn" id="4w$dsSElHil" role="3EZMnx">
        <property role="3F0ifm" value="LED" />
      </node>
      <node concept="3F0A7n" id="4w$dsSElHmz" role="3EZMnx">
        <ref role="1NtTu8" to="f64j:4w$dsSElE_1" resolve="index" />
      </node>
      <node concept="3F0ifn" id="4w$dsSElHqm" role="3EZMnx">
        <property role="3F0ifm" value="»" />
      </node>
      <node concept="3F1sOY" id="4w$dsSElHug" role="3EZMnx">
        <ref role="1NtTu8" to="f64j:4w$dsSElEEl" resolve="color" />
      </node>
      <node concept="2iRfu4" id="4w$dsSElHht" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4w$dsSElHxI">
    <ref role="1XX52x" to="f64j:4w$dsSElf1J" resolve="Color" />
    <node concept="3EZMnI" id="4w$dsSElHy$" role="2wV5jI">
      <node concept="3F0ifn" id="4w$dsSElH$j" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="4w$dsSElHC3" role="3EZMnx">
        <ref role="1NtTu8" to="f64j:4w$dsSElCYb" resolve="r" />
      </node>
      <node concept="3F0ifn" id="4w$dsSElHDN" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="4w$dsSElHIx" role="3EZMnx">
        <ref role="1NtTu8" to="f64j:4w$dsSElD13" resolve="g" />
      </node>
      <node concept="3F0ifn" id="4w$dsSElHKQ" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="4w$dsSElHNU" role="3EZMnx">
        <ref role="1NtTu8" to="f64j:4w$dsSElD5Y" resolve="b" />
      </node>
      <node concept="3F0ifn" id="4w$dsSElHQA" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="4w$dsSElHyB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4w$dsSElHW9">
    <ref role="1XX52x" to="f64j:4w$dsSElDfp" resolve="Timestamp" />
    <node concept="3EZMnI" id="3zGOTOYULNF" role="2wV5jI">
      <node concept="3F0A7n" id="3zGOTOYULRv" role="3EZMnx">
        <ref role="1NtTu8" to="f64j:4w$dsSElDmI" resolve="timestamp" />
      </node>
      <node concept="3F0ifn" id="3zGOTOYULTd" role="3EZMnx">
        <property role="3F0ifm" value="ms" />
      </node>
      <node concept="2iRfu4" id="3zGOTOYULNI" role="2iSdaV" />
    </node>
  </node>
</model>

