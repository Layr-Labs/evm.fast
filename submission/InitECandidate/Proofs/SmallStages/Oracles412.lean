import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles412
def optimizedBody412_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody412_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody412_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody412_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody412_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_2 optimizedBody412_3

def optimizedBody412_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_1, 412, 2)) (some 394) ([2, 4]) (some (2, optimizedBody412_4, 412, 3))

def optimizedBody412_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody412_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody412_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody412_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody412_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody412_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody412_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody412_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody412_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody412_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody412_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody412_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_16 optimizedBody412_3

def optimizedBody412_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_15, 412, 4)) (some 190) ([2, 4, 6]) (some (2, optimizedBody412_17, 412, 5))

def optimizedBody412_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody412_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 4)]

def optimizedBody412_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (10, 44), (12, 46), (14, 48)]

def optimizedBody412_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (12, 46), (14, 48)]

def optimizedBody412_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_22 optimizedBody412_3

def optimizedBody412_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_21, 412, 6)) (some 411) ([2, 4, 6]) (some (2, optimizedBody412_23, 412, 7))

def optimizedBody412_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody412_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody412_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody412_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody412_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody412_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody412_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody412_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody412_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_31 optimizedBody412_32

def optimizedBody412_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_30 optimizedBody412_33

def optimizedBody412_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_34

def optimizedBody412_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_29 optimizedBody412_35

def optimizedBody412_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_36

def optimizedBody412_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_28 optimizedBody412_37

def optimizedBody412_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_38

def optimizedBody412_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_27 optimizedBody412_39

def optimizedBody412_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_40

def optimizedBody412_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_41

def optimizedBody412_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody412_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody412_42 optimizedBody412_43

def optimizedBody412_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody412_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 14), (6, 12), (44, 10), (46, 12), (48, 14)]

def optimizedBody412_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (12, 44), (46, 46), (10, 48)]

def optimizedBody412_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody412_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_48 optimizedBody412_3

def optimizedBody412_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_47, 412, 8)) (some 411) ([2, 4, 6]) (some (2, optimizedBody412_49, 412, 9))

def optimizedBody412_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody412_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_31 optimizedBody412_51

def optimizedBody412_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_30 optimizedBody412_52

def optimizedBody412_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_53

def optimizedBody412_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_29 optimizedBody412_54

def optimizedBody412_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_55

def optimizedBody412_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_28 optimizedBody412_56

def optimizedBody412_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_57

def optimizedBody412_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_27 optimizedBody412_58

def optimizedBody412_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_59

def optimizedBody412_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_60

def optimizedBody412_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody412_61 optimizedBody412_43

def optimizedBody412_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def optimizedBody412_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody412_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody412_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_65 optimizedBody412_3

def optimizedBody412_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_64, 412, 10)) (some 398) ([2]) (some (2, optimizedBody412_66, 412, 11))

def optimizedBody412_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody412_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (6, 6), (10, 2), (0, 44)]

def optimizedBody412_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody412_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_70 optimizedBody412_3

def optimizedBody412_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody412_69, 412, 12)) (some 403) ([2, 4]) (some (2, optimizedBody412_71, 412, 13))

def optimizedBody412_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody412_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody412_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_73 optimizedBody412_74

def optimizedBody412_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_75

def optimizedBody412_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_72 optimizedBody412_76

def optimizedBody412_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_68 optimizedBody412_77

def optimizedBody412_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_78

def optimizedBody412_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_67 optimizedBody412_79

def optimizedBody412_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_63 optimizedBody412_80

def optimizedBody412_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_81

def optimizedBody412_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_82

def optimizedBody412_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_62 optimizedBody412_83

def optimizedBody412_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_26 optimizedBody412_84

def optimizedBody412_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_25 optimizedBody412_85

def optimizedBody412_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_86

def optimizedBody412_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_50 optimizedBody412_87

def optimizedBody412_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_46 optimizedBody412_88

def optimizedBody412_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_19 optimizedBody412_89

def optimizedBody412_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_45 optimizedBody412_90

def optimizedBody412_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_9 optimizedBody412_91

def optimizedBody412_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_8 optimizedBody412_92

def optimizedBody412_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_7 optimizedBody412_93

def optimizedBody412_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_94

def optimizedBody412_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_95

def optimizedBody412_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_44 optimizedBody412_96

def optimizedBody412_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_26 optimizedBody412_97

def optimizedBody412_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_25 optimizedBody412_98

def optimizedBody412_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_99

def optimizedBody412_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_24 optimizedBody412_100

def optimizedBody412_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_20 optimizedBody412_101

def optimizedBody412_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_19 optimizedBody412_102

def optimizedBody412_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_10 optimizedBody412_103

def optimizedBody412_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_9 optimizedBody412_104

def optimizedBody412_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_8 optimizedBody412_105

def optimizedBody412_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_7 optimizedBody412_106

def optimizedBody412_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_107

def optimizedBody412_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_18 optimizedBody412_108

def optimizedBody412_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_14 optimizedBody412_109

def optimizedBody412_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_13 optimizedBody412_110

def optimizedBody412_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_12 optimizedBody412_111

def optimizedBody412_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_11 optimizedBody412_112

def optimizedBody412_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_10 optimizedBody412_113

def optimizedBody412_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_9 optimizedBody412_114

def optimizedBody412_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_8 optimizedBody412_115

def optimizedBody412_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_7 optimizedBody412_116

def optimizedBody412_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_6 optimizedBody412_117

def optimizedBody412_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_5 optimizedBody412_118

def optimizedBody412_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody412_0 optimizedBody412_119

def oracle412 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln) 23
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
def optimized412 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(412, 3, optimizedBody412_120)
end InitECandidate.Proofs.SmallStages.Oracles412
