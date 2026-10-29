import InitECandidate.Proofs.FrontendStages.Crep.Translate543
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody559_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody559_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody559_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "to_address_masked"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody559_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "stack_pop" []

def crepBody559_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "stack_pop" []

def crepBody559_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "stack_pop" []

def crepBody559_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23, 24, 25], none)) "stack_pop" []

def crepBody559_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27, 28], none)) "extend_memory_cost2"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody559_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "is_warm_address" [Flapjack.CrepExp.var 9]

def crepBody559_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 30 (Flapjack.CrepExp.const 3000#64)

def crepBody559_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody559_11 : CrepProg (BitVec 64) :=
.seq crepBody559_9 crepBody559_10

def crepBody559_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.const 0#64)) crepBody559_11 crepBody559_10

def crepBody559_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "add_sat" [Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 27]

def crepBody559_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "charge_gas" [Flapjack.CrepExp.var 31]

def crepBody559_15 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody559_14

def crepBody559_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "warm_address" [Flapjack.CrepExp.var 9]

def crepBody559_17 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody559_16

def crepBody559_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.const 0#64)) crepBody559_17 crepBody559_10

def crepBody559_19 : CrepProg (BitVec 64) :=
.seq crepBody559_15 crepBody559_18

def crepBody559_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33, 34], none)) "calculate_delegation_cost" [Flapjack.CrepExp.var 9]

def crepBody559_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36], none)) "charge_gas" [Flapjack.CrepExp.var 34]

def crepBody559_22 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody559_21

def crepBody559_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36], none)) "warm_address" [Flapjack.CrepExp.var 35]

def crepBody559_24 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody559_23

def crepBody559_25 : CrepProg (BitVec 64) :=
.seq crepBody559_22 crepBody559_24

def crepBody559_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 32) (Flapjack.CrepExp.const 0#64)) crepBody559_25 crepBody559_10

def crepBody559_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36, 37], none)) "ext_code_of" [Flapjack.CrepExp.var 35]

def crepBody559_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody559_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40], none)) "calculate_message_call_gas"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 38,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody559_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "charge_gas" [Flapjack.CrepExp.var 39]

def crepBody559_31 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody559_30

def crepBody559_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 41) (Flapjack.CrepExp.var 42)

def crepBody559_33 : CrepProg (BitVec 64) :=
.seq crepBody559_32 crepBody559_10

def crepBody559_34 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.var 40]) crepBody559_33

def crepBody559_35 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 184#64]) crepBody559_34

def crepBody559_36 : CrepProg (BitVec 64) :=
.seq crepBody559_31 crepBody559_35

def crepBody559_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "extend_memory" [Flapjack.CrepExp.var 28]

def crepBody559_38 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody559_37

def crepBody559_39 : CrepProg (BitVec 64) :=
.seq crepBody559_36 crepBody559_38

def crepBody559_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 42) (Flapjack.CrepExp.var 43)

def crepBody559_41 : CrepProg (BitVec 64) :=
.seq crepBody559_40 crepBody559_10

def crepBody559_42 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody559_41

def crepBody559_43 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody559_42

def crepBody559_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([42], none)) "sat_word"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody559_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43], none)) "sat_word"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody559_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([44], none)) "sat_word"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody559_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([45], none)) "sat_word"
  [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody559_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([46], none)) "generic_call"
  [Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 35, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 42,
    Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 36,
    Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 0#64]

def crepBody559_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([47], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody559_50 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody559_49

def crepBody559_51 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 46) (Flapjack.CrepExp.const 0#64)) crepBody559_50 crepBody559_10

def crepBody559_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody559_53 : CrepProg (BitVec 64) :=
.seq crepBody559_51 crepBody559_52

def crepBody559_54 : CrepProg (BitVec 64) :=
.seq crepBody559_48 crepBody559_53

def crepBody559_55 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody559_54

def crepBody559_56 : CrepProg (BitVec 64) :=
.seq crepBody559_47 crepBody559_55

def crepBody559_57 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody559_56

def crepBody559_58 : CrepProg (BitVec 64) :=
.seq crepBody559_46 crepBody559_57

def crepBody559_59 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody559_58

def crepBody559_60 : CrepProg (BitVec 64) :=
.seq crepBody559_45 crepBody559_59

def crepBody559_61 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody559_60

def crepBody559_62 : CrepProg (BitVec 64) :=
.seq crepBody559_44 crepBody559_61

def crepBody559_63 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody559_62

def crepBody559_64 : CrepProg (BitVec 64) :=
.seq crepBody559_43 crepBody559_63

def crepBody559_65 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 72#64])) crepBody559_64

def crepBody559_66 : CrepProg (BitVec 64) :=
.seq crepBody559_39 crepBody559_65

def crepBody559_67 : CrepProg (BitVec 64) :=
.seq crepBody559_29 crepBody559_66

def crepBody559_68 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody559_67

def crepBody559_69 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody559_68

def crepBody559_70 : CrepProg (BitVec 64) :=
.seq crepBody559_28 crepBody559_69

def crepBody559_71 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody559_70

def crepBody559_72 : CrepProg (BitVec 64) :=
.seq crepBody559_27 crepBody559_71

def crepBody559_73 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody559_72

def crepBody559_74 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody559_73

def crepBody559_75 : CrepProg (BitVec 64) :=
.seq crepBody559_26 crepBody559_74

def crepBody559_76 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.var 33) crepBody559_75

def crepBody559_77 : CrepProg (BitVec 64) :=
.seq crepBody559_20 crepBody559_76

def crepBody559_78 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody559_77

def crepBody559_79 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody559_78

def crepBody559_80 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody559_79

def crepBody559_81 : CrepProg (BitVec 64) :=
.seq crepBody559_19 crepBody559_80

def crepBody559_82 : CrepProg (BitVec 64) :=
.seq crepBody559_13 crepBody559_81

def crepBody559_83 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody559_82

def crepBody559_84 : CrepProg (BitVec 64) :=
.seq crepBody559_12 crepBody559_83

def crepBody559_85 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 100#64) crepBody559_84

def crepBody559_86 : CrepProg (BitVec 64) :=
.seq crepBody559_8 crepBody559_85

def crepBody559_87 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody559_86

def crepBody559_88 : CrepProg (BitVec 64) :=
.seq crepBody559_7 crepBody559_87

def crepBody559_89 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody559_88

def crepBody559_90 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody559_89

def crepBody559_91 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody559_90

def crepBody559_92 : CrepProg (BitVec 64) :=
.seq crepBody559_6 crepBody559_91

def crepBody559_93 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody559_92

def crepBody559_94 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody559_93

def crepBody559_95 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody559_94

def crepBody559_96 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody559_95

def crepBody559_97 : CrepProg (BitVec 64) :=
.seq crepBody559_5 crepBody559_96

def crepBody559_98 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody559_97

def crepBody559_99 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody559_98

def crepBody559_100 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody559_99

def crepBody559_101 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody559_100

def crepBody559_102 : CrepProg (BitVec 64) :=
.seq crepBody559_4 crepBody559_101

def crepBody559_103 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody559_102

def crepBody559_104 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody559_103

def crepBody559_105 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody559_104

def crepBody559_106 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody559_105

def crepBody559_107 : CrepProg (BitVec 64) :=
.seq crepBody559_3 crepBody559_106

def crepBody559_108 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody559_107

def crepBody559_109 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody559_108

def crepBody559_110 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody559_109

def crepBody559_111 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody559_110

def crepBody559_112 : CrepProg (BitVec 64) :=
.seq crepBody559_2 crepBody559_111

def crepBody559_113 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody559_112

def crepBody559_114 : CrepProg (BitVec 64) :=
.seq crepBody559_1 crepBody559_113

def crepBody559_115 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody559_114

def crepBody559_116 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody559_115

def crepBody559_117 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody559_116

def crepBody559_118 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody559_117

def crepBody559_119 : CrepProg (BitVec 64) :=
.seq crepBody559_0 crepBody559_118

def crepBody559_120 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody559_119

def crepBody559_121 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody559_120

def crepBody559_122 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody559_121

def crepBody559_123 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody559_122

def data559 : CrepProg (BitVec 64) := crepBody559_123
def output559 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8, 101#8, 99#8, 97#8, 108#8, 108#8], [], crepProgToHOL data559)
end InitECandidate.Proofs.FrontendStages.Crep
