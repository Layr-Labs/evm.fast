import InitECandidate.Proofs.FrontendStages.Crep.Translate94
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody110_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])

def crepBody110_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody110_2 : CrepProg (BitVec 64) :=
.seq crepBody110_0 crepBody110_1

def crepBody110_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody110_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 55#64) (Flapjack.CrepExp.var 2)) crepBody110_2 crepBody110_3

def crepBody110_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_be_len" [Flapjack.CrepExp.var 2]

def crepBody110_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0)
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 55#64, Flapjack.CrepExp.var 3])

def crepBody110_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_put_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.var 3]

def crepBody110_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody110_7

def crepBody110_9 : CrepProg (BitVec 64) :=
.seq crepBody110_6 crepBody110_8

def crepBody110_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3]]

def crepBody110_11 : CrepProg (BitVec 64) :=
.seq crepBody110_9 crepBody110_10

def crepBody110_12 : CrepProg (BitVec 64) :=
.seq crepBody110_5 crepBody110_11

def crepBody110_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody110_12

def crepBody110_14 : CrepProg (BitVec 64) :=
.seq crepBody110_4 crepBody110_13

def data110 : CrepProg (BitVec 64) := crepBody110_14
def output110 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8], [0, 1, 2], crepProgToHOL data110)
end InitECandidate.Proofs.FrontendStages.Crep
