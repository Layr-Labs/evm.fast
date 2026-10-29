import InitECandidate.Proofs.FrontendStages.Crep.Translate513
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody529_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 8#64]

def crepBody529_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htab_set"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.const 1#64]

def crepBody529_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody529_1

def crepBody529_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_is_zero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody529_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htab_set"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 1#64]

def crepBody529_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody529_4

def crepBody529_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody529_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody529_5 crepBody529_6

def crepBody529_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 8#64]

def crepBody529_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody529_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody529_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.const 1#64)

def crepBody529_12 : CrepProg (BitVec 64) :=
.seq crepBody529_11 crepBody529_6

def crepBody529_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 0#64)) crepBody529_12 crepBody529_6

def crepBody529_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12)
        (Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64])))]) crepBody529_12 crepBody529_6

def crepBody529_15 : CrepProg (BitVec 64) :=
.seq crepBody529_13 crepBody529_14

def crepBody529_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "recover_authority" [Flapjack.CrepExp.var 10]

def crepBody529_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "warm_address" [Flapjack.CrepExp.var 19]

def crepBody529_18 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody529_17

def crepBody529_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "validate_authorization_checks"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 19]

def crepBody529_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 19)

def crepBody529_21 : CrepProg (BitVec 64) :=
.seq crepBody529_20 crepBody529_6

def crepBody529_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody529_21 crepBody529_6

def crepBody529_23 : CrepProg (BitVec 64) :=
.seq crepBody529_19 crepBody529_22

def crepBody529_24 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody529_23

def crepBody529_25 : CrepProg (BitVec 64) :=
.seq crepBody529_18 crepBody529_24

def crepBody529_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody529_25 crepBody529_6

def crepBody529_27 : CrepProg (BitVec 64) :=
.seq crepBody529_16 crepBody529_26

def crepBody529_28 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody529_27

def crepBody529_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 40#64]))
  (Flapjack.CrepExp.const 18446744073709551615#64)) crepBody529_28 crepBody529_6

def crepBody529_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody529_29 crepBody529_6

def crepBody529_31 : CrepProg (BitVec 64) :=
.seq crepBody529_15 crepBody529_30

def crepBody529_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "account_exists" [Flapjack.CrepExp.var 11]

def crepBody529_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "charge_state_gas" [Flapjack.CrepExp.const 183600#64]

def crepBody529_34 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody529_33

def crepBody529_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody529_34 crepBody529_6

def crepBody529_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "htab_has" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 11]

def crepBody529_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "charge_gas" [Flapjack.CrepExp.const 9000#64]

def crepBody529_38 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody529_37

def crepBody529_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "htab_set"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]

def crepBody529_40 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody529_39

def crepBody529_41 : CrepProg (BitVec 64) :=
.seq crepBody529_38 crepBody529_40

def crepBody529_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody529_41 crepBody529_6

def crepBody529_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "get_pre_state_account" [Flapjack.CrepExp.var 11]

def crepBody529_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23], none)) "get_code"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 11]

def crepBody529_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "is_valid_delegation" [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]

def crepBody529_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 312#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody529_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "set_code"
  [Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 312#64]),
    Flapjack.CrepExp.const 0#64]

def crepBody529_48 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody529_47

def crepBody529_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "htab_has" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 11]

def crepBody529_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "charge_state_gas" [Flapjack.CrepExp.const 35190#64]

def crepBody529_51 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody529_50

def crepBody529_52 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 0#64))]) crepBody529_51 crepBody529_6

def crepBody529_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "htab_set"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]

def crepBody529_54 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody529_53

def crepBody529_55 : CrepProg (BitVec 64) :=
.seq crepBody529_52 crepBody529_54

def crepBody529_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody529_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 239#64)

def crepBody529_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)

def crepBody529_59 : CrepProg (BitVec 64) :=
.seq crepBody529_57 crepBody529_58

def crepBody529_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 2#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody529_61 : CrepProg (BitVec 64) :=
.seq crepBody529_59 crepBody529_60

def crepBody529_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 3#64],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody529_63 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody529_62

def crepBody529_64 : CrepProg (BitVec 64) :=
.seq crepBody529_61 crepBody529_63

def crepBody529_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "set_code"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 23#64]

def crepBody529_66 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody529_65

def crepBody529_67 : CrepProg (BitVec 64) :=
.seq crepBody529_64 crepBody529_66

def crepBody529_68 : CrepProg (BitVec 64) :=
.seq crepBody529_56 crepBody529_67

def crepBody529_69 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody529_68

def crepBody529_70 : CrepProg (BitVec 64) :=
.seq crepBody529_55 crepBody529_69

def crepBody529_71 : CrepProg (BitVec 64) :=
.seq crepBody529_49 crepBody529_70

def crepBody529_72 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody529_71

def crepBody529_73 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64)) crepBody529_48 crepBody529_72

def crepBody529_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "increment_nonce" [Flapjack.CrepExp.var 11]

def crepBody529_75 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody529_74

def crepBody529_76 : CrepProg (BitVec 64) :=
.seq crepBody529_73 crepBody529_75

def crepBody529_77 : CrepProg (BitVec 64) :=
.seq crepBody529_46 crepBody529_76

def crepBody529_78 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody529_77

def crepBody529_79 : CrepProg (BitVec 64) :=
.seq crepBody529_45 crepBody529_78

def crepBody529_80 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody529_79

def crepBody529_81 : CrepProg (BitVec 64) :=
.seq crepBody529_44 crepBody529_80

def crepBody529_82 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody529_81

def crepBody529_83 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody529_82

def crepBody529_84 : CrepProg (BitVec 64) :=
.seq crepBody529_43 crepBody529_83

def crepBody529_85 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody529_84

def crepBody529_86 : CrepProg (BitVec 64) :=
.seq crepBody529_42 crepBody529_85

def crepBody529_87 : CrepProg (BitVec 64) :=
.seq crepBody529_36 crepBody529_86

def crepBody529_88 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody529_87

def crepBody529_89 : CrepProg (BitVec 64) :=
.seq crepBody529_35 crepBody529_88

def crepBody529_90 : CrepProg (BitVec 64) :=
.seq crepBody529_32 crepBody529_89

def crepBody529_91 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody529_90

def crepBody529_92 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody529_91 crepBody529_6

def crepBody529_93 : CrepProg (BitVec 64) :=
.seq crepBody529_31 crepBody529_92

def crepBody529_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 19)

def crepBody529_95 : CrepProg (BitVec 64) :=
.seq crepBody529_94 crepBody529_6

def crepBody529_96 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody529_95

def crepBody529_97 : CrepProg (BitVec 64) :=
.seq crepBody529_93 crepBody529_96

def crepBody529_98 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody529_97

def crepBody529_99 : CrepProg (BitVec 64) :=
.seq crepBody529_10 crepBody529_98

def crepBody529_100 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody529_99

def crepBody529_101 : CrepProg (BitVec 64) :=
.seq crepBody529_9 crepBody529_100

def crepBody529_102 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody529_101

def crepBody529_103 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64],
      Flapjack.CrepExp.const 24#64])) crepBody529_102

def crepBody529_104 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64],
      Flapjack.CrepExp.const 16#64])) crepBody529_103

def crepBody529_105 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64],
      Flapjack.CrepExp.const 8#64])) crepBody529_104

def crepBody529_106 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64])) crepBody529_105

def crepBody529_107 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody529_106

def crepBody529_108 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 120#64]]) crepBody529_107

def crepBody529_109 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 8)) crepBody529_108

def crepBody529_110 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody529_111 : CrepProg (BitVec 64) :=
.seq crepBody529_109 crepBody529_110

def crepBody529_112 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody529_111

def crepBody529_113 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 152#64])) crepBody529_112

def crepBody529_114 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 144#64])) crepBody529_113

def crepBody529_115 : CrepProg (BitVec 64) :=
.seq crepBody529_8 crepBody529_114

def crepBody529_116 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody529_115

def crepBody529_117 : CrepProg (BitVec 64) :=
.seq crepBody529_7 crepBody529_116

def crepBody529_118 : CrepProg (BitVec 64) :=
.seq crepBody529_3 crepBody529_117

def crepBody529_119 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody529_118

def crepBody529_120 : CrepProg (BitVec 64) :=
.seq crepBody529_2 crepBody529_119

def crepBody529_121 : CrepProg (BitVec 64) :=
.seq crepBody529_0 crepBody529_120

def crepBody529_122 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody529_121

def crepBody529_123 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64])) crepBody529_122

def crepBody529_124 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody529_123

def crepBody529_125 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody529_124

def data529 : CrepProg (BitVec 64) := crepBody529_125
def output529 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 101#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8, 105#8, 111#8, 110#8], [], crepProgToHOL data529)
end InitECandidate.Proofs.FrontendStages.Crep
