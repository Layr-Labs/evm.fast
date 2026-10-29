import InitECandidate.Proofs.FrontendStages.Crep.Translate375
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody391_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "update_builder_from_tx" []

def crepBody391_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody391_0

def crepBody391_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "merge_tx_into_block" []

def crepBody391_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody391_2

def crepBody391_4 : CrepProg (BitVec 64) :=
.seq crepBody391_1 crepBody391_3

def crepBody391_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody391_6 : CrepProg (BitVec 64) :=
.seq crepBody391_4 crepBody391_5

def data391 : CrepProg (BitVec 64) := crepBody391_6
def output391 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [105#8, 110#8, 99#8, 111#8, 114#8, 112#8, 111#8, 114#8, 97#8, 116#8, 101#8, 95#8, 116#8, 120#8, 95#8, 105#8, 110#8,
    116#8, 111#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8], [], crepProgToHOL data391)
end InitECandidate.Proofs.FrontendStages.Crep
