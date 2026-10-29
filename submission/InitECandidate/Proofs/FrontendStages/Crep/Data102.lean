import InitECandidate.Proofs.FrontendStages.Crep.Translate86
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody102_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4], none)) "rlp_item_header" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody102_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_validate_items"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2], Flapjack.CrepExp.var 3]

def crepBody102_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody102_1

def crepBody102_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody102_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody102_2 crepBody102_3

def crepBody102_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]]

def crepBody102_6 : CrepProg (BitVec 64) :=
.seq crepBody102_4 crepBody102_5

def crepBody102_7 : CrepProg (BitVec 64) :=
.seq crepBody102_0 crepBody102_6

def crepBody102_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody102_7

def crepBody102_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody102_8

def crepBody102_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody102_9

def data102 : CrepProg (BitVec 64) := crepBody102_10
def output102 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8, 95#8, 116#8, 111#8, 116#8, 97#8, 108#8], [0, 1], crepProgToHOL data102)
end InitECandidate.Proofs.FrontendStages.Crep
