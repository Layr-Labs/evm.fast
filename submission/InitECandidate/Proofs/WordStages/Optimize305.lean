import InitECandidate.Proofs.WordStages.Optimize289
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source305
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody305_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (0, 0), (8, 2)]

def optimizedBody305_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody305_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody305_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody305_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551488#64))

def optimizedBody305_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody305_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 2), (48, 8)]

def optimizedBody305_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (4, 46), (6, 48)]

def optimizedBody305_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (6, 48)]

def optimizedBody305_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody305_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_8 optimizedBody305_9

def optimizedBody305_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody305_7, 305, 2)) (some 79) ([2, 4, 6]) (some (2, optimizedBody305_10, 305, 3))

def optimizedBody305_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody305_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody305_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody305_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody305_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody305_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_15 optimizedBody305_16

def optimizedBody305_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_14 optimizedBody305_17

def optimizedBody305_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_18

def optimizedBody305_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody305_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody305_19 optimizedBody305_20

def optimizedBody305_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 8), (48, 4), (46, 6)]

def optimizedBody305_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46)]

def optimizedBody305_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody305_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_24 optimizedBody305_9

def optimizedBody305_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody305_23, 305, 4)) (some 294) ([2, 4]) (some (2, optimizedBody305_25, 305, 5))

def optimizedBody305_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody305_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 4), (52, 6)]

def optimizedBody305_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46), (4, 50), (6, 52)]

def optimizedBody305_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (4, 50), (6, 52)]

def optimizedBody305_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_30 optimizedBody305_9

def optimizedBody305_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody305_29, 305, 6)) (some 286) ([2]) (some (2, optimizedBody305_31, 305, 7))

def optimizedBody305_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 0), (4, 4), (6, 6)]

def optimizedBody305_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_33

def optimizedBody305_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_32 optimizedBody305_34

def optimizedBody305_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_28 optimizedBody305_35

def optimizedBody305_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_27 optimizedBody305_36

def optimizedBody305_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_37

def optimizedBody305_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 46), (4, 4), (6, 6)]

def optimizedBody305_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_39

def optimizedBody305_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody305_38 optimizedBody305_40

def optimizedBody305_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (48, 48)]

def optimizedBody305_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48)]

def optimizedBody305_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody305_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_44 optimizedBody305_9

def optimizedBody305_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody305_43, 305, 8)) (some 304) ([2, 4, 6]) (some (2, optimizedBody305_45, 305, 9))

def optimizedBody305_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody305_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody305_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody305_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 48)]

def optimizedBody305_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody305_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody305_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_52 optimizedBody305_9

def optimizedBody305_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody305_51, 305, 10)) (some 68) ([2]) (some (2, optimizedBody305_53, 305, 11))

def optimizedBody305_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody305_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2)]

def optimizedBody305_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (6, 48)]

def optimizedBody305_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody305_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_58 optimizedBody305_9

def optimizedBody305_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody305_57, 305, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody305_59, 305, 13))

def optimizedBody305_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody305_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody305_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody305_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody305_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_63 optimizedBody305_64

def optimizedBody305_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_62 optimizedBody305_65

def optimizedBody305_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_61 optimizedBody305_66

def optimizedBody305_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_47 optimizedBody305_67

def optimizedBody305_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_68

def optimizedBody305_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_60 optimizedBody305_69

def optimizedBody305_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_56 optimizedBody305_70

def optimizedBody305_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_5 optimizedBody305_71

def optimizedBody305_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_55 optimizedBody305_72

def optimizedBody305_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_73

def optimizedBody305_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_54 optimizedBody305_74

def optimizedBody305_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_50 optimizedBody305_75

def optimizedBody305_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_49 optimizedBody305_76

def optimizedBody305_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_77

def optimizedBody305_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody305_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_79

def optimizedBody305_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody305_78 optimizedBody305_80

def optimizedBody305_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody305_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody305_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_82 optimizedBody305_83

def optimizedBody305_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_84

def optimizedBody305_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_81 optimizedBody305_85

def optimizedBody305_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_48 optimizedBody305_86

def optimizedBody305_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_47 optimizedBody305_87

def optimizedBody305_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_88

def optimizedBody305_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_46 optimizedBody305_89

def optimizedBody305_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_42 optimizedBody305_90

def optimizedBody305_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_91

def optimizedBody305_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_41 optimizedBody305_92

def optimizedBody305_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_14 optimizedBody305_93

def optimizedBody305_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_13 optimizedBody305_94

def optimizedBody305_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_95

def optimizedBody305_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_26 optimizedBody305_96

def optimizedBody305_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_22 optimizedBody305_97

def optimizedBody305_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_98

def optimizedBody305_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_99

def optimizedBody305_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_21 optimizedBody305_100

def optimizedBody305_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_14 optimizedBody305_101

def optimizedBody305_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_13 optimizedBody305_102

def optimizedBody305_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_12 optimizedBody305_103

def optimizedBody305_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_11 optimizedBody305_104

def optimizedBody305_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_6 optimizedBody305_105

def optimizedBody305_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_5 optimizedBody305_106

def optimizedBody305_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_4 optimizedBody305_107

def optimizedBody305_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_3 optimizedBody305_108

def optimizedBody305_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_2 optimizedBody305_109

def optimizedBody305_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_1 optimizedBody305_110

def optimizedBody305_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody305_0 optimizedBody305_111

def oracle305 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 24)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
              4
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
def optimized305 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(305, 3, optimizedBody305_112)
theorem optimize305_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source305, oracle305) = optimized305 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize305_eq
end InitECandidate.Proofs.WordStages
