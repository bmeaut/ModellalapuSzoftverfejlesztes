<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7e2434c6-62a0-47a6-a668-2a8d38759e2e(VSR.Basic.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
  <node concept="1TIwiD" id="4w$dsSElf1J">
    <property role="EcuMT" value="5198339029482139759" />
    <property role="TrG5h" value="Color" />
    <property role="34LRSv" value="rgb" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="4w$dsSElCYb" role="1TKVEl">
      <property role="IQ2nx" value="5198339029482246027" />
      <property role="TrG5h" value="r" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4w$dsSElD13" role="1TKVEl">
      <property role="IQ2nx" value="5198339029482246211" />
      <property role="TrG5h" value="g" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4w$dsSElD5Y" role="1TKVEl">
      <property role="IQ2nx" value="5198339029482246526" />
      <property role="TrG5h" value="b" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4w$dsSElDfp">
    <property role="EcuMT" value="5198339029482247129" />
    <property role="TrG5h" value="Timestamp" />
    <property role="34LRSv" value="ms" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="4w$dsSElDmI" role="1TKVEl">
      <property role="IQ2nx" value="5198339029482247598" />
      <property role="TrG5h" value="timestamp" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4w$dsSElDs3">
    <property role="EcuMT" value="5198339029482247939" />
    <property role="TrG5h" value="ControlPoint" />
    <property role="34LRSv" value="cp" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="4w$dsSElDHY" role="1TKVEi">
      <property role="IQ2ns" value="5198339029482249086" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="time" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4w$dsSElDfp" resolve="Timestamp" />
    </node>
    <node concept="1TJgyj" id="4w$dsSElEXv" role="1TKVEi">
      <property role="IQ2ns" value="5198339029482254175" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="leds" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="4w$dsSElEtG" resolve="LED" />
    </node>
  </node>
  <node concept="1TIwiD" id="4w$dsSElE1$">
    <property role="EcuMT" value="5198339029482250340" />
    <property role="TrG5h" value="ControlLogic" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="4w$dsSElEhs" role="1TKVEi">
      <property role="IQ2ns" value="5198339029482251356" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="points" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="4w$dsSElDs3" resolve="ControlPoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="4w$dsSElEtG">
    <property role="EcuMT" value="5198339029482252140" />
    <property role="TrG5h" value="LED" />
    <property role="34LRSv" value="led" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="4w$dsSElE_1" role="1TKVEl">
      <property role="IQ2nx" value="5198339029482252609" />
      <property role="TrG5h" value="index" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="4w$dsSElEEl" role="1TKVEi">
      <property role="IQ2ns" value="5198339029482252949" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="color" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4w$dsSElf1J" resolve="Color" />
    </node>
  </node>
</model>

