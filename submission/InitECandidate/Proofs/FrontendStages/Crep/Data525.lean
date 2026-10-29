import InitECandidate.Proofs.FrontendStages.Crep.Translate509
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody525_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "is_valid_delegation" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody525_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody525_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody525_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody525_1 crepBody525_2

def crepBody525_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64]]

def crepBody525_5 : CrepProg (BitVec 64) :=
.seq crepBody525_3 crepBody525_4

def crepBody525_6 : CrepProg (BitVec 64) :=
.seq crepBody525_0 crepBody525_5

def crepBody525_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody525_6

def data525 : CrepProg (BitVec 64) := crepBody525_7
def output525 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8, 101#8, 100#8, 95#8, 99#8, 111#8, 100#8,
    101#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8], [0, 1], crepProgToHOL data525)
end InitECandidate.Proofs.FrontendStages.Crep
