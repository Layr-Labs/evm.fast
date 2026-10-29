import InitECandidate.Proofs.FrontendStages.Crep.Translate452
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody468_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody468_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_with_memory"
  [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody468_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody468_1

def crepBody468_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody468_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 5],
    Flapjack.CrepExp.const 32#64]

def crepBody468_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "stack_push"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody468_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody468_5

def crepBody468_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody468_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody468_7

def crepBody468_9 : CrepProg (BitVec 64) :=
.seq crepBody468_6 crepBody468_8

def crepBody468_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody468_11 : CrepProg (BitVec 64) :=
.seq crepBody468_9 crepBody468_10

def crepBody468_12 : CrepProg (BitVec 64) :=
.seq crepBody468_4 crepBody468_11

def crepBody468_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody468_12

def crepBody468_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody468_13

def crepBody468_15 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody468_14

def crepBody468_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody468_15

def crepBody468_17 : CrepProg (BitVec 64) :=
.seq crepBody468_3 crepBody468_16

def crepBody468_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody468_17

def crepBody468_19 : CrepProg (BitVec 64) :=
.seq crepBody468_2 crepBody468_18

def crepBody468_20 : CrepProg (BitVec 64) :=
.seq crepBody468_0 crepBody468_19

def crepBody468_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody468_20

def crepBody468_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody468_21

def crepBody468_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody468_22

def crepBody468_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody468_23

def data468 : CrepProg (BitVec 64) := crepBody468_24
def output468 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 108#8, 111#8, 97#8, 100#8], [], crepProgToHOL data468)
end InitECandidate.Proofs.FrontendStages.Crep
