import InitECandidate.Proofs.FrontendStages.Crep.Translate15
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody31_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "udivmod" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody31_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody31_2 : CrepProg (BitVec 64) :=
.seq crepBody31_0 crepBody31_1

def crepBody31_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody31_2

def crepBody31_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody31_3

def data31 : CrepProg (BitVec 64) := crepBody31_4
def output31 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 100#8, 105#8, 118#8], [0, 1], crepProgToHOL data31)
end InitECandidate.Proofs.FrontendStages.Crep
