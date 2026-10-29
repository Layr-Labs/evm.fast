import InitECandidate.Proofs.FrontendStages.Crep.Translate729
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody745_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "bls_consts_init" []

def crepBody745_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody745_0

def crepBody745_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody745_3 : CrepProg (BitVec 64) :=
.seq crepBody745_1 crepBody745_2

def data745 : CrepProg (BitVec 64) := crepBody745_3
def output745 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 108#8, 105#8, 98#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data745)
end InitECandidate.Proofs.FrontendStages.Crep
