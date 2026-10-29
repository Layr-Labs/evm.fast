import InitECandidate.Proofs.FrontendStages.Crep.Translate507
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody523_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody523_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody523_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody523_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "charge_gas" [Flapjack.CrepExp.var 9]

def crepBody523_4 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody523_3

def crepBody523_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "extend_memory" [Flapjack.CrepExp.var 10]

def crepBody523_6 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody523_5

def crepBody523_7 : CrepProg (BitVec 64) :=
.seq crepBody523_4 crepBody523_6

def crepBody523_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody523_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody523_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody523_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody523_12 : CrepProg (BitVec 64) :=
.seq crepBody523_10 crepBody523_11

def crepBody523_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 12]) crepBody523_12

def crepBody523_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody523_13

def crepBody523_15 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 11) crepBody523_12

def crepBody523_16 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody523_15

def crepBody523_17 : CrepProg (BitVec 64) :=
.seq crepBody523_14 crepBody523_16

def crepBody523_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 13)

def crepBody523_19 : CrepProg (BitVec 64) :=
.seq crepBody523_18 crepBody523_11

def crepBody523_20 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 1#64) crepBody523_19

def crepBody523_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody523_22 : CrepProg (BitVec 64) :=
.seq crepBody523_20 crepBody523_21

def crepBody523_23 : CrepProg (BitVec 64) :=
.seq crepBody523_17 crepBody523_22

def crepBody523_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody523_25 : CrepProg (BitVec 64) :=
.seq crepBody523_23 crepBody523_24

def crepBody523_26 : CrepProg (BitVec 64) :=
.seq crepBody523_9 crepBody523_25

def crepBody523_27 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody523_26

def crepBody523_28 : CrepProg (BitVec 64) :=
.seq crepBody523_8 crepBody523_27

def crepBody523_29 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody523_28

def crepBody523_30 : CrepProg (BitVec 64) :=
.seq crepBody523_7 crepBody523_29

def crepBody523_31 : CrepProg (BitVec 64) :=
.seq crepBody523_2 crepBody523_30

def crepBody523_32 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody523_31

def crepBody523_33 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody523_32

def crepBody523_34 : CrepProg (BitVec 64) :=
.seq crepBody523_1 crepBody523_33

def crepBody523_35 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody523_34

def crepBody523_36 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody523_35

def crepBody523_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody523_36

def crepBody523_38 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody523_37

def crepBody523_39 : CrepProg (BitVec 64) :=
.seq crepBody523_0 crepBody523_38

def crepBody523_40 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody523_39

def crepBody523_41 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody523_40

def crepBody523_42 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody523_41

def crepBody523_43 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody523_42

def data523 : CrepProg (BitVec 64) := crepBody523_43
def output523 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 114#8, 101#8, 118#8, 101#8, 114#8, 116#8], [], crepProgToHOL data523)
end InitECandidate.Proofs.FrontendStages.Crep
