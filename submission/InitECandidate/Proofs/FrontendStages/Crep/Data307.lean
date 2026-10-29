import InitECandidate.Proofs.FrontendStages.Crep.Translate291
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody307_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "tx_signing_hash_mode"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 1]

def data307 : CrepProg (BitVec 64) := crepBody307_0
def output307 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 112#8, 114#8, 101#8, 49#8,
    53#8, 53#8], [0, 1], crepProgToHOL data307)
end InitECandidate.Proofs.FrontendStages.Crep
