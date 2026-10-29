import InitECandidate.Proofs.FrontendStages.Crep.Translate767
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody783_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody783_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody783_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sha256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]]]

def crepBody783_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody783_2

def crepBody783_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody783_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody783_6 : CrepProg (BitVec 64) :=
.seq crepBody783_4 crepBody783_5

def crepBody783_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody783_6

def crepBody783_8 : CrepProg (BitVec 64) :=
.seq crepBody783_3 crepBody783_7

def crepBody783_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 1)) crepBody783_8

def crepBody783_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sha256"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.var 2]

def crepBody783_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody783_10

def crepBody783_12 : CrepProg (BitVec 64) :=
.seq crepBody783_9 crepBody783_11

def crepBody783_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody783_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody783_13

def crepBody783_15 : CrepProg (BitVec 64) :=
.seq crepBody783_12 crepBody783_14

def crepBody783_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody783_17 : CrepProg (BitVec 64) :=
.seq crepBody783_15 crepBody783_16

def crepBody783_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody783_17

def crepBody783_19 : CrepProg (BitVec 64) :=
.seq crepBody783_1 crepBody783_18

def crepBody783_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody783_19

def crepBody783_21 : CrepProg (BitVec 64) :=
.seq crepBody783_0 crepBody783_20

def crepBody783_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody783_21

def data783 : CrepProg (BitVec 64) := crepBody783_22
def output783 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8, 95#8,
    104#8, 97#8, 115#8, 104#8], [0, 1, 2], crepProgToHOL data783)
end InitECandidate.Proofs.FrontendStages.Crep
