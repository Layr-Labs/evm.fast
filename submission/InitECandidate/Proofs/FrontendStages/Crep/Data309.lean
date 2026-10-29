import InitECandidate.Proofs.FrontendStages.Crep.Translate293
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody309_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "tx_signing_hash_mode"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 1]

def data309 : CrepProg (BitVec 64) := crepBody309_0
def output309 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 50#8, 57#8, 51#8, 48#8], [0, 1], crepProgToHOL data309)
end InitECandidate.Proofs.FrontendStages.Crep
