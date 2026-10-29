import InitECandidate.Proofs.FrontendStages.Crep.Translate786
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody802_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]]

def crepBody802_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 0)

def crepBody802_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.var 2]

def crepBody802_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody802_2

def crepBody802_4 : CrepProg (BitVec 64) :=
.seq crepBody802_1 crepBody802_3

def crepBody802_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody802_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody802_7 : CrepProg (BitVec 64) :=
.seq crepBody802_5 crepBody802_6

def crepBody802_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody802_7

def crepBody802_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]]) crepBody802_8

def crepBody802_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody802_7

def crepBody802_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.const 8#64]) crepBody802_10

def crepBody802_12 : CrepProg (BitVec 64) :=
.seq crepBody802_9 crepBody802_11

def crepBody802_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody802_7

def crepBody802_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 64#64]) crepBody802_13

def crepBody802_15 : CrepProg (BitVec 64) :=
.seq crepBody802_12 crepBody802_14

def crepBody802_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody802_17 : CrepProg (BitVec 64) :=
.seq crepBody802_15 crepBody802_16

def crepBody802_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
      Flapjack.CrepExp.const 64#64])) crepBody802_17

def crepBody802_19 : CrepProg (BitVec 64) :=
.seq crepBody802_4 crepBody802_18

def crepBody802_20 : CrepProg (BitVec 64) :=
.seq crepBody802_0 crepBody802_19

def crepBody802_21 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody802_20

def data802 : CrepProg (BitVec 64) := crepBody802_21
def output802 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8, 95#8, 97#8, 112#8, 112#8, 101#8, 110#8, 100#8], [0, 1, 2], crepProgToHOL data802)
end InitECandidate.Proofs.FrontendStages.Crep
