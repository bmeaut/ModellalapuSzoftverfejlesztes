<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6ed5c705-229a-4afc-90af-67d83e2c9cfb(VSR.Color.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="f9dq" ref="r:3b15cfd7-99f7-4f64-ab9e-1f406ff242cd(VSR.Color.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="3L0oCJN_zAN">
    <ref role="13h7C2" to="f9dq:3uNRgPvXZqW" resolve="Color" />
    <node concept="13hLZK" id="3L0oCJN_zAO" role="13h7CW">
      <node concept="3clFbS" id="3L0oCJN_zAP" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3L0oCJN_zDy" role="13h7CS">
      <property role="TrG5h" value="getRGBA" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="3L0oCJN_zDz" role="1B3o_S" />
      <node concept="17QB3L" id="3L0oCJN_zEI" role="3clF45" />
      <node concept="3clFbS" id="3L0oCJN_zD_" role="3clF47" />
    </node>
  </node>
  <node concept="13h7C7" id="3L0oCJN_$8c">
    <ref role="13h7C2" to="f9dq:3uNRgPvYky_" resolve="HEX" />
    <node concept="13hLZK" id="3L0oCJN_$8d" role="13h7CW">
      <node concept="3clFbS" id="3L0oCJN_$8e" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3L0oCJN_$a7" role="13h7CS">
      <property role="TrG5h" value="getRGBA" />
      <ref role="13i0hy" node="3L0oCJN_zDy" resolve="getRGBA" />
      <node concept="3Tm1VV" id="3L0oCJN_$a8" role="1B3o_S" />
      <node concept="3clFbS" id="3L0oCJN_$ab" role="3clF47">
        <node concept="3cpWs8" id="3L0oCJN_OLT" role="3cqZAp">
          <node concept="3cpWsn" id="3L0oCJN_OLW" role="3cpWs9">
            <property role="TrG5h" value="r" />
            <node concept="10Oyi0" id="3L0oCJN_OLS" role="1tU5fm" />
            <node concept="2YIFZM" id="3L0oCJN_OXj" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String,int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="2OqwBi" id="3L0oCJN_PQU" role="37wK5m">
                <node concept="2OqwBi" id="3L0oCJN_Pe3" role="2Oq$k0">
                  <node concept="13iPFW" id="3L0oCJN_P0y" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3L0oCJN_PpR" role="2OqNvi">
                    <ref role="3TsBF5" to="f9dq:3uNRgPvYkQw" resolve="code" />
                  </node>
                </node>
                <node concept="liA8E" id="3L0oCJN_QCW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                  <node concept="3cmrfG" id="3L0oCJN_QJB" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="3L0oCJN_RE9" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="3L0oCJN_RJc" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3L0oCJN_RUv" role="3cqZAp">
          <node concept="3cpWsn" id="3L0oCJN_RUy" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="10Oyi0" id="3L0oCJN_RUt" role="1tU5fm" />
            <node concept="2YIFZM" id="3L0oCJN_S9M" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String,int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="2OqwBi" id="3L0oCJN_T91" role="37wK5m">
                <node concept="2OqwBi" id="3L0oCJN_StQ" role="2Oq$k0">
                  <node concept="13iPFW" id="3L0oCJN_SfT" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3L0oCJN_SEm" role="2OqNvi">
                    <ref role="3TsBF5" to="f9dq:3uNRgPvYkQw" resolve="code" />
                  </node>
                </node>
                <node concept="liA8E" id="3L0oCJN_TUh" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                  <node concept="3cmrfG" id="3L0oCJN_TXu" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3cmrfG" id="3L0oCJN_U4C" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="3L0oCJN_Vvb" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3L0oCJN_VG_" role="3cqZAp">
          <node concept="3cpWsn" id="3L0oCJN_VGC" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="10Oyi0" id="3L0oCJN_VGz" role="1tU5fm" />
            <node concept="2YIFZM" id="3L0oCJN_VYk" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String,int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="2OqwBi" id="3L0oCJN_WT9" role="37wK5m">
                <node concept="2OqwBi" id="3L0oCJN_WfG" role="2Oq$k0">
                  <node concept="13iPFW" id="3L0oCJN_W1H" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3L0oCJN_WtO" role="2OqNvi">
                    <ref role="3TsBF5" to="f9dq:3uNRgPvYkQw" resolve="code" />
                  </node>
                </node>
                <node concept="liA8E" id="3L0oCJN_Xto" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                  <node concept="3cmrfG" id="3L0oCJN_XEE" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="3cmrfG" id="3L0oCJN_XPa" role="37wK5m">
                    <property role="3cmrfH" value="6" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="3L0oCJN_XXX" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3L0oCJN_NZQ" role="3cqZAp">
          <node concept="3cpWsn" id="3L0oCJN_NZT" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="3L0oCJN_NZO" role="1tU5fm" />
            <node concept="Xl_RD" id="3L0oCJN_O2w" role="33vP2m">
              <property role="Xl_RC" value="RGBA(" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Ywa" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_Ywb" role="3clFbG">
            <node concept="37vLTw" id="3L0oCJN_Znh" role="37vLTx">
              <ref role="3cqZAo" node="3L0oCJN_OLW" resolve="r" />
            </node>
            <node concept="37vLTw" id="3L0oCJN_Ywf" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Ywg" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_Ywh" role="3clFbG">
            <node concept="Xl_RD" id="3L0oCJN_Ywi" role="37vLTx">
              <property role="Xl_RC" value=", " />
            </node>
            <node concept="37vLTw" id="3L0oCJN_Ywj" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Ywk" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_Ywl" role="3clFbG">
            <node concept="37vLTw" id="3L0oCJN_ZKw" role="37vLTx">
              <ref role="3cqZAo" node="3L0oCJN_RUy" resolve="g" />
            </node>
            <node concept="37vLTw" id="3L0oCJN_Ywp" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Ywq" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_Ywr" role="3clFbG">
            <node concept="Xl_RD" id="3L0oCJN_Yws" role="37vLTx">
              <property role="Xl_RC" value=", " />
            </node>
            <node concept="37vLTw" id="3L0oCJN_Ywt" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Ywu" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_Ywv" role="3clFbG">
            <node concept="37vLTw" id="3L0oCJNA0hV" role="37vLTx">
              <ref role="3cqZAo" node="3L0oCJN_VGC" resolve="b" />
            </node>
            <node concept="37vLTw" id="3L0oCJN_Ywz" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Yw$" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_Yw_" role="3clFbG">
            <node concept="Xl_RD" id="3L0oCJN_YwA" role="37vLTx">
              <property role="Xl_RC" value=", 255)" />
            </node>
            <node concept="37vLTw" id="3L0oCJN_YwB" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3L0oCJN_Ymr" role="3cqZAp" />
        <node concept="3cpWs6" id="3L0oCJN_Ogi" role="3cqZAp">
          <node concept="37vLTw" id="3L0oCJN_OhC" role="3cqZAk">
            <ref role="3cqZAo" node="3L0oCJN_NZT" resolve="str" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3L0oCJN_$ac" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3L0oCJN_$xu">
    <ref role="13h7C2" to="f9dq:3uNRgPvXZz6" resolve="RGB" />
    <node concept="13hLZK" id="3L0oCJN_$xv" role="13h7CW">
      <node concept="3clFbS" id="3L0oCJN_$xw" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3L0oCJN_$zN" role="13h7CS">
      <property role="TrG5h" value="getRGBA" />
      <ref role="13i0hy" node="3L0oCJN_zDy" resolve="getRGBA" />
      <node concept="3Tm1VV" id="3L0oCJN_$zO" role="1B3o_S" />
      <node concept="3clFbS" id="3L0oCJN_$zR" role="3clF47">
        <node concept="3cpWs8" id="3L0oCJN_IN_" role="3cqZAp">
          <node concept="3cpWsn" id="3L0oCJN_INC" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="3L0oCJN_INz" role="1tU5fm" />
            <node concept="Xl_RD" id="3L0oCJN_IRh" role="33vP2m">
              <property role="Xl_RC" value="RGBA(" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_J5R" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_J$z" role="3clFbG">
            <node concept="2OqwBi" id="3L0oCJN_JKj" role="37vLTx">
              <node concept="13iPFW" id="3L0oCJN_JAe" role="2Oq$k0" />
              <node concept="3TrcHB" id="3L0oCJN_K3E" role="2OqNvi">
                <ref role="3TsBF5" to="f9dq:3uNRgPvXZM9" resolve="r" />
              </node>
            </node>
            <node concept="37vLTw" id="3L0oCJN_J5P" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_Kn2" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_KyX" role="3clFbG">
            <node concept="Xl_RD" id="3L0oCJN_K$7" role="37vLTx">
              <property role="Xl_RC" value=", " />
            </node>
            <node concept="37vLTw" id="3L0oCJN_Kn0" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_KEv" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_KGq" role="3clFbG">
            <node concept="2OqwBi" id="3L0oCJN_KKZ" role="37vLTx">
              <node concept="13iPFW" id="3L0oCJN_KJn" role="2Oq$k0" />
              <node concept="3TrcHB" id="3L0oCJN_KWN" role="2OqNvi">
                <ref role="3TsBF5" to="f9dq:3uNRgPvXZPP" resolve="g" />
              </node>
            </node>
            <node concept="37vLTw" id="3L0oCJN_KEt" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_LfM" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_LVk" role="3clFbG">
            <node concept="Xl_RD" id="3L0oCJN_LXm" role="37vLTx">
              <property role="Xl_RC" value=", " />
            </node>
            <node concept="37vLTw" id="3L0oCJN_LfK" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_M4R" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_M7n" role="3clFbG">
            <node concept="2OqwBi" id="3L0oCJN_Mi_" role="37vLTx">
              <node concept="13iPFW" id="3L0oCJN_M8i" role="2Oq$k0" />
              <node concept="3TrcHB" id="3L0oCJN_MsH" role="2OqNvi">
                <ref role="3TsBF5" to="f9dq:3uNRgPvXZTy" resolve="b" />
              </node>
            </node>
            <node concept="37vLTw" id="3L0oCJN_M4P" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3L0oCJN_MzE" role="3cqZAp">
          <node concept="d57v9" id="3L0oCJN_MA7" role="3clFbG">
            <node concept="Xl_RD" id="3L0oCJN_MCd" role="37vLTx">
              <property role="Xl_RC" value=", 255)" />
            </node>
            <node concept="37vLTw" id="3L0oCJN_MzC" role="37vLTJ">
              <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3L0oCJN_MUr" role="3cqZAp">
          <node concept="37vLTw" id="3L0oCJN_N5a" role="3cqZAk">
            <ref role="3cqZAo" node="3L0oCJN_INC" resolve="str" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3L0oCJN_$zS" role="3clF45" />
    </node>
  </node>
</model>

