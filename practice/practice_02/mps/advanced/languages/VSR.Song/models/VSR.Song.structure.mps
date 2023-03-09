<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a0b1f4d9-19d8-4e59-944f-372f87e628ec(VSR.Song.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="f9dq" ref="r:3b15cfd7-99f7-4f64-ab9e-1f406ff242cd(VSR.Color.structure)" implicit="true" />
    <import index="kbf9" ref="r:713350b9-cf3c-4c15-a28f-7cb6e35b54cf(VSR.TimeStamp.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3uNRgPvYxv8">
    <property role="EcuMT" value="4013794742431782856" />
    <property role="TrG5h" value="Song" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3uNRgPvYxTV" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="3uNRgPvYy0z" role="1TKVEl">
      <property role="IQ2nx" value="4013794742431784995" />
      <property role="TrG5h" value="path" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="3uNRgPvYAKC" role="1TKVEi">
      <property role="IQ2ns" value="4013794742431804456" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="points" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3uNRgPvYy54" resolve="ControlPoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="3uNRgPvYy54">
    <property role="EcuMT" value="4013794742431785284" />
    <property role="TrG5h" value="ControlPoint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3uNRgPvYyh_" role="1TKVEi">
      <property role="IQ2ns" value="4013794742431786085" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="time" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3uNRgPvY$9y" resolve="Time" />
    </node>
    <node concept="1TJgyj" id="3uNRgPvYzQJ" role="1TKVEi">
      <property role="IQ2ns" value="4013794742431792559" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="leds" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3uNRgPvYyrM" resolve="LED" />
    </node>
    <node concept="1TJgyi" id="3L0oCJN$Wc3" role="1TKVEl">
      <property role="IQ2nx" value="4341578394011681539" />
      <property role="TrG5h" value="volume" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3L0oCJN$Wg9" role="1TKVEl">
      <property role="IQ2nx" value="4341578394011681801" />
      <property role="TrG5h" value="brightness" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3uNRgPvYyrM">
    <property role="EcuMT" value="4013794742431786738" />
    <property role="TrG5h" value="LED" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3uNRgPvYyxT" role="1TKVEl">
      <property role="IQ2nx" value="4013794742431787129" />
      <property role="TrG5h" value="index" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="3uNRgPvYyBC" role="1TKVEi">
      <property role="IQ2ns" value="4013794742431787496" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="color" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="f9dq:3uNRgPvXZqW" resolve="Color" />
    </node>
  </node>
  <node concept="1TIwiD" id="3uNRgPvY$4D">
    <property role="EcuMT" value="4013794742431793449" />
    <property role="TrG5h" value="Absolute" />
    <property role="34LRSv" value="@" />
    <property role="R4oN_" value="absolute timestamp" />
    <ref role="1TJDcQ" node="3uNRgPvY$9y" resolve="Time" />
  </node>
  <node concept="1TIwiD" id="3uNRgPvY$9y">
    <property role="EcuMT" value="4013794742431793762" />
    <property role="TrG5h" value="Time" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3uNRgPvY$oc" role="1TKVEi">
      <property role="IQ2ns" value="4013794742431794700" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="stamp" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="kbf9:3uNRgPvXdAk" resolve="Timestamp" />
    </node>
  </node>
  <node concept="1TIwiD" id="3uNRgPvY_7x">
    <property role="EcuMT" value="4013794742431797729" />
    <property role="TrG5h" value="Relative" />
    <property role="34LRSv" value="+" />
    <property role="R4oN_" value="relative timestamp" />
    <ref role="1TJDcQ" node="3uNRgPvY$9y" resolve="Time" />
  </node>
</model>

