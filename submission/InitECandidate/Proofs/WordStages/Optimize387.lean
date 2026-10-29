import InitECandidate.Proofs.WordStages.Optimize371
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source387
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody387_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody387_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 72#64)

def optimizedBody387_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody387_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody387_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody387_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody387_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_4 optimizedBody387_5

def optimizedBody387_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_3, 387, 2)) (some 68) ([2]) (some (2, optimizedBody387_6, 387, 3))

def optimizedBody387_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody387_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody387_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody387_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody387_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551432#64)))

def optimizedBody387_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody387_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody387_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody387_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody387_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody387_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody387_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody387_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody387_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody387_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody387_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 4)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 5))

def optimizedBody387_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody387_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody387_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody387_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody387_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody387_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 6)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 7))

def optimizedBody387_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody387_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 52#64)

def optimizedBody387_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 8)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 9))

def optimizedBody387_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody387_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody387_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 10)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 11))

def optimizedBody387_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody387_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 12)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 13))

def optimizedBody387_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody387_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody387_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 14)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 15))

def optimizedBody387_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody387_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_22, 387, 16)) (some 182) ([2, 4]) (some (2, optimizedBody387_6, 387, 17))

def optimizedBody387_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody387_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44)]

def optimizedBody387_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody387_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_45 optimizedBody387_5

def optimizedBody387_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody387_44, 387, 18)) (some 182) ([2, 4]) (some (2, optimizedBody387_46, 387, 19))

def optimizedBody387_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody387_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody387_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody387_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody387_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody387_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody387_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody387_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_53 optimizedBody387_54

def optimizedBody387_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_50 optimizedBody387_55

def optimizedBody387_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_52 optimizedBody387_56

def optimizedBody387_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_51 optimizedBody387_57

def optimizedBody387_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_50 optimizedBody387_58

def optimizedBody387_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_49 optimizedBody387_59

def optimizedBody387_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_0 optimizedBody387_60

def optimizedBody387_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_14 optimizedBody387_61

def optimizedBody387_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_13 optimizedBody387_62

def optimizedBody387_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_48 optimizedBody387_63

def optimizedBody387_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_15 optimizedBody387_64

def optimizedBody387_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_11 optimizedBody387_65

def optimizedBody387_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_10 optimizedBody387_66

def optimizedBody387_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_9 optimizedBody387_67

def optimizedBody387_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_68

def optimizedBody387_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_47 optimizedBody387_69

def optimizedBody387_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_70

def optimizedBody387_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_31 optimizedBody387_71

def optimizedBody387_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_34 optimizedBody387_72

def optimizedBody387_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_73

def optimizedBody387_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_74

def optimizedBody387_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_43 optimizedBody387_75

def optimizedBody387_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_76

def optimizedBody387_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_77

def optimizedBody387_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_78

def optimizedBody387_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_79

def optimizedBody387_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_80

def optimizedBody387_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_42 optimizedBody387_81

def optimizedBody387_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_82

def optimizedBody387_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_20 optimizedBody387_83

def optimizedBody387_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_34 optimizedBody387_84

def optimizedBody387_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_85

def optimizedBody387_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_86

def optimizedBody387_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_41 optimizedBody387_87

def optimizedBody387_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_88

def optimizedBody387_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_89

def optimizedBody387_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_90

def optimizedBody387_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_91

def optimizedBody387_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_92

def optimizedBody387_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_40 optimizedBody387_93

def optimizedBody387_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_94

def optimizedBody387_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_39 optimizedBody387_95

def optimizedBody387_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_34 optimizedBody387_96

def optimizedBody387_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_97

def optimizedBody387_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_98

def optimizedBody387_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_38 optimizedBody387_99

def optimizedBody387_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_100

def optimizedBody387_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_101

def optimizedBody387_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_102

def optimizedBody387_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_103

def optimizedBody387_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_104

def optimizedBody387_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_37 optimizedBody387_105

def optimizedBody387_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_106

def optimizedBody387_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_31 optimizedBody387_107

def optimizedBody387_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_34 optimizedBody387_108

def optimizedBody387_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_109

def optimizedBody387_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_110

def optimizedBody387_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_36 optimizedBody387_111

def optimizedBody387_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_112

def optimizedBody387_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_113

def optimizedBody387_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_114

def optimizedBody387_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_115

def optimizedBody387_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_116

def optimizedBody387_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_35 optimizedBody387_117

def optimizedBody387_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_118

def optimizedBody387_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_20 optimizedBody387_119

def optimizedBody387_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_34 optimizedBody387_120

def optimizedBody387_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_121

def optimizedBody387_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_122

def optimizedBody387_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_33 optimizedBody387_123

def optimizedBody387_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_124

def optimizedBody387_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_125

def optimizedBody387_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_126

def optimizedBody387_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_127

def optimizedBody387_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_128

def optimizedBody387_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_32 optimizedBody387_129

def optimizedBody387_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_130

def optimizedBody387_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_31 optimizedBody387_131

def optimizedBody387_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_19 optimizedBody387_132

def optimizedBody387_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_133

def optimizedBody387_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_134

def optimizedBody387_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_30 optimizedBody387_135

def optimizedBody387_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_136

def optimizedBody387_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_137

def optimizedBody387_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_138

def optimizedBody387_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_139

def optimizedBody387_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_140

def optimizedBody387_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_29 optimizedBody387_141

def optimizedBody387_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_142

def optimizedBody387_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_20 optimizedBody387_143

def optimizedBody387_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_19 optimizedBody387_144

def optimizedBody387_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_145

def optimizedBody387_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_146

def optimizedBody387_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_28 optimizedBody387_147

def optimizedBody387_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_27 optimizedBody387_148

def optimizedBody387_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_26 optimizedBody387_149

def optimizedBody387_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_25 optimizedBody387_150

def optimizedBody387_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_24 optimizedBody387_151

def optimizedBody387_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_152

def optimizedBody387_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_23 optimizedBody387_153

def optimizedBody387_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_21 optimizedBody387_154

def optimizedBody387_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_20 optimizedBody387_155

def optimizedBody387_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_19 optimizedBody387_156

def optimizedBody387_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_18 optimizedBody387_157

def optimizedBody387_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_17 optimizedBody387_158

def optimizedBody387_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_16 optimizedBody387_159

def optimizedBody387_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_0 optimizedBody387_160

def optimizedBody387_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_15 optimizedBody387_161

def optimizedBody387_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_0 optimizedBody387_162

def optimizedBody387_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_14 optimizedBody387_163

def optimizedBody387_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_13 optimizedBody387_164

def optimizedBody387_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_12 optimizedBody387_165

def optimizedBody387_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_11 optimizedBody387_166

def optimizedBody387_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_10 optimizedBody387_167

def optimizedBody387_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_9 optimizedBody387_168

def optimizedBody387_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_8 optimizedBody387_169

def optimizedBody387_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_7 optimizedBody387_170

def optimizedBody387_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_2 optimizedBody387_171

def optimizedBody387_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_1 optimizedBody387_172

def optimizedBody387_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody387_0 optimizedBody387_173

def oracle387 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))
                1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0)))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                2 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))))
def optimized387 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(387, 1, optimizedBody387_174)
theorem optimize387_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source387, oracle387) = optimized387 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize387_eq
end InitECandidate.Proofs.WordStages
