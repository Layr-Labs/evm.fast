import InitECandidate.Proofs.FrontendStages.Crep.Translate352
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody368_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6], none)) "htab_item" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody368_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "htab_set"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody368_2 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody368_1

def crepBody368_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody368_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody368_2 crepBody368_3

def crepBody368_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 7)

def crepBody368_6 : CrepProg (BitVec 64) :=
.seq crepBody368_5 crepBody368_3

def crepBody368_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody368_6

def crepBody368_8 : CrepProg (BitVec 64) :=
.seq crepBody368_4 crepBody368_7

def crepBody368_9 : CrepProg (BitVec 64) :=
.seq crepBody368_0 crepBody368_8

def crepBody368_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody368_9

def crepBody368_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody368_10

def crepBody368_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody368_11

def crepBody368_13 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody368_12

def crepBody368_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody368_15 : CrepProg (BitVec 64) :=
.seq crepBody368_13 crepBody368_14

def crepBody368_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody368_15

def crepBody368_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody368_16

def data368 : CrepProg (BitVec 64) := crepBody368_17
def output368 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 117#8, 110#8, 105#8, 111#8, 110#8, 95#8, 105#8, 110#8, 116#8, 111#8], [0, 1], crepProgToHOL data368)
end InitECandidate.Proofs.FrontendStages.Crep
