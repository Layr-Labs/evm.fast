import InitECandidate.Proofs.FrontendStages.Crep.Translate506
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody522_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody522_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody522_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody522_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "charge_gas" [Flapjack.CrepExp.var 9]

def crepBody522_4 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody522_3

def crepBody522_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "extend_memory" [Flapjack.CrepExp.var 10]

def crepBody522_6 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody522_5

def crepBody522_7 : CrepProg (BitVec 64) :=
.seq crepBody522_4 crepBody522_6

def crepBody522_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody522_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody522_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody522_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody522_12 : CrepProg (BitVec 64) :=
.seq crepBody522_10 crepBody522_11

def crepBody522_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 12]) crepBody522_12

def crepBody522_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody522_13

def crepBody522_15 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 11) crepBody522_12

def crepBody522_16 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody522_15

def crepBody522_17 : CrepProg (BitVec 64) :=
.seq crepBody522_14 crepBody522_16

def crepBody522_18 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody522_12

def crepBody522_19 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 104#64]) crepBody522_18

def crepBody522_20 : CrepProg (BitVec 64) :=
.seq crepBody522_17 crepBody522_19

def crepBody522_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody522_22 : CrepProg (BitVec 64) :=
.seq crepBody522_20 crepBody522_21

def crepBody522_23 : CrepProg (BitVec 64) :=
.seq crepBody522_9 crepBody522_22

def crepBody522_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody522_23

def crepBody522_25 : CrepProg (BitVec 64) :=
.seq crepBody522_8 crepBody522_24

def crepBody522_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody522_25

def crepBody522_27 : CrepProg (BitVec 64) :=
.seq crepBody522_7 crepBody522_26

def crepBody522_28 : CrepProg (BitVec 64) :=
.seq crepBody522_2 crepBody522_27

def crepBody522_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody522_28

def crepBody522_30 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody522_29

def crepBody522_31 : CrepProg (BitVec 64) :=
.seq crepBody522_1 crepBody522_30

def crepBody522_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody522_31

def crepBody522_33 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody522_32

def crepBody522_34 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody522_33

def crepBody522_35 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody522_34

def crepBody522_36 : CrepProg (BitVec 64) :=
.seq crepBody522_0 crepBody522_35

def crepBody522_37 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody522_36

def crepBody522_38 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody522_37

def crepBody522_39 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody522_38

def crepBody522_40 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody522_39

def data522 : CrepProg (BitVec 64) := crepBody522_40
def output522 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 114#8, 101#8, 116#8, 117#8, 114#8, 110#8], [], crepProgToHOL data522)
end InitECandidate.Proofs.FrontendStages.Crep
