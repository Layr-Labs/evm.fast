import InitECandidate.Proofs.WordStages.Optimize271
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source287
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody287_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody287_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody287_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody287_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody287_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody287_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody287_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_4 optimizedBody287_5

def optimizedBody287_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_3, 287, 2)) (some 68) ([2]) (some (2, optimizedBody287_6, 287, 3))

def optimizedBody287_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody287_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody287_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody287_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody287_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551488#64)))

def optimizedBody287_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody287_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody287_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_3, 287, 4)) (some 68) ([2]) (some (2, optimizedBody287_6, 287, 5))

def optimizedBody287_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551480#64)))

def optimizedBody287_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody287_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_3, 287, 6)) (some 68) ([2]) (some (2, optimizedBody287_6, 287, 7))

def optimizedBody287_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551472#64)))

def optimizedBody287_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody287_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_3, 287, 8)) (some 68) ([2]) (some (2, optimizedBody287_6, 287, 9))

def optimizedBody287_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551464#64)))

def optimizedBody287_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody287_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody287_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_24, 287, 10)) (some 68) ([2]) (some (2, optimizedBody287_6, 287, 11))

def optimizedBody287_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody287_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody287_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody287_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551456#64)))

def optimizedBody287_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody287_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody287_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551464#64))

def optimizedBody287_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody287_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody287_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551464#64))

def optimizedBody287_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody287_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody287_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody287_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody287_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_39, 287, 12)) (some 158) ([2, 4, 6]) (some (2, optimizedBody287_6, 287, 13))

def optimizedBody287_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody287_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody287_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody287_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody287_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_44 optimizedBody287_5

def optimizedBody287_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_43, 287, 14)) (some 158) ([2, 4, 6]) (some (2, optimizedBody287_45, 287, 15))

def optimizedBody287_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody287_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody287_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody287_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_48 optimizedBody287_49

def optimizedBody287_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_47 optimizedBody287_50

def optimizedBody287_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_51

def optimizedBody287_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_46 optimizedBody287_52

def optimizedBody287_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_38 optimizedBody287_53

def optimizedBody287_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_42 optimizedBody287_54

def optimizedBody287_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_41 optimizedBody287_55

def optimizedBody287_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_0 optimizedBody287_56

def optimizedBody287_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_35 optimizedBody287_57

def optimizedBody287_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_28 optimizedBody287_58

def optimizedBody287_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_27 optimizedBody287_59

def optimizedBody287_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_26 optimizedBody287_60

def optimizedBody287_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_61

def optimizedBody287_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_40 optimizedBody287_62

def optimizedBody287_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_38 optimizedBody287_63

def optimizedBody287_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_37 optimizedBody287_64

def optimizedBody287_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_36 optimizedBody287_65

def optimizedBody287_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_0 optimizedBody287_66

def optimizedBody287_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_35 optimizedBody287_67

def optimizedBody287_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_0 optimizedBody287_68

def optimizedBody287_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_34 optimizedBody287_69

def optimizedBody287_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_33 optimizedBody287_70

def optimizedBody287_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_32 optimizedBody287_71

def optimizedBody287_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_0 optimizedBody287_72

def optimizedBody287_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_31 optimizedBody287_73

def optimizedBody287_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_30 optimizedBody287_74

def optimizedBody287_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_29 optimizedBody287_75

def optimizedBody287_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_28 optimizedBody287_76

def optimizedBody287_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_27 optimizedBody287_77

def optimizedBody287_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_26 optimizedBody287_78

def optimizedBody287_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_79

def optimizedBody287_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_80

def optimizedBody287_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_4 optimizedBody287_81

def optimizedBody287_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_82

def optimizedBody287_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_14 optimizedBody287_83

def optimizedBody287_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_13 optimizedBody287_84

def optimizedBody287_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_22 optimizedBody287_85

def optimizedBody287_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_11 optimizedBody287_86

def optimizedBody287_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_10 optimizedBody287_87

def optimizedBody287_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_9 optimizedBody287_88

def optimizedBody287_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_89

def optimizedBody287_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_21 optimizedBody287_90

def optimizedBody287_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_4 optimizedBody287_91

def optimizedBody287_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_20 optimizedBody287_92

def optimizedBody287_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_14 optimizedBody287_93

def optimizedBody287_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_13 optimizedBody287_94

def optimizedBody287_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_19 optimizedBody287_95

def optimizedBody287_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_11 optimizedBody287_96

def optimizedBody287_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_10 optimizedBody287_97

def optimizedBody287_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_9 optimizedBody287_98

def optimizedBody287_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_99

def optimizedBody287_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_18 optimizedBody287_100

def optimizedBody287_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_4 optimizedBody287_101

def optimizedBody287_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_17 optimizedBody287_102

def optimizedBody287_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_14 optimizedBody287_103

def optimizedBody287_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_13 optimizedBody287_104

def optimizedBody287_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_16 optimizedBody287_105

def optimizedBody287_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_11 optimizedBody287_106

def optimizedBody287_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_10 optimizedBody287_107

def optimizedBody287_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_9 optimizedBody287_108

def optimizedBody287_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_109

def optimizedBody287_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_15 optimizedBody287_110

def optimizedBody287_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_4 optimizedBody287_111

def optimizedBody287_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_1 optimizedBody287_112

def optimizedBody287_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_14 optimizedBody287_113

def optimizedBody287_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_13 optimizedBody287_114

def optimizedBody287_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_12 optimizedBody287_115

def optimizedBody287_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_11 optimizedBody287_116

def optimizedBody287_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_10 optimizedBody287_117

def optimizedBody287_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_9 optimizedBody287_118

def optimizedBody287_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_119

def optimizedBody287_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_7 optimizedBody287_120

def optimizedBody287_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_2 optimizedBody287_121

def optimizedBody287_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_1 optimizedBody287_122

def optimizedBody287_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_0 optimizedBody287_123

def oracle287 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 1))))
            1
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
            22 Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))))
def optimized287 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(287, 1, optimizedBody287_124)
theorem optimize287_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source287, oracle287) = optimized287 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize287_eq
end InitECandidate.Proofs.WordStages
