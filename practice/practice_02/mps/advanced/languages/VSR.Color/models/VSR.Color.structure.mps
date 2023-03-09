<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3b15cfd7-99f7-4f64-ab9e-1f406ff242cd(VSR.Color.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3uNRgPvXZqW">
    <property role="EcuMT" value="4013794742431643324" />
    <property role="TrG5h" value="Color" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3uNRgPvXZz6">
    <property role="EcuMT" value="4013794742431643846" />
    <property role="TrG5h" value="RGB" />
    <property role="34LRSv" value="rgb" />
    <property role="R4oN_" value="red, green, blue" />
    <ref role="1TJDcQ" node="3uNRgPvXZqW" resolve="Color" />
    <node concept="1TJgyi" id="3uNRgPvXZM9" role="1TKVEl">
      <property role="IQ2nx" value="4013794742431644809" />
      <property role="TrG5h" value="r" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3uNRgPvXZPP" role="1TKVEl">
      <property role="IQ2nx" value="4013794742431645045" />
      <property role="TrG5h" value="g" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3uNRgPvXZTy" role="1TKVEl">
      <property role="IQ2nx" value="4013794742431645282" />
      <property role="TrG5h" value="b" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="Az7Fb" id="3uNRgPvYkyw">
    <property role="3F6X1D" value="4013794742431729824" />
    <property role="TrG5h" value="HexColorCode" />
    <property role="FLfZY" value="[0-9A-Fa-f]{6}" />
  </node>
  <node concept="1TIwiD" id="3uNRgPvYky_">
    <property role="EcuMT" value="4013794742431729829" />
    <property role="TrG5h" value="HEX" />
    <property role="34LRSv" value="hex" />
    <property role="R4oN_" value="hexadec RGB code" />
    <ref role="1TJDcQ" node="3uNRgPvXZqW" resolve="Color" />
    <node concept="1TJgyi" id="3uNRgPvYkQw" role="1TKVEl">
      <property role="IQ2nx" value="4013794742431731104" />
      <property role="TrG5h" value="code" />
      <ref role="AX2Wp" node="3uNRgPvYkyw" resolve="HexColorCode" />
    </node>
  </node>
</model>

