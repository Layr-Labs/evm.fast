import InitECandidate.Proofs.FrontendStages.Crep.Translate451
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody467_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody467_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody467_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_with_memory"
  [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody467_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody467_2

def crepBody467_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody467_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 24#64]),
      Flapjack.CrepExp.var 9])
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 255#64])

def crepBody467_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody467_7 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody467_6

def crepBody467_8 : CrepProg (BitVec 64) :=
.seq crepBody467_5 crepBody467_7

def crepBody467_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody467_10 : CrepProg (BitVec 64) :=
.seq crepBody467_8 crepBody467_9

def crepBody467_11 : CrepProg (BitVec 64) :=
.seq crepBody467_4 crepBody467_10

def crepBody467_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody467_11

def crepBody467_13 : CrepProg (BitVec 64) :=
.seq crepBody467_3 crepBody467_12

def crepBody467_14 : CrepProg (BitVec 64) :=
.seq crepBody467_1 crepBody467_13

def crepBody467_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody467_14

def crepBody467_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody467_15

def crepBody467_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody467_16

def crepBody467_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody467_17

def crepBody467_19 : CrepProg (BitVec 64) :=
.seq crepBody467_0 crepBody467_18

def crepBody467_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody467_19

def crepBody467_21 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody467_20

def crepBody467_22 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody467_21

def crepBody467_23 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody467_22

def data467 : CrepProg (BitVec 64) := crepBody467_23
def output467 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 115#8, 116#8, 111#8, 114#8, 101#8, 56#8], [], crepProgToHOL data467)
end InitECandidate.Proofs.FrontendStages.Crep
