import InitECandidate.Proofs.FrontendStages.Crep.Translate470
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody486_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "require_not_static" []

def crepBody486_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody486_0

def crepBody486_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody486_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody486_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 9]

def crepBody486_5 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody486_4

def crepBody486_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "is_warm_storage_key" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]

def crepBody486_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.const 2100#64)

def crepBody486_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody486_9 : CrepProg (BitVec 64) :=
.seq crepBody486_7 crepBody486_8

def crepBody486_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody486_9 crepBody486_8

def crepBody486_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "max"
  [Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2300#64, Flapjack.CrepExp.const 1#64]]

def crepBody486_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "check_gas" [Flapjack.CrepExp.var 13]

def crepBody486_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody486_12

def crepBody486_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "charge_gas" [Flapjack.CrepExp.var 12]

def crepBody486_15 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody486_14

def crepBody486_16 : CrepProg (BitVec 64) :=
.seq crepBody486_13 crepBody486_15

def crepBody486_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "warm_storage_key" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]

def crepBody486_18 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody486_17

def crepBody486_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody486_18 crepBody486_8

def crepBody486_20 : CrepProg (BitVec 64) :=
.seq crepBody486_16 crepBody486_19

def crepBody486_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "get_storage_original"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]

def crepBody486_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "get_storage" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]

def crepBody486_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "u256_eq"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody486_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "u256_eq"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody486_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "u256_eq"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody486_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody486_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody486_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody486_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 28 (Flapjack.CrepExp.var 29)

def crepBody486_30 : CrepProg (BitVec 64) :=
.seq crepBody486_29 crepBody486_8

def crepBody486_31 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 28, Flapjack.CrepExp.const 10000#64]) crepBody486_30

def crepBody486_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 0#64))]) crepBody486_31 crepBody486_8

def crepBody486_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.var 30)

def crepBody486_34 : CrepProg (BitVec 64) :=
.seq crepBody486_33 crepBody486_8

def crepBody486_35 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.const 11616#64]) crepBody486_34

def crepBody486_36 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 96#64]) crepBody486_35

def crepBody486_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 0#64))]) crepBody486_36 crepBody486_8

def crepBody486_38 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.const 11616#64]) crepBody486_34

def crepBody486_39 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 96#64]) crepBody486_38

def crepBody486_40 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 0#64))]) crepBody486_39 crepBody486_8

def crepBody486_41 : CrepProg (BitVec 64) :=
.seq crepBody486_37 crepBody486_40

def crepBody486_42 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.const 10000#64]) crepBody486_34

def crepBody486_43 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 96#64]) crepBody486_42

def crepBody486_44 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 0#64)) crepBody486_43 crepBody486_8

def crepBody486_45 : CrepProg (BitVec 64) :=
.seq crepBody486_41 crepBody486_44

def crepBody486_46 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 0#64)) crepBody486_45 crepBody486_8

def crepBody486_47 : CrepProg (BitVec 64) :=
.seq crepBody486_32 crepBody486_46

def crepBody486_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 29 (Flapjack.CrepExp.const 97920#64)

def crepBody486_49 : CrepProg (BitVec 64) :=
.seq crepBody486_48 crepBody486_8

def crepBody486_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64))]) crepBody486_49 crepBody486_8

def crepBody486_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "credit_state_gas_refund" [Flapjack.CrepExp.const 97920#64]

def crepBody486_52 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody486_51

def crepBody486_53 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64))]) crepBody486_52 crepBody486_8

def crepBody486_54 : CrepProg (BitVec 64) :=
.seq crepBody486_50 crepBody486_53

def crepBody486_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 12]]

def crepBody486_56 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody486_55

def crepBody486_57 : CrepProg (BitVec 64) :=
.seq crepBody486_54 crepBody486_56

def crepBody486_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "charge_state_gas" [Flapjack.CrepExp.var 29]

def crepBody486_59 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody486_58

def crepBody486_60 : CrepProg (BitVec 64) :=
.seq crepBody486_57 crepBody486_59

def crepBody486_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "set_storage"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody486_62 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody486_61

def crepBody486_63 : CrepProg (BitVec 64) :=
.seq crepBody486_60 crepBody486_62

def crepBody486_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody486_65 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody486_64

def crepBody486_66 : CrepProg (BitVec 64) :=
.seq crepBody486_63 crepBody486_65

def crepBody486_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody486_68 : CrepProg (BitVec 64) :=
.seq crepBody486_66 crepBody486_67

def crepBody486_69 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody486_68

def crepBody486_70 : CrepProg (BitVec 64) :=
.seq crepBody486_47 crepBody486_69

def crepBody486_71 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.var 12) crepBody486_70

def crepBody486_72 : CrepProg (BitVec 64) :=
.seq crepBody486_28 crepBody486_71

def crepBody486_73 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody486_72

def crepBody486_74 : CrepProg (BitVec 64) :=
.seq crepBody486_27 crepBody486_73

def crepBody486_75 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody486_74

def crepBody486_76 : CrepProg (BitVec 64) :=
.seq crepBody486_26 crepBody486_75

def crepBody486_77 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody486_76

def crepBody486_78 : CrepProg (BitVec 64) :=
.seq crepBody486_25 crepBody486_77

def crepBody486_79 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody486_78

def crepBody486_80 : CrepProg (BitVec 64) :=
.seq crepBody486_24 crepBody486_79

def crepBody486_81 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody486_80

def crepBody486_82 : CrepProg (BitVec 64) :=
.seq crepBody486_23 crepBody486_81

def crepBody486_83 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody486_82

def crepBody486_84 : CrepProg (BitVec 64) :=
.seq crepBody486_22 crepBody486_83

def crepBody486_85 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody486_84

def crepBody486_86 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody486_85

def crepBody486_87 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody486_86

def crepBody486_88 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody486_87

def crepBody486_89 : CrepProg (BitVec 64) :=
.seq crepBody486_21 crepBody486_88

def crepBody486_90 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody486_89

def crepBody486_91 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody486_90

def crepBody486_92 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody486_91

def crepBody486_93 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody486_92

def crepBody486_94 : CrepProg (BitVec 64) :=
.seq crepBody486_20 crepBody486_93

def crepBody486_95 : CrepProg (BitVec 64) :=
.seq crepBody486_11 crepBody486_94

def crepBody486_96 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody486_95

def crepBody486_97 : CrepProg (BitVec 64) :=
.seq crepBody486_10 crepBody486_96

def crepBody486_98 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 100#64) crepBody486_97

def crepBody486_99 : CrepProg (BitVec 64) :=
.seq crepBody486_6 crepBody486_98

def crepBody486_100 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody486_99

def crepBody486_101 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 32#64])) crepBody486_100

def crepBody486_102 : CrepProg (BitVec 64) :=
.seq crepBody486_5 crepBody486_101

def crepBody486_103 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 280#64])) crepBody486_102

def crepBody486_104 : CrepProg (BitVec 64) :=
.seq crepBody486_3 crepBody486_103

def crepBody486_105 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody486_104

def crepBody486_106 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody486_105

def crepBody486_107 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody486_106

def crepBody486_108 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody486_107

def crepBody486_109 : CrepProg (BitVec 64) :=
.seq crepBody486_2 crepBody486_108

def crepBody486_110 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody486_109

def crepBody486_111 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody486_110

def crepBody486_112 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody486_111

def crepBody486_113 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody486_112

def crepBody486_114 : CrepProg (BitVec 64) :=
.seq crepBody486_1 crepBody486_113

def data486 : CrepProg (BitVec 64) := crepBody486_114
def output486 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 115#8, 116#8, 111#8, 114#8, 101#8], [], crepProgToHOL data486)
end InitECandidate.Proofs.FrontendStages.Crep
