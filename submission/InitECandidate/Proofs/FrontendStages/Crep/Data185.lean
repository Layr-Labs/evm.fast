import InitECandidate.Proofs.FrontendStages.Crep.Translate169
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody185_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "precheck_host_ssz_header" []

def crepBody185_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody185_0

def crepBody185_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "input_blob" []

def crepBody185_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "decode_stateless_input" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody185_4 : CrepProg (BitVec 64) :=
.seq crepBody185_2 crepBody185_3

def crepBody185_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody185_4

def crepBody185_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody185_5

def crepBody185_7 : CrepProg (BitVec 64) :=
.seq crepBody185_1 crepBody185_6

def data185 : CrepProg (BitVec 64) := crepBody185_7
def output185 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 104#8, 111#8, 115#8, 116#8, 95#8, 105#8, 110#8, 112#8, 117#8, 116#8], [], crepProgToHOL data185)
end InitECandidate.Proofs.FrontendStages.Crep
