import InitECandidate.Proofs.FrontendStages.Crep.Translate192
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody208_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody208_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody208_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody208_3 : CrepProg (BitVec 64) :=
.seq crepBody208_1 crepBody208_2

def crepBody208_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 6#64) crepBody208_3

def crepBody208_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 3#64

def crepBody208_6 : CrepProg (BitVec 64) :=
.seq crepBody208_4 crepBody208_5

def crepBody208_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody208_6 crepBody208_2

def crepBody208_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 7#64) crepBody208_3

def crepBody208_9 : CrepProg (BitVec 64) :=
.seq crepBody208_8 crepBody208_5

def crepBody208_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 2)) crepBody208_9 crepBody208_2

def crepBody208_11 : CrepProg (BitVec 64) :=
.seq crepBody208_7 crepBody208_10

def crepBody208_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody208_13 : CrepProg (BitVec 64) :=
.seq crepBody208_11 crepBody208_12

def crepBody208_14 : CrepProg (BitVec 64) :=
.seq crepBody208_0 crepBody208_13

def crepBody208_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody208_14

def crepBody208_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody208_15

def crepBody208_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody208_16

def crepBody208_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody208_17

def data208 : CrepProg (BitVec 64) := crepBody208_18
def output208 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 100#8, 114#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8], [0, 1, 2], crepProgToHOL data208)
end InitECandidate.Proofs.FrontendStages.Crep
