<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9cc134f7-eac8-44d0-87b0-4085b2e386af(VSR.Basic.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="f64j" ref="r:7e2434c6-62a0-47a6-a668-2a8d38759e2e(VSR.Basic.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681299057" name="jetbrains.mps.core.xml.structure.XmlProlog" flags="ng" index="2pNm8N">
        <child id="7604553062773674214" name="elements" index="BGLLu" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
        <child id="6666499814681299060" name="prolog" index="2pNm8Q" />
      </concept>
      <concept id="5228786488744996718" name="jetbrains.mps.core.xml.structure.XmlDeclaration" flags="ng" index="3W$oVP">
        <property id="5491461270226117667" name="version" index="1D$jbd" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="4w$dsSElc0E">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="4w$dsSElSgO" role="3lj3bC">
      <ref role="30HIoZ" to="f64j:4w$dsSElE1$" resolve="ControlLogic" />
      <ref role="3lhOvi" node="4w$dsSElSgV" resolve="VSR_XML" />
    </node>
  </node>
  <node concept="2pMbU2" id="4w$dsSElSgV">
    <property role="TrG5h" value="VSR_XML" />
    <node concept="3rIKKV" id="4w$dsSElSgW" role="2pMbU3">
      <node concept="2pNm8N" id="4w$dsSElShi" role="2pNm8Q">
        <node concept="3W$oVP" id="4w$dsSElShm" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
        </node>
      </node>
      <node concept="2pNNFK" id="4w$dsSElShw" role="2pNm8H">
        <property role="2pNNFO" value="ControlLogic" />
        <node concept="2pNNFK" id="4w$dsSElSh$" role="3o6s8t">
          <property role="2pNNFO" value="ControlPoint" />
          <node concept="2pNNFK" id="4w$dsSElShB" role="3o6s8t">
            <property role="2pNNFO" value="Timestamp" />
            <node concept="3o6iSG" id="4w$dsSElShD" role="3o6s8t">
              <property role="3o6i5n" value="1000" />
              <node concept="17Uvod" id="4w$dsSElVPN" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <node concept="3zFVjK" id="4w$dsSElVPO" role="3zH0cK">
                  <node concept="3clFbS" id="4w$dsSElVPP" role="2VODD2">
                    <node concept="3cpWs8" id="4w$dsSEmNww" role="3cqZAp">
                      <node concept="3cpWsn" id="4w$dsSEmNwz" role="3cpWs9">
                        <property role="TrG5h" value="str" />
                        <node concept="17QB3L" id="4w$dsSEmNwv" role="1tU5fm" />
                        <node concept="Xl_RD" id="4w$dsSEmNy5" role="33vP2m">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w$dsSEmNze" role="3cqZAp">
                      <node concept="d57v9" id="4w$dsSEmO7s" role="3clFbG">
                        <node concept="2OqwBi" id="4w$dsSEmPSY" role="37vLTx">
                          <node concept="2OqwBi" id="4w$dsSEmOvo" role="2Oq$k0">
                            <node concept="30H73N" id="4w$dsSEmOgg" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4w$dsSEmPqE" role="2OqNvi">
                              <ref role="3Tt5mk" to="f64j:4w$dsSElDHY" resolve="time" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="4w$dsSEmQhc" role="2OqNvi">
                            <ref role="3TsBF5" to="f64j:4w$dsSElDmI" resolve="timestamp" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4w$dsSEmNzc" role="37vLTJ">
                          <ref role="3cqZAo" node="4w$dsSEmNwz" resolve="str" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4w$dsSEmQyc" role="3cqZAp">
                      <node concept="37vLTw" id="4w$dsSEmQy_" role="3cqZAk">
                        <ref role="3cqZAo" node="4w$dsSEmNwz" resolve="str" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="4w$dsSElShJ" role="3o6s8t">
            <property role="2pNNFO" value="Color" />
            <node concept="3o6iSG" id="4w$dsSElShO" role="3o6s8t">
              <property role="3o6i5n" value="(R=100,G=100,B=100)" />
              <node concept="17Uvod" id="4w$dsSEm5h$" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <node concept="3zFVjK" id="4w$dsSEm5h_" role="3zH0cK">
                  <node concept="3clFbS" id="4w$dsSEm5hA" role="2VODD2">
                    <node concept="3cpWs8" id="4w$dsSEm5qg" role="3cqZAp">
                      <node concept="3cpWsn" id="4w$dsSEm5qj" role="3cpWs9">
                        <property role="TrG5h" value="str" />
                        <node concept="17QB3L" id="4w$dsSEm5qf" role="1tU5fm" />
                        <node concept="Xl_RD" id="4w$dsSEm5rP" role="33vP2m">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w$dsSEm5_8" role="3cqZAp">
                      <node concept="d57v9" id="4w$dsSEm5_M" role="3clFbG">
                        <node concept="3cpWs3" id="4w$dsSEm5Km" role="37vLTx">
                          <node concept="2OqwBi" id="4w$dsSEm7HX" role="3uHU7w">
                            <node concept="2OqwBi" id="4w$dsSEm67w" role="2Oq$k0">
                              <node concept="30H73N" id="4w$dsSEm5Z1" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4w$dsSEm6W3" role="2OqNvi">
                                <ref role="3Tt5mk" to="f64j:4w$dsSElEEl" resolve="color" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="4w$dsSEm898" role="2OqNvi">
                              <ref role="3TsBF5" to="f64j:4w$dsSElCYb" resolve="r" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4w$dsSEm5IA" role="3uHU7B">
                            <property role="Xl_RC" value="(R=" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4w$dsSEm5_6" role="37vLTJ">
                          <ref role="3cqZAo" node="4w$dsSEm5qj" resolve="str" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w$dsSEm8uP" role="3cqZAp">
                      <node concept="d57v9" id="4w$dsSEm952" role="3clFbG">
                        <node concept="3cpWs3" id="4w$dsSEm9k$" role="37vLTx">
                          <node concept="2OqwBi" id="4w$dsSEmbbD" role="3uHU7w">
                            <node concept="2OqwBi" id="4w$dsSEm9H7" role="2Oq$k0">
                              <node concept="30H73N" id="4w$dsSEm9mn" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4w$dsSEmaUr" role="2OqNvi">
                                <ref role="3Tt5mk" to="f64j:4w$dsSElEEl" resolve="color" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="4w$dsSEmbf7" role="2OqNvi">
                              <ref role="3TsBF5" to="f64j:4w$dsSElD5Y" resolve="b" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4w$dsSEm9eU" role="3uHU7B">
                            <property role="Xl_RC" value=",G=" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4w$dsSEm8uN" role="37vLTJ">
                          <ref role="3cqZAo" node="4w$dsSEm5qj" resolve="str" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w$dsSEmb_l" role="3cqZAp">
                      <node concept="d57v9" id="4w$dsSEmbCj" role="3clFbG">
                        <node concept="3cpWs3" id="4w$dsSEmbW5" role="37vLTx">
                          <node concept="2OqwBi" id="4w$dsSEmdEB" role="3uHU7w">
                            <node concept="2OqwBi" id="4w$dsSEmc85" role="2Oq$k0">
                              <node concept="30H73N" id="4w$dsSEmc4I" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4w$dsSEmdnT" role="2OqNvi">
                                <ref role="3Tt5mk" to="f64j:4w$dsSElEEl" resolve="color" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="4w$dsSEmdJ9" role="2OqNvi">
                              <ref role="3TsBF5" to="f64j:4w$dsSElD5Y" resolve="b" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4w$dsSEmbNf" role="3uHU7B">
                            <property role="Xl_RC" value=",B=" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4w$dsSEmb_j" role="37vLTJ">
                          <ref role="3cqZAo" node="4w$dsSEm5qj" resolve="str" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w$dsSEmer1" role="3cqZAp">
                      <node concept="d57v9" id="4w$dsSEmf9k" role="3clFbG">
                        <node concept="Xl_RD" id="4w$dsSEmfrV" role="37vLTx">
                          <property role="Xl_RC" value=")" />
                        </node>
                        <node concept="37vLTw" id="4w$dsSEmeqZ" role="37vLTJ">
                          <ref role="3cqZAo" node="4w$dsSEm5qj" resolve="str" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4w$dsSEmfwx" role="3cqZAp">
                      <node concept="37vLTw" id="4w$dsSEmf_9" role="3cqZAk">
                        <ref role="3cqZAo" node="4w$dsSEm5qj" resolve="str" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="4w$dsSEm4UY" role="lGtFl">
              <node concept="3JmXsc" id="4w$dsSEm4V1" role="3Jn$fo">
                <node concept="3clFbS" id="4w$dsSEm4V2" role="2VODD2">
                  <node concept="3clFbF" id="4w$dsSEm4V8" role="3cqZAp">
                    <node concept="2OqwBi" id="4w$dsSEm4V3" role="3clFbG">
                      <node concept="3Tsc0h" id="4w$dsSEm4V6" role="2OqNvi">
                        <ref role="3TtcxE" to="f64j:4w$dsSElEXv" resolve="leds" />
                      </node>
                      <node concept="30H73N" id="4w$dsSEm4V7" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="4w$dsSElVvN" role="lGtFl">
            <node concept="3JmXsc" id="4w$dsSElVvQ" role="3Jn$fo">
              <node concept="3clFbS" id="4w$dsSElVvR" role="2VODD2">
                <node concept="3clFbF" id="4w$dsSElVvX" role="3cqZAp">
                  <node concept="2OqwBi" id="4w$dsSElVvS" role="3clFbG">
                    <node concept="3Tsc0h" id="4w$dsSElVvV" role="2OqNvi">
                      <ref role="3TtcxE" to="f64j:4w$dsSElEhs" resolve="points" />
                    </node>
                    <node concept="30H73N" id="4w$dsSElVvW" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="4w$dsSElSgY" role="lGtFl">
      <ref role="n9lRv" to="f64j:4w$dsSElE1$" resolve="ControlLogic" />
    </node>
  </node>
</model>

