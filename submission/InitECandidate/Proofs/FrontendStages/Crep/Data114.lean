import InitECandidate.Proofs.FrontendStages.Crep.Translate98
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody114_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "rlp_write_header"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64, Flapjack.CrepExp.var 1]

def data114 : CrepProg (BitVec 64) := crepBody114_0
def output114 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 104#8,
    101#8, 97#8, 100#8, 101#8, 114#8], [0, 1], crepProgToHOL data114)
end InitECandidate.Proofs.FrontendStages.Crep
