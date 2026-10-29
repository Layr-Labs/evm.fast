import InitECandidate.Proofs.FrontendStages.Crep.Translate471
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody487_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody487_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 100#64]

def crepBody487_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody487_1

def crepBody487_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5]

def crepBody487_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody487_3

def crepBody487_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9, 10], none)) "get_transient_storage"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody487_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "stack_push"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody487_7 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody487_6

def crepBody487_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody487_9 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody487_8

def crepBody487_10 : CrepProg (BitVec 64) :=
.seq crepBody487_7 crepBody487_9

def crepBody487_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody487_12 : CrepProg (BitVec 64) :=
.seq crepBody487_10 crepBody487_11

def crepBody487_13 : CrepProg (BitVec 64) :=
.seq crepBody487_5 crepBody487_12

def crepBody487_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody487_13

def crepBody487_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody487_14

def crepBody487_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody487_15

def crepBody487_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody487_16

def crepBody487_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 32#64])) crepBody487_17

def crepBody487_19 : CrepProg (BitVec 64) :=
.seq crepBody487_4 crepBody487_18

def crepBody487_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 280#64])) crepBody487_19

def crepBody487_21 : CrepProg (BitVec 64) :=
.seq crepBody487_2 crepBody487_20

def crepBody487_22 : CrepProg (BitVec 64) :=
.seq crepBody487_0 crepBody487_21

def crepBody487_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody487_22

def crepBody487_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody487_23

def crepBody487_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody487_24

def crepBody487_26 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody487_25

def data487 : CrepProg (BitVec 64) := crepBody487_26
def output487 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 116#8, 108#8, 111#8, 97#8, 100#8], [], crepProgToHOL data487)
end InitECandidate.Proofs.FrontendStages.Crep
