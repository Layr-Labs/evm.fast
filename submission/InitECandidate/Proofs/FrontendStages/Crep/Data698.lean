import InitECandidate.Proofs.FrontendStages.Crep.Translate682
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody698_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_conj" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody698_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_0

def crepBody698_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_conj"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody698_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_2

def crepBody698_4 : CrepProg (BitVec 64) :=
.seq crepBody698_1 crepBody698_3

def crepBody698_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 960#64]]

def crepBody698_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_5

def crepBody698_7 : CrepProg (BitVec 64) :=
.seq crepBody698_4 crepBody698_6

def crepBody698_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_conj"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody698_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_8

def crepBody698_10 : CrepProg (BitVec 64) :=
.seq crepBody698_7 crepBody698_9

def crepBody698_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 1152#64]]

def crepBody698_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_11

def crepBody698_13 : CrepProg (BitVec 64) :=
.seq crepBody698_10 crepBody698_12

def crepBody698_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_conj"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64]]

def crepBody698_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_14

def crepBody698_16 : CrepProg (BitVec 64) :=
.seq crepBody698_13 crepBody698_15

def crepBody698_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 864#64]]

def crepBody698_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_17

def crepBody698_19 : CrepProg (BitVec 64) :=
.seq crepBody698_16 crepBody698_18

def crepBody698_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_conj"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 384#64]]

def crepBody698_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_20

def crepBody698_22 : CrepProg (BitVec 64) :=
.seq crepBody698_19 crepBody698_21

def crepBody698_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 1056#64]]

def crepBody698_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_23

def crepBody698_25 : CrepProg (BitVec 64) :=
.seq crepBody698_22 crepBody698_24

def crepBody698_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_conj"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 480#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 480#64]]

def crepBody698_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_26

def crepBody698_28 : CrepProg (BitVec 64) :=
.seq crepBody698_25 crepBody698_27

def crepBody698_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 480#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 480#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 1248#64]]

def crepBody698_30 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody698_29

def crepBody698_31 : CrepProg (BitVec 64) :=
.seq crepBody698_28 crepBody698_30

def crepBody698_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody698_33 : CrepProg (BitVec 64) :=
.seq crepBody698_31 crepBody698_32

def data698 : CrepProg (BitVec 64) := crepBody698_33
def output698 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 102#8, 114#8, 111#8, 98#8], [0, 1], crepProgToHOL data698)
end InitECandidate.Proofs.FrontendStages.Crep
