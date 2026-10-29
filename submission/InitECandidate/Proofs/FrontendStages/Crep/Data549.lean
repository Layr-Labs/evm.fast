import InitECandidate.Proofs.FrontendStages.Crep.Translate533
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody549_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody549_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody549_2 : CrepProg (BitVec 64) :=
.seq crepBody549_0 crepBody549_1

def crepBody549_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody549_2

def crepBody549_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 144#64]) crepBody549_3

def crepBody549_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody549_2

def crepBody549_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 152#64]) crepBody549_5

def crepBody549_7 : CrepProg (BitVec 64) :=
.seq crepBody549_4 crepBody549_6

def crepBody549_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 216#64]) crepBody549_5

def crepBody549_9 : CrepProg (BitVec 64) :=
.seq crepBody549_7 crepBody549_8

def crepBody549_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody549_11 : CrepProg (BitVec 64) :=
.seq crepBody549_9 crepBody549_10

def crepBody549_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody549_11 crepBody549_1

def crepBody549_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]]

def crepBody549_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody549_15 : CrepProg (BitVec 64) :=
.seq crepBody549_14 crepBody549_1

def crepBody549_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody549_15

def crepBody549_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 144#64]) crepBody549_16

def crepBody549_18 : CrepProg (BitVec 64) :=
.seq crepBody549_13 crepBody549_17

def crepBody549_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 1) crepBody549_15

def crepBody549_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 216#64]) crepBody549_19

def crepBody549_21 : CrepProg (BitVec 64) :=
.seq crepBody549_18 crepBody549_20

def crepBody549_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1)) crepBody549_21 crepBody549_1

def crepBody549_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody549_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody549_23

def crepBody549_25 : CrepProg (BitVec 64) :=
.seq crepBody549_22 crepBody549_24

def crepBody549_26 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 152#64]) crepBody549_19

def crepBody549_27 : CrepProg (BitVec 64) :=
.seq crepBody549_25 crepBody549_26

def crepBody549_28 : CrepProg (BitVec 64) :=
.seq crepBody549_27 crepBody549_10

def crepBody549_29 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 144#64])) crepBody549_28

def crepBody549_30 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 216#64])) crepBody549_29

def crepBody549_31 : CrepProg (BitVec 64) :=
.seq crepBody549_12 crepBody549_30

def data549 : CrepProg (BitVec 64) := crepBody549_31
def output549 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 101#8, 116#8, 95#8, 114#8, 101#8, 116#8, 100#8, 97#8, 116#8, 97#8], [0, 1], crepProgToHOL data549)
end InitECandidate.Proofs.FrontendStages.Crep
