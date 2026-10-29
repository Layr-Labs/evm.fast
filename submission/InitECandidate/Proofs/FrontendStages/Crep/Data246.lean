import InitECandidate.Proofs.FrontendStages.Crep.Translate230
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody246_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "keccak256"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 152#64])]

def crepBody246_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody246_0

def crepBody246_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody246_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "key_to_nibbles"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 152#64]),
    Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 3]

def crepBody246_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody246_3

def crepBody246_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]

def crepBody246_6 : CrepProg (BitVec 64) :=
.seq crepBody246_4 crepBody246_5

def crepBody246_7 : CrepProg (BitVec 64) :=
.seq crepBody246_2 crepBody246_6

def crepBody246_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody246_7

def crepBody246_9 : CrepProg (BitVec 64) :=
.seq crepBody246_1 crepBody246_8

def crepBody246_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody246_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody246_9 crepBody246_10

def crepBody246_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 2]]

def crepBody246_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "key_to_nibbles"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody246_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody246_13

def crepBody246_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 2]]

def crepBody246_16 : CrepProg (BitVec 64) :=
.seq crepBody246_14 crepBody246_15

def crepBody246_17 : CrepProg (BitVec 64) :=
.seq crepBody246_12 crepBody246_16

def crepBody246_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody246_17

def crepBody246_19 : CrepProg (BitVec 64) :=
.seq crepBody246_11 crepBody246_18

def data246 : CrepProg (BitVec 64) := crepBody246_19
def output246 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 112#8, 116#8, 95#8, 110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 95#8, 107#8, 101#8, 121#8], [0, 1, 2], crepProgToHOL data246)
end InitECandidate.Proofs.FrontendStages.Crep
