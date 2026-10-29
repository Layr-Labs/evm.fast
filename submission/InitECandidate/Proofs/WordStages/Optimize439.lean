import InitECandidate.Proofs.WordStages.Optimize423
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source439
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody439_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody439_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody439_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody439_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody439_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody439_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody439_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 44), (46, 46)]

def optimizedBody439_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (46, 46)]

def optimizedBody439_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody439_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_7 optimizedBody439_8

def optimizedBody439_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_6, 439, 2)) (some 186) ([2, 4]) (some (2, optimizedBody439_9, 439, 3))

def optimizedBody439_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody439_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody439_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody439_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody439_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody439_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_14 optimizedBody439_15

def optimizedBody439_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_16

def optimizedBody439_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody439_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody439_17 optimizedBody439_18

def optimizedBody439_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody439_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (46, 46)]

def optimizedBody439_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody439_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody439_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_23 optimizedBody439_8

def optimizedBody439_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_22, 439, 4)) (some 68) ([2]) (some (2, optimizedBody439_24, 439, 5))

def optimizedBody439_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody439_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody439_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody439_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody439_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody439_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_30 optimizedBody439_8

def optimizedBody439_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_29, 439, 6)) (some 182) ([2, 4]) (some (2, optimizedBody439_31, 439, 7))

def optimizedBody439_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody439_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody439_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_29, 439, 8)) (some 182) ([2, 4]) (some (2, optimizedBody439_31, 439, 9))

def optimizedBody439_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody439_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody439_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody439_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody439_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_29, 439, 10)) (some 435) ([2, 4]) (some (2, optimizedBody439_31, 439, 11))

def optimizedBody439_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody439_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody439_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_29, 439, 12)) (some 435) ([2, 4]) (some (2, optimizedBody439_31, 439, 13))

def optimizedBody439_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody439_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody439_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody439_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody439_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody439_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_48 optimizedBody439_8

def optimizedBody439_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_47, 439, 14)) (some 435) ([2, 4]) (some (2, optimizedBody439_49, 439, 15))

def optimizedBody439_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody439_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody439_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody439_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody439_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody439_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody439_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody439_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551400#64))

def optimizedBody439_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody439_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody439_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody439_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_61 optimizedBody439_8

def optimizedBody439_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody439_60, 439, 16)) (some 192) ([2, 4, 6]) (some (2, optimizedBody439_62, 439, 17))

def optimizedBody439_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody439_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_14 optimizedBody439_64

def optimizedBody439_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_65

def optimizedBody439_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_63 optimizedBody439_66

def optimizedBody439_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_59 optimizedBody439_67

def optimizedBody439_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_58 optimizedBody439_68

def optimizedBody439_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_57 optimizedBody439_69

def optimizedBody439_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_56 optimizedBody439_70

def optimizedBody439_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_55 optimizedBody439_71

def optimizedBody439_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_54 optimizedBody439_72

def optimizedBody439_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_53 optimizedBody439_73

def optimizedBody439_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_52 optimizedBody439_74

def optimizedBody439_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_51 optimizedBody439_75

def optimizedBody439_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_76

def optimizedBody439_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_50 optimizedBody439_77

def optimizedBody439_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_28 optimizedBody439_78

def optimizedBody439_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_46 optimizedBody439_79

def optimizedBody439_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_45 optimizedBody439_80

def optimizedBody439_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_38 optimizedBody439_81

def optimizedBody439_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_37 optimizedBody439_82

def optimizedBody439_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_44 optimizedBody439_83

def optimizedBody439_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_12 optimizedBody439_84

def optimizedBody439_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_85

def optimizedBody439_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_43 optimizedBody439_86

def optimizedBody439_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_28 optimizedBody439_87

def optimizedBody439_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_42 optimizedBody439_88

def optimizedBody439_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_39 optimizedBody439_89

def optimizedBody439_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_38 optimizedBody439_90

def optimizedBody439_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_37 optimizedBody439_91

def optimizedBody439_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_41 optimizedBody439_92

def optimizedBody439_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_12 optimizedBody439_93

def optimizedBody439_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_94

def optimizedBody439_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_40 optimizedBody439_95

def optimizedBody439_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_28 optimizedBody439_96

def optimizedBody439_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_20 optimizedBody439_97

def optimizedBody439_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_39 optimizedBody439_98

def optimizedBody439_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_38 optimizedBody439_99

def optimizedBody439_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_37 optimizedBody439_100

def optimizedBody439_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_36 optimizedBody439_101

def optimizedBody439_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_12 optimizedBody439_102

def optimizedBody439_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_103

def optimizedBody439_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_35 optimizedBody439_104

def optimizedBody439_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_28 optimizedBody439_105

def optimizedBody439_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_27 optimizedBody439_106

def optimizedBody439_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_26 optimizedBody439_107

def optimizedBody439_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_34 optimizedBody439_108

def optimizedBody439_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_33 optimizedBody439_109

def optimizedBody439_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_110

def optimizedBody439_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_32 optimizedBody439_111

def optimizedBody439_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_28 optimizedBody439_112

def optimizedBody439_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_27 optimizedBody439_113

def optimizedBody439_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_26 optimizedBody439_114

def optimizedBody439_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_115

def optimizedBody439_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_25 optimizedBody439_116

def optimizedBody439_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_21 optimizedBody439_117

def optimizedBody439_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_20 optimizedBody439_118

def optimizedBody439_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_119

def optimizedBody439_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_120

def optimizedBody439_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_19 optimizedBody439_121

def optimizedBody439_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_13 optimizedBody439_122

def optimizedBody439_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_12 optimizedBody439_123

def optimizedBody439_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_11 optimizedBody439_124

def optimizedBody439_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_10 optimizedBody439_125

def optimizedBody439_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_5 optimizedBody439_126

def optimizedBody439_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_4 optimizedBody439_127

def optimizedBody439_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_3 optimizedBody439_128

def optimizedBody439_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_2 optimizedBody439_129

def optimizedBody439_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_1 optimizedBody439_130

def optimizedBody439_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody439_0 optimizedBody439_131

def oracle439 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            2
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 23
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 23
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized439 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(439, 2, optimizedBody439_132)
theorem optimize439_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source439, oracle439) = optimized439 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize439_eq
end InitECandidate.Proofs.WordStages
