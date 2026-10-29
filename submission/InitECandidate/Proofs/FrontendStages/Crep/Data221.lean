import InitECandidate.Proofs.FrontendStages.Crep.Translate205
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody221_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody221_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody221_2 : CrepProg (BitVec 64) :=
.seq crepBody221_0 crepBody221_1

def crepBody221_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 20#64) crepBody221_2

def crepBody221_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody221_5 : CrepProg (BitVec 64) :=
.seq crepBody221_3 crepBody221_4

def crepBody221_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]))
  (Flapjack.CrepExp.const 1#64)) crepBody221_5 crepBody221_1

def crepBody221_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "calculate_excess_blob_gas" [Flapjack.CrepExp.var 0]

def crepBody221_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody221_9 : CrepProg (BitVec 64) :=
.seq crepBody221_8 crepBody221_1

def crepBody221_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 21#64) crepBody221_9

def crepBody221_11 : CrepProg (BitVec 64) :=
.seq crepBody221_10 crepBody221_4

def crepBody221_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 208#64]))
  (Flapjack.CrepExp.var 2)) crepBody221_11 crepBody221_1

def crepBody221_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 22#64) crepBody221_9

def crepBody221_14 : CrepProg (BitVec 64) :=
.seq crepBody221_13 crepBody221_4

def crepBody221_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 104#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 112#64]))) crepBody221_14 crepBody221_1

def crepBody221_16 : CrepProg (BitVec 64) :=
.seq crepBody221_12 crepBody221_15

def crepBody221_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "calculate_base_fee_per_gas"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 104#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 104#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody221_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "u256_eq"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody221_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 8)

def crepBody221_20 : CrepProg (BitVec 64) :=
.seq crepBody221_19 crepBody221_1

def crepBody221_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 23#64) crepBody221_20

def crepBody221_22 : CrepProg (BitVec 64) :=
.seq crepBody221_21 crepBody221_4

def crepBody221_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody221_22 crepBody221_1

def crepBody221_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 24#64) crepBody221_20

def crepBody221_25 : CrepProg (BitVec 64) :=
.seq crepBody221_24 crepBody221_4

def crepBody221_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 120#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 120#64]))) crepBody221_25 crepBody221_1

def crepBody221_27 : CrepProg (BitVec 64) :=
.seq crepBody221_23 crepBody221_26

def crepBody221_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 25#64) crepBody221_20

def crepBody221_29 : CrepProg (BitVec 64) :=
.seq crepBody221_28 crepBody221_4

def crepBody221_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]))
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64]),
      Flapjack.CrepExp.const 1#64])) crepBody221_29 crepBody221_1

def crepBody221_31 : CrepProg (BitVec 64) :=
.seq crepBody221_27 crepBody221_30

def crepBody221_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 26#64) crepBody221_20

def crepBody221_33 : CrepProg (BitVec 64) :=
.seq crepBody221_32 crepBody221_4

def crepBody221_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 32#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 136#64]))) crepBody221_33 crepBody221_1

def crepBody221_35 : CrepProg (BitVec 64) :=
.seq crepBody221_31 crepBody221_34

def crepBody221_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "u256_is_zero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody221_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 9)

def crepBody221_38 : CrepProg (BitVec 64) :=
.seq crepBody221_37 crepBody221_1

def crepBody221_39 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 27#64) crepBody221_38

def crepBody221_40 : CrepProg (BitVec 64) :=
.seq crepBody221_39 crepBody221_4

def crepBody221_41 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody221_40 crepBody221_1

def crepBody221_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 152#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 120#64]),
    Flapjack.CrepExp.const 8#64]

def crepBody221_43 : CrepProg (BitVec 64) :=
.seq crepBody221_41 crepBody221_42

def crepBody221_44 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 28#64) crepBody221_38

def crepBody221_45 : CrepProg (BitVec 64) :=
.seq crepBody221_44 crepBody221_4

def crepBody221_46 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody221_45 crepBody221_1

def crepBody221_47 : CrepProg (BitVec 64) :=
.seq crepBody221_43 crepBody221_46

def crepBody221_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_mark" []

def crepBody221_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody221_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 192#64)

def crepBody221_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "keccak256"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]]

def crepBody221_52 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody221_51

def crepBody221_53 : CrepProg (BitVec 64) :=
.seq crepBody221_50 crepBody221_52

def crepBody221_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 32#64]

def crepBody221_55 : CrepProg (BitVec 64) :=
.seq crepBody221_53 crepBody221_54

def crepBody221_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "heap_release" [Flapjack.CrepExp.var 9]

def crepBody221_57 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody221_56

def crepBody221_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 11)

def crepBody221_59 : CrepProg (BitVec 64) :=
.seq crepBody221_58 crepBody221_1

def crepBody221_60 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 29#64) crepBody221_59

def crepBody221_61 : CrepProg (BitVec 64) :=
.seq crepBody221_60 crepBody221_4

def crepBody221_62 : CrepProg (BitVec 64) :=
.seq crepBody221_57 crepBody221_61

def crepBody221_63 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody221_62 crepBody221_1

def crepBody221_64 : CrepProg (BitVec 64) :=
.seq crepBody221_55 crepBody221_63

def crepBody221_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "header_hash" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 10]

def crepBody221_66 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody221_65

def crepBody221_67 : CrepProg (BitVec 64) :=
.seq crepBody221_64 crepBody221_66

def crepBody221_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memeq"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]

def crepBody221_69 : CrepProg (BitVec 64) :=
.seq crepBody221_67 crepBody221_68

def crepBody221_70 : CrepProg (BitVec 64) :=
.seq crepBody221_69 crepBody221_57

def crepBody221_71 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 30#64) crepBody221_59

def crepBody221_72 : CrepProg (BitVec 64) :=
.seq crepBody221_71 crepBody221_4

def crepBody221_73 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody221_72 crepBody221_1

def crepBody221_74 : CrepProg (BitVec 64) :=
.seq crepBody221_70 crepBody221_73

def crepBody221_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody221_76 : CrepProg (BitVec 64) :=
.seq crepBody221_74 crepBody221_75

def crepBody221_77 : CrepProg (BitVec 64) :=
.seq crepBody221_49 crepBody221_76

def crepBody221_78 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody221_77

def crepBody221_79 : CrepProg (BitVec 64) :=
.seq crepBody221_48 crepBody221_78

def crepBody221_80 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody221_79

def crepBody221_81 : CrepProg (BitVec 64) :=
.seq crepBody221_47 crepBody221_80

def crepBody221_82 : CrepProg (BitVec 64) :=
.seq crepBody221_36 crepBody221_81

def crepBody221_83 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody221_82

def crepBody221_84 : CrepProg (BitVec 64) :=
.seq crepBody221_35 crepBody221_83

def crepBody221_85 : CrepProg (BitVec 64) :=
.seq crepBody221_18 crepBody221_84

def crepBody221_86 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody221_85

def crepBody221_87 : CrepProg (BitVec 64) :=
.seq crepBody221_17 crepBody221_86

def crepBody221_88 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody221_87

def crepBody221_89 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody221_88

def crepBody221_90 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody221_89

def crepBody221_91 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody221_90

def crepBody221_92 : CrepProg (BitVec 64) :=
.seq crepBody221_16 crepBody221_91

def crepBody221_93 : CrepProg (BitVec 64) :=
.seq crepBody221_7 crepBody221_92

def crepBody221_94 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody221_93

def crepBody221_95 : CrepProg (BitVec 64) :=
.seq crepBody221_6 crepBody221_94

def data221 : CrepProg (BitVec 64) := crepBody221_95
def output221 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8], [0, 1], crepProgToHOL data221)
end InitECandidate.Proofs.FrontendStages.Crep
