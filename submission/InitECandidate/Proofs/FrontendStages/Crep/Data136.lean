import InitECandidate.Proofs.FrontendStages.Crep.Translate120
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody136_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "scratch_alloc" [Flapjack.CrepExp.const 88#64]

def crepBody136_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64]

def crepBody136_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody136_1

def crepBody136_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.var 2]]

def crepBody136_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.var 2]]

def crepBody136_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody136_4

def crepBody136_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody136_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody136_8 : CrepProg (BitVec 64) :=
.seq crepBody136_6 crepBody136_7

def crepBody136_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody136_8

def crepBody136_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]) crepBody136_9

def crepBody136_11 : CrepProg (BitVec 64) :=
.seq crepBody136_5 crepBody136_10

def crepBody136_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody136_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody136_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody136_13

def crepBody136_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody136_16 : CrepProg (BitVec 64) :=
.seq crepBody136_15 crepBody136_7

def crepBody136_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody136_16

def crepBody136_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64]) crepBody136_17

def crepBody136_19 : CrepProg (BitVec 64) :=
.seq crepBody136_14 crepBody136_18

def crepBody136_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody136_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody136_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody136_21

def crepBody136_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody136_24 : CrepProg (BitVec 64) :=
.seq crepBody136_23 crepBody136_7

def crepBody136_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody136_24

def crepBody136_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64]) crepBody136_25

def crepBody136_27 : CrepProg (BitVec 64) :=
.seq crepBody136_22 crepBody136_26

def crepBody136_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody136_29 : CrepProg (BitVec 64) :=
.seq crepBody136_27 crepBody136_28

def crepBody136_30 : CrepProg (BitVec 64) :=
.seq crepBody136_20 crepBody136_29

def crepBody136_31 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody136_30

def crepBody136_32 : CrepProg (BitVec 64) :=
.seq crepBody136_19 crepBody136_31

def crepBody136_33 : CrepProg (BitVec 64) :=
.seq crepBody136_12 crepBody136_32

def crepBody136_34 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody136_33

def crepBody136_35 : CrepProg (BitVec 64) :=
.seq crepBody136_11 crepBody136_34

def crepBody136_36 : CrepProg (BitVec 64) :=
.seq crepBody136_3 crepBody136_35

def crepBody136_37 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody136_36

def crepBody136_38 : CrepProg (BitVec 64) :=
.seq crepBody136_2 crepBody136_37

def crepBody136_39 : CrepProg (BitVec 64) :=
.seq crepBody136_0 crepBody136_38

def crepBody136_40 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody136_39

def crepBody136_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody136_40

def crepBody136_42 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64])) crepBody136_41

def data136 : CrepProg (BitVec 64) := crepBody136_42
def output136 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 99#8, 111#8, 112#8, 121#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8], [0], crepProgToHOL data136)
end InitECandidate.Proofs.FrontendStages.Crep
