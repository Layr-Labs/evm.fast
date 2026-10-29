import InitECandidate.Proofs.FrontendStages.Crep.Translate753
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody769_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "words_of" [Flapjack.CrepExp.var 2]

def crepBody769_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 600#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 120#64, Flapjack.CrepExp.var 3]]]

def crepBody769_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody769_1

def crepBody769_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody769_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memzero" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 12#64]

def crepBody769_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody769_4

def crepBody769_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "ripemd160"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 12#64]]

def crepBody769_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody769_6

def crepBody769_8 : CrepProg (BitVec 64) :=
.seq crepBody769_5 crepBody769_7

def crepBody769_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody769_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody769_11 : CrepProg (BitVec 64) :=
.seq crepBody769_9 crepBody769_10

def crepBody769_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody769_11

def crepBody769_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody769_12

def crepBody769_14 : CrepProg (BitVec 64) :=
.seq crepBody769_8 crepBody769_13

def crepBody769_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 32#64) crepBody769_11

def crepBody769_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody769_15

def crepBody769_17 : CrepProg (BitVec 64) :=
.seq crepBody769_14 crepBody769_16

def crepBody769_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody769_19 : CrepProg (BitVec 64) :=
.seq crepBody769_17 crepBody769_18

def crepBody769_20 : CrepProg (BitVec 64) :=
.seq crepBody769_3 crepBody769_19

def crepBody769_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody769_20

def crepBody769_22 : CrepProg (BitVec 64) :=
.seq crepBody769_2 crepBody769_21

def crepBody769_23 : CrepProg (BitVec 64) :=
.seq crepBody769_0 crepBody769_22

def crepBody769_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody769_23

def crepBody769_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody769_24

def crepBody769_26 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody769_25

def data769 : CrepProg (BitVec 64) := crepBody769_26
def output769 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8], [], crepProgToHOL data769)
end InitECandidate.Proofs.FrontendStages.Crep
