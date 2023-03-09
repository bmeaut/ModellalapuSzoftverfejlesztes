<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5e46aeec-0cac-4b9f-9adc-16a0db9f9815(VSR.Advanced.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ou17" ref="r:3fda848d-79a1-4e1a-93d6-4a36cc5211aa(VSR.Advanced.structure)" implicit="true" />
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
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3uNRgPvYvQy">
    <ref role="1XX52x" to="ou17:3uNRgPvYvxD" resolve="SongReference" />
    <node concept="1iCGBv" id="3uNRgPvYvWj" role="2wV5jI">
      <ref role="1NtTu8" to="ou17:3uNRgPvYvGC" resolve="target" />
      <node concept="1sVBvm" id="3uNRgPvYvWl" role="1sWHZn">
        <node concept="3F0A7n" id="3uNRgPvYxWP" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3uNRgPvYwl_">
    <ref role="1XX52x" to="ou17:3uNRgPvYvbf" resolve="Playlist" />
    <node concept="3EZMnI" id="3uNRgPvYws_" role="2wV5jI">
      <node concept="3EZMnI" id="3uNRgPvYwvW" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYwvY" role="3F10Kt" />
        <node concept="3F0ifn" id="3uNRgPvYwwU" role="3EZMnx">
          <property role="3F0ifm" value="Playlist" />
        </node>
        <node concept="3F0A7n" id="3uNRgPvYw_y" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYww1" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3uNRgPvYwEA" role="3EZMnx">
        <node concept="VPM3Z" id="3uNRgPvYwEC" role="3F10Kt" />
        <node concept="3XFhqQ" id="3uNRgPvYwOF" role="3EZMnx" />
        <node concept="3F0ifn" id="3uNRgPvYwS1" role="3EZMnx">
          <property role="3F0ifm" value="root dir:" />
        </node>
        <node concept="3F0A7n" id="3uNRgPvYx6Q" role="3EZMnx">
          <ref role="1NtTu8" to="ou17:3uNRgPvYwgX" resolve="root" />
        </node>
        <node concept="2iRfu4" id="3uNRgPvYwEF" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3uNRgPvYx89" role="3EZMnx">
        <property role="3F0ifm" value="Songs" />
      </node>
      <node concept="3EZMnI" id="7_uHZVrE6w7" role="3EZMnx">
        <node concept="VPM3Z" id="7_uHZVrE6w9" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_uHZVrE6J8" role="3EZMnx" />
        <node concept="3EZMnI" id="7_uHZVrE6Mu" role="3EZMnx">
          <node concept="VPM3Z" id="7_uHZVrE6Mw" role="3F10Kt" />
          <node concept="3F2HdR" id="7_uHZVrE6OI" role="3EZMnx">
            <ref role="1NtTu8" to="ou17:3uNRgPvYw7Y" resolve="songs" />
            <node concept="2iRkQZ" id="7_uHZVrE6OK" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="7_uHZVrE6Mz" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7_uHZVrE6wc" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3uNRgPvYwsC" role="2iSdaV" />
    </node>
  </node>
</model>

