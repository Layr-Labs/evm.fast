import InitECandidate.Proofs.FrontendStages.Crep.Translate750
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody766_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "words_of" [Flapjack.CrepExp.var 2]

def crepBody766_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 15#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 3]]]

def crepBody766_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody766_1

def crepBody766_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody766_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody766_5 : CrepProg (BitVec 64) :=
.seq crepBody766_3 crepBody766_4

def crepBody766_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64])) crepBody766_5

def crepBody766_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody766_6

def crepBody766_8 : CrepProg (BitVec 64) :=
.seq crepBody766_2 crepBody766_7

def crepBody766_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 2) crepBody766_5

def crepBody766_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody766_9

def crepBody766_11 : CrepProg (BitVec 64) :=
.seq crepBody766_8 crepBody766_10

def crepBody766_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody766_13 : CrepProg (BitVec 64) :=
.seq crepBody766_11 crepBody766_12

def crepBody766_14 : CrepProg (BitVec 64) :=
.seq crepBody766_0 crepBody766_13

def crepBody766_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody766_14

def crepBody766_16 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody766_15

def crepBody766_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody766_16

def data766 : CrepProg (BitVec 64) := crepBody766_17
def output766 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 105#8, 100#8, 101#8, 110#8, 116#8, 105#8, 116#8, 121#8], [], crepProgToHOL data766)
end InitECandidate.Proofs.FrontendStages.Crep
