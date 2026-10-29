import InitECandidate.Proofs.FrontendStages.Crep.Translate544
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody560_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody560_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody560_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "to_address_masked"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody560_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "stack_pop" []

def crepBody560_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "stack_pop" []

def crepBody560_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "stack_pop" []

def crepBody560_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23, 24, 25], none)) "stack_pop" []

def crepBody560_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27, 28], none)) "extend_memory_cost2"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody560_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "is_warm_address" [Flapjack.CrepExp.var 9]

def crepBody560_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 30 (Flapjack.CrepExp.const 3000#64)

def crepBody560_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody560_11 : CrepProg (BitVec 64) :=
.seq crepBody560_9 crepBody560_10

def crepBody560_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.const 0#64)) crepBody560_11 crepBody560_10

def crepBody560_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "add_sat" [Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 27]

def crepBody560_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "charge_gas" [Flapjack.CrepExp.var 31]

def crepBody560_15 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody560_14

def crepBody560_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "warm_address" [Flapjack.CrepExp.var 9]

def crepBody560_17 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody560_16

def crepBody560_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.const 0#64)) crepBody560_17 crepBody560_10

def crepBody560_19 : CrepProg (BitVec 64) :=
.seq crepBody560_15 crepBody560_18

def crepBody560_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33, 34], none)) "calculate_delegation_cost" [Flapjack.CrepExp.var 9]

def crepBody560_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36], none)) "charge_gas" [Flapjack.CrepExp.var 34]

def crepBody560_22 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody560_21

def crepBody560_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36], none)) "warm_address" [Flapjack.CrepExp.var 35]

def crepBody560_24 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody560_23

def crepBody560_25 : CrepProg (BitVec 64) :=
.seq crepBody560_22 crepBody560_24

def crepBody560_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 32) (Flapjack.CrepExp.const 0#64)) crepBody560_25 crepBody560_10

def crepBody560_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36, 37], none)) "ext_code_of" [Flapjack.CrepExp.var 35]

def crepBody560_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody560_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40], none)) "calculate_message_call_gas"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 38,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody560_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "charge_gas" [Flapjack.CrepExp.var 39]

def crepBody560_31 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody560_30

def crepBody560_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 41) (Flapjack.CrepExp.var 42)

def crepBody560_33 : CrepProg (BitVec 64) :=
.seq crepBody560_32 crepBody560_10

def crepBody560_34 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.var 40]) crepBody560_33

def crepBody560_35 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 184#64]) crepBody560_34

def crepBody560_36 : CrepProg (BitVec 64) :=
.seq crepBody560_31 crepBody560_35

def crepBody560_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "extend_memory" [Flapjack.CrepExp.var 28]

def crepBody560_38 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody560_37

def crepBody560_39 : CrepProg (BitVec 64) :=
.seq crepBody560_36 crepBody560_38

def crepBody560_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 42) (Flapjack.CrepExp.var 43)

def crepBody560_41 : CrepProg (BitVec 64) :=
.seq crepBody560_40 crepBody560_10

def crepBody560_42 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody560_41

def crepBody560_43 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody560_42

def crepBody560_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([42], none)) "sat_word"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody560_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43], none)) "sat_word"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody560_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([44], none)) "sat_word"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody560_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([45], none)) "sat_word"
  [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody560_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([46], none)) "generic_call"
  [Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 35, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.var 42, Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45,
    Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 0#64]

def crepBody560_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([47], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody560_50 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody560_49

def crepBody560_51 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 46) (Flapjack.CrepExp.const 0#64)) crepBody560_50 crepBody560_10

def crepBody560_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody560_53 : CrepProg (BitVec 64) :=
.seq crepBody560_51 crepBody560_52

def crepBody560_54 : CrepProg (BitVec 64) :=
.seq crepBody560_48 crepBody560_53

def crepBody560_55 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody560_54

def crepBody560_56 : CrepProg (BitVec 64) :=
.seq crepBody560_47 crepBody560_55

def crepBody560_57 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody560_56

def crepBody560_58 : CrepProg (BitVec 64) :=
.seq crepBody560_46 crepBody560_57

def crepBody560_59 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody560_58

def crepBody560_60 : CrepProg (BitVec 64) :=
.seq crepBody560_45 crepBody560_59

def crepBody560_61 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody560_60

def crepBody560_62 : CrepProg (BitVec 64) :=
.seq crepBody560_44 crepBody560_61

def crepBody560_63 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody560_62

def crepBody560_64 : CrepProg (BitVec 64) :=
.seq crepBody560_43 crepBody560_63

def crepBody560_65 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 72#64])) crepBody560_64

def crepBody560_66 : CrepProg (BitVec 64) :=
.seq crepBody560_39 crepBody560_65

def crepBody560_67 : CrepProg (BitVec 64) :=
.seq crepBody560_29 crepBody560_66

def crepBody560_68 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody560_67

def crepBody560_69 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody560_68

def crepBody560_70 : CrepProg (BitVec 64) :=
.seq crepBody560_28 crepBody560_69

def crepBody560_71 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody560_70

def crepBody560_72 : CrepProg (BitVec 64) :=
.seq crepBody560_27 crepBody560_71

def crepBody560_73 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody560_72

def crepBody560_74 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody560_73

def crepBody560_75 : CrepProg (BitVec 64) :=
.seq crepBody560_26 crepBody560_74

def crepBody560_76 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.var 33) crepBody560_75

def crepBody560_77 : CrepProg (BitVec 64) :=
.seq crepBody560_20 crepBody560_76

def crepBody560_78 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody560_77

def crepBody560_79 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody560_78

def crepBody560_80 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody560_79

def crepBody560_81 : CrepProg (BitVec 64) :=
.seq crepBody560_19 crepBody560_80

def crepBody560_82 : CrepProg (BitVec 64) :=
.seq crepBody560_13 crepBody560_81

def crepBody560_83 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody560_82

def crepBody560_84 : CrepProg (BitVec 64) :=
.seq crepBody560_12 crepBody560_83

def crepBody560_85 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 100#64) crepBody560_84

def crepBody560_86 : CrepProg (BitVec 64) :=
.seq crepBody560_8 crepBody560_85

def crepBody560_87 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody560_86

def crepBody560_88 : CrepProg (BitVec 64) :=
.seq crepBody560_7 crepBody560_87

def crepBody560_89 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody560_88

def crepBody560_90 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody560_89

def crepBody560_91 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody560_90

def crepBody560_92 : CrepProg (BitVec 64) :=
.seq crepBody560_6 crepBody560_91

def crepBody560_93 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody560_92

def crepBody560_94 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody560_93

def crepBody560_95 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody560_94

def crepBody560_96 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody560_95

def crepBody560_97 : CrepProg (BitVec 64) :=
.seq crepBody560_5 crepBody560_96

def crepBody560_98 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody560_97

def crepBody560_99 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody560_98

def crepBody560_100 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody560_99

def crepBody560_101 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody560_100

def crepBody560_102 : CrepProg (BitVec 64) :=
.seq crepBody560_4 crepBody560_101

def crepBody560_103 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody560_102

def crepBody560_104 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody560_103

def crepBody560_105 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody560_104

def crepBody560_106 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody560_105

def crepBody560_107 : CrepProg (BitVec 64) :=
.seq crepBody560_3 crepBody560_106

def crepBody560_108 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody560_107

def crepBody560_109 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody560_108

def crepBody560_110 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody560_109

def crepBody560_111 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody560_110

def crepBody560_112 : CrepProg (BitVec 64) :=
.seq crepBody560_2 crepBody560_111

def crepBody560_113 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody560_112

def crepBody560_114 : CrepProg (BitVec 64) :=
.seq crepBody560_1 crepBody560_113

def crepBody560_115 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody560_114

def crepBody560_116 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody560_115

def crepBody560_117 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody560_116

def crepBody560_118 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody560_117

def crepBody560_119 : CrepProg (BitVec 64) :=
.seq crepBody560_0 crepBody560_118

def crepBody560_120 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody560_119

def crepBody560_121 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody560_120

def crepBody560_122 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody560_121

def crepBody560_123 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody560_122

def data560 : CrepProg (BitVec 64) := crepBody560_123
def output560 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 115#8, 116#8, 97#8, 116#8, 105#8, 99#8, 99#8, 97#8, 108#8, 108#8], [], crepProgToHOL data560)
end InitECandidate.Proofs.FrontendStages.Crep
