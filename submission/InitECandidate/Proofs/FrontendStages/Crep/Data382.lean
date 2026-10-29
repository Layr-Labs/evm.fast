import InitECandidate.Proofs.FrontendStages.Crep.Translate366
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody382_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "bal_ensure_account" [Flapjack.CrepExp.var 0]

def crepBody382_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody382_0

def crepBody382_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody382_3 : CrepProg (BitVec 64) :=
.seq crepBody382_1 crepBody382_2

def data382 : CrepProg (BitVec 64) := crepBody382_3
def output382 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 95#8, 116#8, 111#8, 117#8, 99#8, 104#8, 101#8, 100#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8,
    110#8, 116#8], [0], crepProgToHOL data382)
end InitECandidate.Proofs.FrontendStages.Crep
