import InitECandidate.Proofs.FrontendStages.Crep.Translate449
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody465_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 1#64]

def crepBody465_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody465_0

def crepBody465_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody465_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody465_2

def crepBody465_4 : CrepProg (BitVec 64) :=
.seq crepBody465_1 crepBody465_3

def crepBody465_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody465_6 : CrepProg (BitVec 64) :=
.seq crepBody465_4 crepBody465_5

def data465 : CrepProg (BitVec 64) := crepBody465_6
def output465 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 106#8, 117#8, 109#8, 112#8, 100#8, 101#8, 115#8, 116#8], [], crepProgToHOL data465)
end InitECandidate.Proofs.FrontendStages.Crep
