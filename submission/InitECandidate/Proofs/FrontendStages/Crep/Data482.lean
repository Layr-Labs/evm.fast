import InitECandidate.Proofs.FrontendStages.Crep.Translate466
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody482_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody482_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody482_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 9)

def crepBody482_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody482_4 : CrepProg (BitVec 64) :=
.seq crepBody482_2 crepBody482_3

def crepBody482_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 2#64) crepBody482_4

def crepBody482_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody482_7 : CrepProg (BitVec 64) :=
.seq crepBody482_5 crepBody482_6

def crepBody482_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.var 0)) crepBody482_7 crepBody482_3

def crepBody482_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody482_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody482_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13], none)) "mul64x64" [Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.var 9]

def crepBody482_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 375#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 375#64, Flapjack.CrepExp.var 0]],
    Flapjack.CrepExp.var 10]

def crepBody482_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.const 18446744073709551615#64)

def crepBody482_14 : CrepProg (BitVec 64) :=
.seq crepBody482_13 crepBody482_3

def crepBody482_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "add_sat" [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 12]

def crepBody482_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody482_14 crepBody482_15

def crepBody482_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "charge_gas" [Flapjack.CrepExp.var 14]

def crepBody482_18 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody482_17

def crepBody482_19 : CrepProg (BitVec 64) :=
.seq crepBody482_16 crepBody482_18

def crepBody482_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody482_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "stack_pop" []

def crepBody482_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 15,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 32#64]]]

def crepBody482_23 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody482_22

def crepBody482_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 21)

def crepBody482_25 : CrepProg (BitVec 64) :=
.seq crepBody482_24 crepBody482_3

def crepBody482_26 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 1#64]) crepBody482_25

def crepBody482_27 : CrepProg (BitVec 64) :=
.seq crepBody482_23 crepBody482_26

def crepBody482_28 : CrepProg (BitVec 64) :=
.seq crepBody482_21 crepBody482_27

def crepBody482_29 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody482_28

def crepBody482_30 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody482_29

def crepBody482_31 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody482_30

def crepBody482_32 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody482_31

def crepBody482_33 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 0)) crepBody482_32

def crepBody482_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "extend_memory" [Flapjack.CrepExp.var 11]

def crepBody482_35 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody482_34

def crepBody482_36 : CrepProg (BitVec 64) :=
.seq crepBody482_33 crepBody482_35

def crepBody482_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "require_not_static" []

def crepBody482_38 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody482_37

def crepBody482_39 : CrepProg (BitVec 64) :=
.seq crepBody482_36 crepBody482_38

def crepBody482_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody482_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody482_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "memcpy"
  [Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.load
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                Flapjack.CrepExp.const 112#64]),
          Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody482_43 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody482_42

def crepBody482_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody482_45 : CrepProg (BitVec 64) :=
.seq crepBody482_44 crepBody482_3

def crepBody482_46 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 18) crepBody482_45

def crepBody482_47 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 0#64]) crepBody482_46

def crepBody482_48 : CrepProg (BitVec 64) :=
.seq crepBody482_43 crepBody482_47

def crepBody482_49 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody482_45

def crepBody482_50 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 8#64]) crepBody482_49

def crepBody482_51 : CrepProg (BitVec 64) :=
.seq crepBody482_48 crepBody482_50

def crepBody482_52 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 0) crepBody482_45

def crepBody482_53 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 16#64]) crepBody482_52

def crepBody482_54 : CrepProg (BitVec 64) :=
.seq crepBody482_51 crepBody482_53

def crepBody482_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]

def crepBody482_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody482_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "memcpy"
  [Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 20],
    Flapjack.CrepExp.var 9]

def crepBody482_58 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody482_57

def crepBody482_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody482_60 : CrepProg (BitVec 64) :=
.seq crepBody482_59 crepBody482_3

def crepBody482_61 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 19) crepBody482_60

def crepBody482_62 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 24#64]) crepBody482_61

def crepBody482_63 : CrepProg (BitVec 64) :=
.seq crepBody482_58 crepBody482_62

def crepBody482_64 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 9) crepBody482_60

def crepBody482_65 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 32#64]) crepBody482_64

def crepBody482_66 : CrepProg (BitVec 64) :=
.seq crepBody482_63 crepBody482_65

def crepBody482_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "log_append"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.var 17]

def crepBody482_68 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody482_67

def crepBody482_69 : CrepProg (BitVec 64) :=
.seq crepBody482_66 crepBody482_68

def crepBody482_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody482_71 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody482_70

def crepBody482_72 : CrepProg (BitVec 64) :=
.seq crepBody482_69 crepBody482_71

def crepBody482_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody482_74 : CrepProg (BitVec 64) :=
.seq crepBody482_72 crepBody482_73

def crepBody482_75 : CrepProg (BitVec 64) :=
.seq crepBody482_56 crepBody482_74

def crepBody482_76 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody482_75

def crepBody482_77 : CrepProg (BitVec 64) :=
.seq crepBody482_55 crepBody482_76

def crepBody482_78 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody482_77

def crepBody482_79 : CrepProg (BitVec 64) :=
.seq crepBody482_54 crepBody482_78

def crepBody482_80 : CrepProg (BitVec 64) :=
.seq crepBody482_41 crepBody482_79

def crepBody482_81 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody482_80

def crepBody482_82 : CrepProg (BitVec 64) :=
.seq crepBody482_40 crepBody482_81

def crepBody482_83 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody482_82

def crepBody482_84 : CrepProg (BitVec 64) :=
.seq crepBody482_39 crepBody482_83

def crepBody482_85 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody482_84

def crepBody482_86 : CrepProg (BitVec 64) :=
.seq crepBody482_20 crepBody482_85

def crepBody482_87 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody482_86

def crepBody482_88 : CrepProg (BitVec 64) :=
.seq crepBody482_19 crepBody482_87

def crepBody482_89 : CrepProg (BitVec 64) :=
.seq crepBody482_12 crepBody482_88

def crepBody482_90 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody482_89

def crepBody482_91 : CrepProg (BitVec 64) :=
.seq crepBody482_11 crepBody482_90

def crepBody482_92 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody482_91

def crepBody482_93 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody482_92

def crepBody482_94 : CrepProg (BitVec 64) :=
.seq crepBody482_10 crepBody482_93

def crepBody482_95 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody482_94

def crepBody482_96 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody482_95

def crepBody482_97 : CrepProg (BitVec 64) :=
.seq crepBody482_9 crepBody482_96

def crepBody482_98 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody482_97

def crepBody482_99 : CrepProg (BitVec 64) :=
.seq crepBody482_8 crepBody482_98

def crepBody482_100 : CrepProg (BitVec 64) :=
.seq crepBody482_1 crepBody482_99

def crepBody482_101 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody482_100

def crepBody482_102 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody482_101

def crepBody482_103 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody482_102

def crepBody482_104 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody482_103

def crepBody482_105 : CrepProg (BitVec 64) :=
.seq crepBody482_0 crepBody482_104

def crepBody482_106 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody482_105

def crepBody482_107 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody482_106

def crepBody482_108 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody482_107

def crepBody482_109 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody482_108

def data482 : CrepProg (BitVec 64) := crepBody482_109
def output482 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 108#8, 111#8, 103#8], [0], crepProgToHOL data482)
end InitECandidate.Proofs.FrontendStages.Crep
