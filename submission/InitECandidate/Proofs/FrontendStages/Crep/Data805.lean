import InitECandidate.Proofs.FrontendStages.Crep.Translate789
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody805_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "validate_headers"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64])]

def crepBody805_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody805_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody805_3 : CrepProg (BitVec 64) :=
.seq crepBody805_1 crepBody805_2

def crepBody805_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 3#64) crepBody805_3

def crepBody805_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody805_6 : CrepProg (BitVec 64) :=
.seq crepBody805_4 crepBody805_5

def crepBody805_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody805_6 crepBody805_2

def crepBody805_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody805_9 : CrepProg (BitVec 64) :=
.seq crepBody805_8 crepBody805_2

def crepBody805_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 3) crepBody805_9

def crepBody805_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 440#64]) crepBody805_10

def crepBody805_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 4) crepBody805_9

def crepBody805_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 448#64]) crepBody805_12

def crepBody805_14 : CrepProg (BitVec 64) :=
.seq crepBody805_11 crepBody805_13

def crepBody805_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody805_16 : CrepProg (BitVec 64) :=
.seq crepBody805_15 crepBody805_2

def crepBody805_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 22#64) crepBody805_16

def crepBody805_18 : CrepProg (BitVec 64) :=
.seq crepBody805_17 crepBody805_5

def crepBody805_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]))) crepBody805_18 crepBody805_2

def crepBody805_20 : CrepProg (BitVec 64) :=
.seq crepBody805_14 crepBody805_19

def crepBody805_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "check_gas_limit"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 104#64])]

def crepBody805_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody805_23 : CrepProg (BitVec 64) :=
.seq crepBody805_22 crepBody805_2

def crepBody805_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 10#64) crepBody805_23

def crepBody805_25 : CrepProg (BitVec 64) :=
.seq crepBody805_24 crepBody805_5

def crepBody805_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody805_25 crepBody805_2

def crepBody805_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "nodedb_build"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])]

def crepBody805_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "nodedb_build"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])]

def crepBody805_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "state_init"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 8]

def crepBody805_30 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody805_29

def crepBody805_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 12)

def crepBody805_32 : CrepProg (BitVec 64) :=
.seq crepBody805_31 crepBody805_2

def crepBody805_33 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 4#64) crepBody805_32

def crepBody805_34 : CrepProg (BitVec 64) :=
.seq crepBody805_33 crepBody805_5

def crepBody805_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64],
        Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody805_34 crepBody805_2

def crepBody805_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 12)

def crepBody805_37 : CrepProg (BitVec 64) :=
.seq crepBody805_36 crepBody805_2

def crepBody805_38 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody805_37

def crepBody805_39 : CrepProg (BitVec 64) :=
.seq crepBody805_35 crepBody805_38

def crepBody805_40 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 10)) crepBody805_39

def crepBody805_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "payload_header" [Flapjack.CrepExp.var 0]

def crepBody805_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody805_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "header_hash" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody805_44 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody805_43

def crepBody805_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "memeq"
  [Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]),
        Flapjack.CrepExp.const 472#64],
    Flapjack.CrepExp.const 32#64]

def crepBody805_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 15)

def crepBody805_47 : CrepProg (BitVec 64) :=
.seq crepBody805_46 crepBody805_2

def crepBody805_48 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 5#64) crepBody805_47

def crepBody805_49 : CrepProg (BitVec 64) :=
.seq crepBody805_48 crepBody805_5

def crepBody805_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody805_49 crepBody805_2

def crepBody805_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "is_valid_versioned_hashes" [Flapjack.CrepExp.var 0]

def crepBody805_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 16)

def crepBody805_53 : CrepProg (BitVec 64) :=
.seq crepBody805_52 crepBody805_2

def crepBody805_54 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 6#64) crepBody805_53

def crepBody805_55 : CrepProg (BitVec 64) :=
.seq crepBody805_54 crepBody805_5

def crepBody805_56 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 0#64)) crepBody805_55 crepBody805_2

def crepBody805_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "validate_header" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 12]

def crepBody805_58 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody805_57

def crepBody805_59 : CrepProg (BitVec 64) :=
.seq crepBody805_56 crepBody805_58

def crepBody805_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "alloc" [Flapjack.CrepExp.const 120#64]

def crepBody805_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 18)

def crepBody805_62 : CrepProg (BitVec 64) :=
.seq crepBody805_61 crepBody805_2

def crepBody805_63 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 16) crepBody805_62

def crepBody805_64 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]) crepBody805_63

def crepBody805_65 : CrepProg (BitVec 64) :=
.seq crepBody805_60 crepBody805_64

def crepBody805_66 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody805_65

def crepBody805_67 : CrepProg (BitVec 64) :=
.seq crepBody805_59 crepBody805_66

def crepBody805_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 120#64]

def crepBody805_69 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody805_68

def crepBody805_70 : CrepProg (BitVec 64) :=
.seq crepBody805_67 crepBody805_69

def crepBody805_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 17)

def crepBody805_72 : CrepProg (BitVec 64) :=
.seq crepBody805_71 crepBody805_2

def crepBody805_73 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64])) crepBody805_72

def crepBody805_74 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 0#64]) crepBody805_73

def crepBody805_75 : CrepProg (BitVec 64) :=
.seq crepBody805_70 crepBody805_74

def crepBody805_76 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 104#64])) crepBody805_72

def crepBody805_77 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 8#64]) crepBody805_76

def crepBody805_78 : CrepProg (BitVec 64) :=
.seq crepBody805_75 crepBody805_77

def crepBody805_79 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 440#64])) crepBody805_72

def crepBody805_80 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 16#64]) crepBody805_79

def crepBody805_81 : CrepProg (BitVec 64) :=
.seq crepBody805_78 crepBody805_80

def crepBody805_82 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 448#64])) crepBody805_72

def crepBody805_83 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 24#64]) crepBody805_82

def crepBody805_84 : CrepProg (BitVec 64) :=
.seq crepBody805_81 crepBody805_83

def crepBody805_85 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])) crepBody805_72

def crepBody805_86 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 32#64]) crepBody805_85

def crepBody805_87 : CrepProg (BitVec 64) :=
.seq crepBody805_84 crepBody805_86

def crepBody805_88 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 96#64])) crepBody805_72

def crepBody805_89 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 40#64]) crepBody805_88

def crepBody805_90 : CrepProg (BitVec 64) :=
.seq crepBody805_87 crepBody805_89

def crepBody805_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 18)

def crepBody805_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 19)

def crepBody805_93 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 20)

def crepBody805_94 : CrepProg (BitVec 64) :=
.seq crepBody805_93 crepBody805_2

def crepBody805_95 : CrepProg (BitVec 64) :=
.seq crepBody805_92 crepBody805_94

def crepBody805_96 : CrepProg (BitVec 64) :=
.seq crepBody805_91 crepBody805_95

def crepBody805_97 : CrepProg (BitVec 64) :=
.seq crepBody805_71 crepBody805_96

def crepBody805_98 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 160#64],
      Flapjack.CrepExp.const 24#64])) crepBody805_97

def crepBody805_99 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 160#64],
      Flapjack.CrepExp.const 16#64])) crepBody805_98

def crepBody805_100 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 160#64],
      Flapjack.CrepExp.const 8#64])) crepBody805_99

def crepBody805_101 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 160#64])) crepBody805_100

def crepBody805_102 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 48#64]) crepBody805_101

def crepBody805_103 : CrepProg (BitVec 64) :=
.seq crepBody805_90 crepBody805_102

def crepBody805_104 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 120#64])) crepBody805_72

def crepBody805_105 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 80#64]) crepBody805_104

def crepBody805_106 : CrepProg (BitVec 64) :=
.seq crepBody805_103 crepBody805_105

def crepBody805_107 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 144#64])) crepBody805_72

def crepBody805_108 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 88#64]) crepBody805_107

def crepBody805_109 : CrepProg (BitVec 64) :=
.seq crepBody805_106 crepBody805_108

def crepBody805_110 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 208#64])) crepBody805_72

def crepBody805_111 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 96#64]) crepBody805_110

def crepBody805_112 : CrepProg (BitVec 64) :=
.seq crepBody805_109 crepBody805_111

def crepBody805_113 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 216#64])) crepBody805_72

def crepBody805_114 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 104#64]) crepBody805_113

def crepBody805_115 : CrepProg (BitVec 64) :=
.seq crepBody805_112 crepBody805_114

def crepBody805_116 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 240#64])) crepBody805_72

def crepBody805_117 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
    Flapjack.CrepExp.const 112#64]) crepBody805_116

def crepBody805_118 : CrepProg (BitVec 64) :=
.seq crepBody805_115 crepBody805_117

def crepBody805_119 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "execute_block" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 12]

def crepBody805_120 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody805_119

def crepBody805_121 : CrepProg (BitVec 64) :=
.seq crepBody805_118 crepBody805_120

def crepBody805_122 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody805_123 : CrepProg (BitVec 64) :=
.seq crepBody805_121 crepBody805_122

def crepBody805_124 : CrepProg (BitVec 64) :=
.seq crepBody805_51 crepBody805_123

def crepBody805_125 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody805_124

def crepBody805_126 : CrepProg (BitVec 64) :=
.seq crepBody805_50 crepBody805_125

def crepBody805_127 : CrepProg (BitVec 64) :=
.seq crepBody805_45 crepBody805_126

def crepBody805_128 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody805_127

def crepBody805_129 : CrepProg (BitVec 64) :=
.seq crepBody805_44 crepBody805_128

def crepBody805_130 : CrepProg (BitVec 64) :=
.seq crepBody805_42 crepBody805_129

def crepBody805_131 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody805_130

def crepBody805_132 : CrepProg (BitVec 64) :=
.seq crepBody805_41 crepBody805_131

def crepBody805_133 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody805_132

def crepBody805_134 : CrepProg (BitVec 64) :=
.seq crepBody805_40 crepBody805_133

def crepBody805_135 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody805_134

def crepBody805_136 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody805_135

def crepBody805_137 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody805_136

def crepBody805_138 : CrepProg (BitVec 64) :=
.seq crepBody805_30 crepBody805_137

def crepBody805_139 : CrepProg (BitVec 64) :=
.seq crepBody805_28 crepBody805_138

def crepBody805_140 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody805_139

def crepBody805_141 : CrepProg (BitVec 64) :=
.seq crepBody805_27 crepBody805_140

def crepBody805_142 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody805_141

def crepBody805_143 : CrepProg (BitVec 64) :=
.seq crepBody805_26 crepBody805_142

def crepBody805_144 : CrepProg (BitVec 64) :=
.seq crepBody805_21 crepBody805_143

def crepBody805_145 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody805_144

def crepBody805_146 : CrepProg (BitVec 64) :=
.seq crepBody805_20 crepBody805_145

def crepBody805_147 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
          Flapjack.CrepExp.const 8#64]])) crepBody805_146

def crepBody805_148 : CrepProg (BitVec 64) :=
.seq crepBody805_7 crepBody805_147

def crepBody805_149 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64])) crepBody805_148

def crepBody805_150 : CrepProg (BitVec 64) :=
.seq crepBody805_0 crepBody805_149

def crepBody805_151 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody805_150

def crepBody805_152 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody805_151

def crepBody805_153 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody805_152

def data805 : CrepProg (BitVec 64) := crepBody805_153
def output805 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 117#8, 110#8, 95#8, 97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8], [0], crepProgToHOL data805)
end InitECandidate.Proofs.FrontendStages.Crep
