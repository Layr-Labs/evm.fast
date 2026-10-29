import InitECandidate.Proofs.FrontendStages.Crep.Translate784
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody800_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "udiv" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 5#64]

def crepBody800_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody800_2 : CrepProg (BitVec 64) :=
.seq crepBody800_0 crepBody800_1

def crepBody800_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody800_2

def data800 : CrepProg (BitVec 64) := crepBody800_3
def output800 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 100#8, 105#8, 118#8, 95#8, 115#8, 109#8, 97#8, 108#8, 108#8, 53#8], [0], crepProgToHOL data800)
end InitECandidate.Proofs.FrontendStages.Crep
