<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:47bc0d00-7d92-4e14-aaa4-3f61bfd980f0(VSR.Song.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="hirn" ref="r:a0b1f4d9-19d8-4e59-944f-372f87e628ec(VSR.Song.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
  </registry>
  <node concept="1M2fIO" id="3L0oCJN$WmJ">
    <ref role="1M2myG" to="hirn:3uNRgPvYy54" resolve="ControlPoint" />
    <node concept="EnEH3" id="3L0oCJN$Woo" role="1MhHOB">
      <ref role="EomxK" to="hirn:3L0oCJN$Wc3" resolve="volume" />
      <node concept="QB0g5" id="3L0oCJN$WtX" role="QCWH9">
        <node concept="3clFbS" id="3L0oCJN$WtY" role="2VODD2">
          <node concept="3cpWs6" id="3L0oCJN$W$H" role="3cqZAp">
            <node concept="1eOMI4" id="3L0oCJN$WAD" role="3cqZAk">
              <node concept="1Wc70l" id="3L0oCJN$YcX" role="1eOMHV">
                <node concept="1eOMI4" id="3L0oCJN$Yfr" role="3uHU7w">
                  <node concept="2dkUwp" id="3L0oCJN$Ylu" role="1eOMHV">
                    <node concept="3cmrfG" id="3L0oCJN$Yn9" role="3uHU7w">
                      <property role="3cmrfH" value="100" />
                    </node>
                    <node concept="1Wqviy" id="3L0oCJN$YiA" role="3uHU7B" />
                  </node>
                </node>
                <node concept="1eOMI4" id="3L0oCJN$WCs" role="3uHU7B">
                  <node concept="2d3UOw" id="3L0oCJN$XFN" role="1eOMHV">
                    <node concept="3cmrfG" id="3L0oCJN$XIa" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1Wqviy" id="3L0oCJN$WEF" role="3uHU7B" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3L0oCJN$YsM" role="1MhHOB">
      <ref role="EomxK" to="hirn:3L0oCJN$Wg9" resolve="brightness" />
      <node concept="QB0g5" id="3L0oCJN$Yyw" role="QCWH9">
        <node concept="3clFbS" id="3L0oCJN$Yyx" role="2VODD2">
          <node concept="3cpWs6" id="3L0oCJN$Y$u" role="3cqZAp">
            <node concept="1eOMI4" id="3L0oCJN$YFc" role="3cqZAk">
              <node concept="1Wc70l" id="3L0oCJN_0lu" role="1eOMHV">
                <node concept="1eOMI4" id="3L0oCJN_0nW" role="3uHU7w">
                  <node concept="2dkUwp" id="3L0oCJN_0up" role="1eOMHV">
                    <node concept="3cmrfG" id="3L0oCJN_0w4" role="3uHU7w">
                      <property role="3cmrfH" value="100" />
                    </node>
                    <node concept="1Wqviy" id="3L0oCJN_0rV" role="3uHU7B" />
                  </node>
                </node>
                <node concept="1eOMI4" id="3L0oCJN$YGZ" role="3uHU7B">
                  <node concept="2d3UOw" id="3L0oCJN$ZOk" role="1eOMHV">
                    <node concept="3cmrfG" id="3L0oCJN$ZQF" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1Wqviy" id="3L0oCJN$YNA" role="3uHU7B" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

