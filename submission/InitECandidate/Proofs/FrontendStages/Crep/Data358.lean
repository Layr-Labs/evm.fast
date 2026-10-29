import InitECandidate.Proofs.FrontendStages.Crep.Translate342
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody358_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "destroy_storage" [Flapjack.CrepExp.var 0]

def crepBody358_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody358_0

def crepBody358_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "set_account" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]

def crepBody358_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody358_2

def crepBody358_4 : CrepProg (BitVec 64) :=
.seq crepBody358_1 crepBody358_3

def crepBody358_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody358_6 : CrepProg (BitVec 64) :=
.seq crepBody358_4 crepBody358_5

def data358 : CrepProg (BitVec 64) := crepBody358_6
def output358 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 115#8, 116#8, 114#8, 111#8, 121#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8], [0], crepProgToHOL data358)
end InitECandidate.Proofs.FrontendStages.Crep
