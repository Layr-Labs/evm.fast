import InitECandidate.Proofs.FrontendStages.Crep.Translate537
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody553_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "require_not_static" []

def crepBody553_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody553_0

def crepBody553_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody553_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody553_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "stack_pop" []

def crepBody553_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "sat_word"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody553_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody553_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "words_of" [Flapjack.CrepExp.var 13]

def crepBody553_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 12000#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 16]],
    Flapjack.CrepExp.var 14]

def crepBody553_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "charge_gas" [Flapjack.CrepExp.var 17]

def crepBody553_10 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody553_9

def crepBody553_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "extend_memory" [Flapjack.CrepExp.var 15]

def crepBody553_12 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody553_11

def crepBody553_13 : CrepProg (BitVec 64) :=
.seq crepBody553_10 crepBody553_12

def crepBody553_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "get_account"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64])]

def crepBody553_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody553_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "compute_contract_address"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.var 20]

def crepBody553_17 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody553_16

def crepBody553_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody553_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "generic_create"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 13]

def crepBody553_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody553_21 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody553_20

def crepBody553_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody553_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody553_21 crepBody553_22

def crepBody553_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody553_25 : CrepProg (BitVec 64) :=
.seq crepBody553_23 crepBody553_24

def crepBody553_26 : CrepProg (BitVec 64) :=
.seq crepBody553_19 crepBody553_25

def crepBody553_27 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody553_26

def crepBody553_28 : CrepProg (BitVec 64) :=
.seq crepBody553_18 crepBody553_27

def crepBody553_29 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody553_28

def crepBody553_30 : CrepProg (BitVec 64) :=
.seq crepBody553_17 crepBody553_29

def crepBody553_31 : CrepProg (BitVec 64) :=
.seq crepBody553_15 crepBody553_30

def crepBody553_32 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody553_31

def crepBody553_33 : CrepProg (BitVec 64) :=
.seq crepBody553_14 crepBody553_32

def crepBody553_34 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody553_33

def crepBody553_35 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody553_34

def crepBody553_36 : CrepProg (BitVec 64) :=
.seq crepBody553_13 crepBody553_35

def crepBody553_37 : CrepProg (BitVec 64) :=
.seq crepBody553_8 crepBody553_36

def crepBody553_38 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody553_37

def crepBody553_39 : CrepProg (BitVec 64) :=
.seq crepBody553_7 crepBody553_38

def crepBody553_40 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody553_39

def crepBody553_41 : CrepProg (BitVec 64) :=
.seq crepBody553_6 crepBody553_40

def crepBody553_42 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody553_41

def crepBody553_43 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody553_42

def crepBody553_44 : CrepProg (BitVec 64) :=
.seq crepBody553_5 crepBody553_43

def crepBody553_45 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody553_44

def crepBody553_46 : CrepProg (BitVec 64) :=
.seq crepBody553_4 crepBody553_45

def crepBody553_47 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody553_46

def crepBody553_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody553_47

def crepBody553_49 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody553_48

def crepBody553_50 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody553_49

def crepBody553_51 : CrepProg (BitVec 64) :=
.seq crepBody553_3 crepBody553_50

def crepBody553_52 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody553_51

def crepBody553_53 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody553_52

def crepBody553_54 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody553_53

def crepBody553_55 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody553_54

def crepBody553_56 : CrepProg (BitVec 64) :=
.seq crepBody553_2 crepBody553_55

def crepBody553_57 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody553_56

def crepBody553_58 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody553_57

def crepBody553_59 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody553_58

def crepBody553_60 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody553_59

def crepBody553_61 : CrepProg (BitVec 64) :=
.seq crepBody553_1 crepBody553_60

def data553 : CrepProg (BitVec 64) := crepBody553_61
def output553 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8], [], crepProgToHOL data553)
end InitECandidate.Proofs.FrontendStages.Crep
