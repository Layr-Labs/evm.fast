import InitECandidate.Proofs.FrontendStages.Crep.Translate392
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody408_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "min" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody408_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody408_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody408_3 : CrepProg (BitVec 64) :=
.seq crepBody408_1 crepBody408_2

def crepBody408_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 2]) crepBody408_3

def crepBody408_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody408_4

def crepBody408_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]) crepBody408_3

def crepBody408_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 192#64]) crepBody408_6

def crepBody408_8 : CrepProg (BitVec 64) :=
.seq crepBody408_5 crepBody408_7

def crepBody408_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]]) crepBody408_3

def crepBody408_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody408_9

def crepBody408_11 : CrepProg (BitVec 64) :=
.seq crepBody408_8 crepBody408_10

def crepBody408_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody408_13 : CrepProg (BitVec 64) :=
.seq crepBody408_11 crepBody408_12

def crepBody408_14 : CrepProg (BitVec 64) :=
.seq crepBody408_0 crepBody408_13

def crepBody408_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody408_14

def crepBody408_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 192#64])) crepBody408_15

def data408 : CrepProg (BitVec 64) := crepBody408_16
def output408 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 114#8, 101#8, 100#8, 105#8, 116#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 103#8, 97#8, 115#8, 95#8,
    114#8, 101#8, 102#8, 117#8, 110#8, 100#8], [0], crepProgToHOL data408)
end InitECandidate.Proofs.FrontendStages.Crep
