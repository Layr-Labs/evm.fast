import InitECandidate.Proofs.FrontendStages.Crep.Translate16
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody32_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "udivmod" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody32_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody32_2 : CrepProg (BitVec 64) :=
.seq crepBody32_0 crepBody32_1

def crepBody32_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody32_2

def crepBody32_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody32_3

def data32 : CrepProg (BitVec 64) := crepBody32_4
def output32 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 109#8, 111#8, 100#8], [0, 1], crepProgToHOL data32)
end InitECandidate.Proofs.FrontendStages.Crep
