import InitECandidate.Proofs.FrontendStages.Crep.Translate385
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody401_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "ceil32" [Flapjack.CrepExp.var 0]

def crepBody401_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 5#64)]

def crepBody401_2 : CrepProg (BitVec 64) :=
.seq crepBody401_0 crepBody401_1

def crepBody401_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody401_2

def data401 : CrepProg (BitVec 64) := crepBody401_3
def output401 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [119#8, 111#8, 114#8, 100#8, 115#8, 95#8, 111#8, 102#8], [0], crepProgToHOL data401)
end InitECandidate.Proofs.FrontendStages.Crep
