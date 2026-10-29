import InitECandidate.Proofs.FrontendStages.Crep.Translate751
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody767_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "words_of" [Flapjack.CrepExp.var 2]

def crepBody767_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 60#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 3]]]

def crepBody767_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody767_1

def crepBody767_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody767_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "sha256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]

def crepBody767_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody767_4

def crepBody767_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody767_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody767_8 : CrepProg (BitVec 64) :=
.seq crepBody767_6 crepBody767_7

def crepBody767_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody767_8

def crepBody767_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody767_9

def crepBody767_11 : CrepProg (BitVec 64) :=
.seq crepBody767_5 crepBody767_10

def crepBody767_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 32#64) crepBody767_8

def crepBody767_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody767_12

def crepBody767_14 : CrepProg (BitVec 64) :=
.seq crepBody767_11 crepBody767_13

def crepBody767_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody767_16 : CrepProg (BitVec 64) :=
.seq crepBody767_14 crepBody767_15

def crepBody767_17 : CrepProg (BitVec 64) :=
.seq crepBody767_3 crepBody767_16

def crepBody767_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody767_17

def crepBody767_19 : CrepProg (BitVec 64) :=
.seq crepBody767_2 crepBody767_18

def crepBody767_20 : CrepProg (BitVec 64) :=
.seq crepBody767_0 crepBody767_19

def crepBody767_21 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody767_20

def crepBody767_22 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody767_21

def crepBody767_23 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody767_22

def data767 : CrepProg (BitVec 64) := crepBody767_23
def output767 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 114#8, 101#8, 95#8, 115#8, 104#8, 97#8, 50#8, 53#8, 54#8], [], crepProgToHOL data767)
end InitECandidate.Proofs.FrontendStages.Crep
