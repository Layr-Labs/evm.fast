import InitECandidate.Proofs.WordStages.Optimize394
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source410
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody410_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody410_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody410_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody410_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody410_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_2 optimizedBody410_3

def optimizedBody410_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody410_1, 410, 2)) (some 392) ([2, 4]) (some (2, optimizedBody410_4, 410, 3))

def optimizedBody410_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody410_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody410_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody410_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody410_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody410_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody410_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody410_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody410_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody410_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody410_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody410_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_16 optimizedBody410_3

def optimizedBody410_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody410_15, 410, 4)) (some 192) ([2, 4, 6]) (some (2, optimizedBody410_17, 410, 5))

def optimizedBody410_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody410_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 4)]

def optimizedBody410_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (10, 44), (12, 46), (14, 48)]

def optimizedBody410_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (12, 46), (14, 48)]

def optimizedBody410_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_22 optimizedBody410_3

def optimizedBody410_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody410_21, 410, 6)) (some 409) ([2, 4, 6]) (some (2, optimizedBody410_23, 410, 7))

def optimizedBody410_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody410_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody410_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody410_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody410_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody410_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody410_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody410_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody410_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_31 optimizedBody410_32

def optimizedBody410_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_30 optimizedBody410_33

def optimizedBody410_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_34

def optimizedBody410_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_29 optimizedBody410_35

def optimizedBody410_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_36

def optimizedBody410_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_28 optimizedBody410_37

def optimizedBody410_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_38

def optimizedBody410_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_27 optimizedBody410_39

def optimizedBody410_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_40

def optimizedBody410_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_41

def optimizedBody410_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody410_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody410_42 optimizedBody410_43

def optimizedBody410_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody410_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 14), (6, 12), (44, 10), (46, 12), (48, 14)]

def optimizedBody410_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (12, 44), (46, 46), (10, 48)]

def optimizedBody410_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody410_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_48 optimizedBody410_3

def optimizedBody410_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody410_47, 410, 8)) (some 409) ([2, 4, 6]) (some (2, optimizedBody410_49, 410, 9))

def optimizedBody410_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody410_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_31 optimizedBody410_51

def optimizedBody410_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_30 optimizedBody410_52

def optimizedBody410_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_53

def optimizedBody410_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_29 optimizedBody410_54

def optimizedBody410_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_55

def optimizedBody410_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_28 optimizedBody410_56

def optimizedBody410_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_57

def optimizedBody410_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_27 optimizedBody410_58

def optimizedBody410_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_59

def optimizedBody410_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_60

def optimizedBody410_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody410_61 optimizedBody410_43

def optimizedBody410_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def optimizedBody410_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody410_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody410_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_65 optimizedBody410_3

def optimizedBody410_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody410_64, 410, 10)) (some 396) ([2]) (some (2, optimizedBody410_66, 410, 11))

def optimizedBody410_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody410_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (6, 6), (10, 2), (0, 44)]

def optimizedBody410_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody410_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_70 optimizedBody410_3

def optimizedBody410_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody410_69, 410, 12)) (some 401) ([2, 4]) (some (2, optimizedBody410_71, 410, 13))

def optimizedBody410_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody410_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody410_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_73 optimizedBody410_74

def optimizedBody410_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_75

def optimizedBody410_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_72 optimizedBody410_76

def optimizedBody410_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_68 optimizedBody410_77

def optimizedBody410_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_78

def optimizedBody410_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_67 optimizedBody410_79

def optimizedBody410_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_63 optimizedBody410_80

def optimizedBody410_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_81

def optimizedBody410_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_82

def optimizedBody410_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_62 optimizedBody410_83

def optimizedBody410_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_26 optimizedBody410_84

def optimizedBody410_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_25 optimizedBody410_85

def optimizedBody410_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_86

def optimizedBody410_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_50 optimizedBody410_87

def optimizedBody410_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_46 optimizedBody410_88

def optimizedBody410_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_19 optimizedBody410_89

def optimizedBody410_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_45 optimizedBody410_90

def optimizedBody410_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_9 optimizedBody410_91

def optimizedBody410_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_8 optimizedBody410_92

def optimizedBody410_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_7 optimizedBody410_93

def optimizedBody410_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_94

def optimizedBody410_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_95

def optimizedBody410_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_44 optimizedBody410_96

def optimizedBody410_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_26 optimizedBody410_97

def optimizedBody410_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_25 optimizedBody410_98

def optimizedBody410_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_99

def optimizedBody410_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_24 optimizedBody410_100

def optimizedBody410_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_20 optimizedBody410_101

def optimizedBody410_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_19 optimizedBody410_102

def optimizedBody410_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_10 optimizedBody410_103

def optimizedBody410_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_9 optimizedBody410_104

def optimizedBody410_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_8 optimizedBody410_105

def optimizedBody410_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_7 optimizedBody410_106

def optimizedBody410_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_107

def optimizedBody410_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_18 optimizedBody410_108

def optimizedBody410_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_14 optimizedBody410_109

def optimizedBody410_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_13 optimizedBody410_110

def optimizedBody410_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_12 optimizedBody410_111

def optimizedBody410_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_11 optimizedBody410_112

def optimizedBody410_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_10 optimizedBody410_113

def optimizedBody410_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_9 optimizedBody410_114

def optimizedBody410_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_8 optimizedBody410_115

def optimizedBody410_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_7 optimizedBody410_116

def optimizedBody410_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_6 optimizedBody410_117

def optimizedBody410_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_5 optimizedBody410_118

def optimizedBody410_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody410_0 optimizedBody410_119

def oracle410 : Option (Spt Nat) :=
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
def optimized410 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(410, 3, optimizedBody410_120)
theorem optimize410_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source410, oracle410) = optimized410 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize410_eq
end InitECandidate.Proofs.WordStages
