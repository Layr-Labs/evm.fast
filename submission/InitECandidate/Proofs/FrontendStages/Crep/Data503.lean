import InitECandidate.Proofs.FrontendStages.Crep.Translate487
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody503_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody503_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "to_address_masked"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody503_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "stack_pop" []

def crepBody503_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "stack_pop" []

def crepBody503_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "stack_pop" []

def crepBody503_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "sat_word"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody503_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "words_of" [Flapjack.CrepExp.var 18]

def crepBody503_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody503_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "access_gas_cost" [Flapjack.CrepExp.var 5]

def crepBody503_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 100#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 19]],
    Flapjack.CrepExp.var 20]

def crepBody503_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "charge_gas" [Flapjack.CrepExp.var 23]

def crepBody503_11 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody503_10

def crepBody503_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "warm_after_charge" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 22]

def crepBody503_13 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody503_12

def crepBody503_14 : CrepProg (BitVec 64) :=
.seq crepBody503_11 crepBody503_13

def crepBody503_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "extend_memory" [Flapjack.CrepExp.var 21]

def crepBody503_16 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody503_15

def crepBody503_17 : CrepProg (BitVec 64) :=
.seq crepBody503_14 crepBody503_16

def crepBody503_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24, 25], none)) "ext_code_of" [Flapjack.CrepExp.var 5]

def crepBody503_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "sat_word"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody503_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "sat_word"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody503_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "buffer_read"
  [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 26]]

def crepBody503_22 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody503_21

def crepBody503_23 : CrepProg (BitVec 64) :=
.seq crepBody503_20 crepBody503_22

def crepBody503_24 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody503_23

def crepBody503_25 : CrepProg (BitVec 64) :=
.seq crepBody503_19 crepBody503_24

def crepBody503_26 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody503_25

def crepBody503_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody503_28 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody503_26 crepBody503_27

def crepBody503_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody503_30 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody503_29

def crepBody503_31 : CrepProg (BitVec 64) :=
.seq crepBody503_28 crepBody503_30

def crepBody503_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody503_33 : CrepProg (BitVec 64) :=
.seq crepBody503_31 crepBody503_32

def crepBody503_34 : CrepProg (BitVec 64) :=
.seq crepBody503_18 crepBody503_33

def crepBody503_35 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody503_34

def crepBody503_36 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody503_35

def crepBody503_37 : CrepProg (BitVec 64) :=
.seq crepBody503_17 crepBody503_36

def crepBody503_38 : CrepProg (BitVec 64) :=
.seq crepBody503_9 crepBody503_37

def crepBody503_39 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody503_38

def crepBody503_40 : CrepProg (BitVec 64) :=
.seq crepBody503_8 crepBody503_39

def crepBody503_41 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody503_40

def crepBody503_42 : CrepProg (BitVec 64) :=
.seq crepBody503_7 crepBody503_41

def crepBody503_43 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody503_42

def crepBody503_44 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody503_43

def crepBody503_45 : CrepProg (BitVec 64) :=
.seq crepBody503_6 crepBody503_44

def crepBody503_46 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody503_45

def crepBody503_47 : CrepProg (BitVec 64) :=
.seq crepBody503_5 crepBody503_46

def crepBody503_48 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody503_47

def crepBody503_49 : CrepProg (BitVec 64) :=
.seq crepBody503_4 crepBody503_48

def crepBody503_50 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody503_49

def crepBody503_51 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody503_50

def crepBody503_52 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody503_51

def crepBody503_53 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody503_52

def crepBody503_54 : CrepProg (BitVec 64) :=
.seq crepBody503_3 crepBody503_53

def crepBody503_55 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody503_54

def crepBody503_56 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody503_55

def crepBody503_57 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody503_56

def crepBody503_58 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody503_57

def crepBody503_59 : CrepProg (BitVec 64) :=
.seq crepBody503_2 crepBody503_58

def crepBody503_60 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody503_59

def crepBody503_61 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody503_60

def crepBody503_62 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody503_61

def crepBody503_63 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody503_62

def crepBody503_64 : CrepProg (BitVec 64) :=
.seq crepBody503_1 crepBody503_63

def crepBody503_65 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody503_64

def crepBody503_66 : CrepProg (BitVec 64) :=
.seq crepBody503_0 crepBody503_65

def crepBody503_67 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody503_66

def crepBody503_68 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody503_67

def crepBody503_69 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody503_68

def crepBody503_70 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody503_69

def data503 : CrepProg (BitVec 64) := crepBody503_70
def output503 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 101#8, 120#8, 116#8, 99#8, 111#8, 100#8, 101#8, 99#8, 111#8, 112#8, 121#8], [], crepProgToHOL data503)
end InitECandidate.Proofs.FrontendStages.Crep
