import InitECandidate.Proofs.WordStages.Optimize590
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source606
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody606_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody606_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1024#64)

def optimizedBody606_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody606_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 128#64))

def optimizedBody606_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody606_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody606_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody606_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody606_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody606_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody606_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody606_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_9 optimizedBody606_10

def optimizedBody606_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_8 optimizedBody606_11

def optimizedBody606_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_7 optimizedBody606_12

def optimizedBody606_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_6 optimizedBody606_13

def optimizedBody606_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_5 optimizedBody606_14

def optimizedBody606_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_15

def optimizedBody606_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody606_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody606_16 optimizedBody606_17

def optimizedBody606_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody606_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody606_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody606_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody606_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody606_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody606_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody606_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (56, 6), (46, 2), (52, 8)]

def optimizedBody606_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (56, 56), (0, 46), (52, 52)]

def optimizedBody606_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (0, 46), (52, 52)]

def optimizedBody606_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_28 optimizedBody606_10

def optimizedBody606_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_27, 606, 2)) (some 596) ([2, 4]) (some (2, optimizedBody606_29, 606, 3))

def optimizedBody606_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody606_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody606_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody606_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (56, 56), (46, 0), (52, 52), (48, 4)]

def optimizedBody606_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (56, 56), (0, 46), (52, 52), (46, 48)]

def optimizedBody606_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (0, 46), (52, 52), (46, 48)]

def optimizedBody606_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_36 optimizedBody606_10

def optimizedBody606_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_35, 606, 4)) (some 390) ([]) (some (2, optimizedBody606_37, 606, 5))

def optimizedBody606_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody606_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (56, 56), (48, 0), (54, 4), (52, 52), (46, 46), (50, 2)]

def optimizedBody606_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46)]

def optimizedBody606_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 56), (50, 48), (0, 54), (52, 52), (54, 46), (56, 50)]

def optimizedBody606_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 (Flapjack.WordStore.temp 0#5)

def optimizedBody606_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody606_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody606_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody606_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 208#64))

def optimizedBody606_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 4), (60, 48), (62, 52), (46, 0)]

def optimizedBody606_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (58, 58), (60, 60), (62, 62), (0, 46)]

def optimizedBody606_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (60, 60), (62, 62), (0, 46)]

def optimizedBody606_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_50 optimizedBody606_10

def optimizedBody606_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_49, 606, 7)) (some 76) ([2]) (some (2, optimizedBody606_51, 606, 8))

def optimizedBody606_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 224#64))

def optimizedBody606_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (60, 60), (62, 62)]

def optimizedBody606_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 58), (6, 60), (8, 62)]

def optimizedBody606_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 58), (6, 60), (8, 62)]

def optimizedBody606_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_56 optimizedBody606_10

def optimizedBody606_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_55, 606, 9)) (some 73) ([2]) (some (2, optimizedBody606_57, 606, 10))

def optimizedBody606_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody606_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody606_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody606_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody606_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody606_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody606_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def optimizedBody606_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_65 optimizedBody606_12

def optimizedBody606_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_44 optimizedBody606_66

def optimizedBody606_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_64 optimizedBody606_67

def optimizedBody606_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_63 optimizedBody606_68

def optimizedBody606_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_62 optimizedBody606_69

def optimizedBody606_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_70

def optimizedBody606_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_71

def optimizedBody606_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_72

def optimizedBody606_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_61 optimizedBody606_73

def optimizedBody606_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_60 optimizedBody606_74

def optimizedBody606_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_59 optimizedBody606_75

def optimizedBody606_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_76

def optimizedBody606_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_77

def optimizedBody606_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_78

def optimizedBody606_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_79

def optimizedBody606_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_58 optimizedBody606_80

def optimizedBody606_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_54 optimizedBody606_81

def optimizedBody606_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_53 optimizedBody606_82

def optimizedBody606_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_31 optimizedBody606_83

def optimizedBody606_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_84

def optimizedBody606_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_52 optimizedBody606_85

def optimizedBody606_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_48 optimizedBody606_86

def optimizedBody606_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_47 optimizedBody606_87

def optimizedBody606_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_46 optimizedBody606_88

def optimizedBody606_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_89

def optimizedBody606_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (0, 0), (54, 54), (56, 56), (44, 44), (46, 4), (48, 48), (52, 52)]

def optimizedBody606_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_91

def optimizedBody606_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody606_90 optimizedBody606_92

def optimizedBody606_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody606_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (52, 54), (0, 56)]

def optimizedBody606_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (52, 54), (0, 56)]

def optimizedBody606_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_96 optimizedBody606_10

def optimizedBody606_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_95, 606, 11)) (some 391) ([2]) (some (2, optimizedBody606_97, 606, 12))

def optimizedBody606_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody606_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody606_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody606_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody606_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody606_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody606_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody606_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 200#64)))

def optimizedBody606_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody606_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody606_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody606_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody606_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_110 optimizedBody606_10

def optimizedBody606_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_109, 606, 13)) (some 474) ([]) (some (2, optimizedBody606_111, 606, 14))

def optimizedBody606_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody606_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (0, 46), (4, 48), (12, 50)]

def optimizedBody606_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (4, 48), (12, 50)]

def optimizedBody606_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_115 optimizedBody606_10

def optimizedBody606_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_114, 606, 15)) (some 604) ([2]) (some (2, optimizedBody606_116, 606, 16))

def optimizedBody606_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody606_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody606_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody606_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody606_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_120 optimizedBody606_121

def optimizedBody606_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_101 optimizedBody606_122

def optimizedBody606_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_100 optimizedBody606_123

def optimizedBody606_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_62 optimizedBody606_124

def optimizedBody606_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_125

def optimizedBody606_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_126

def optimizedBody606_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_127

def optimizedBody606_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_119 optimizedBody606_128

def optimizedBody606_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_118 optimizedBody606_129

def optimizedBody606_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_59 optimizedBody606_130

def optimizedBody606_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_131

def optimizedBody606_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_132

def optimizedBody606_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_133

def optimizedBody606_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_134

def optimizedBody606_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_117 optimizedBody606_135

def optimizedBody606_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_113 optimizedBody606_136

def optimizedBody606_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_137

def optimizedBody606_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_112 optimizedBody606_138

def optimizedBody606_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_108 optimizedBody606_139

def optimizedBody606_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_101 optimizedBody606_140

def optimizedBody606_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_100 optimizedBody606_141

def optimizedBody606_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_107 optimizedBody606_142

def optimizedBody606_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_106 optimizedBody606_143

def optimizedBody606_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_105 optimizedBody606_144

def optimizedBody606_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_104 optimizedBody606_145

def optimizedBody606_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_103 optimizedBody606_146

def optimizedBody606_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_102 optimizedBody606_147

def optimizedBody606_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_101 optimizedBody606_148

def optimizedBody606_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_100 optimizedBody606_149

def optimizedBody606_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_99 optimizedBody606_150

def optimizedBody606_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_44 optimizedBody606_151

def optimizedBody606_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_152

def optimizedBody606_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_98 optimizedBody606_153

def optimizedBody606_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_94 optimizedBody606_154

def optimizedBody606_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_155

def optimizedBody606_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_93 optimizedBody606_156

def optimizedBody606_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_45 optimizedBody606_157

def optimizedBody606_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_44 optimizedBody606_158

def optimizedBody606_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_43 optimizedBody606_159

def optimizedBody606_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_160

def optimizedBody606_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody606_11 optimizedBody606_161

def optimizedBody606_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (46, 8)]

def optimizedBody606_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_163

def optimizedBody606_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_162 optimizedBody606_164

def optimizedBody606_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_42 optimizedBody606_165

def optimizedBody606_167 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_41, 606, 6)) (some 605) ([]) (some (2, optimizedBody606_166, 606, 17))

def optimizedBody606_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_41

def optimizedBody606_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_167 optimizedBody606_168

def optimizedBody606_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_40 optimizedBody606_169

def optimizedBody606_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_39 optimizedBody606_170

def optimizedBody606_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_31 optimizedBody606_171

def optimizedBody606_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_172

def optimizedBody606_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_38 optimizedBody606_173

def optimizedBody606_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_34 optimizedBody606_174

def optimizedBody606_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_175

def optimizedBody606_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4)]

def optimizedBody606_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_177

def optimizedBody606_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody606_176 optimizedBody606_178

def optimizedBody606_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody606_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody606_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody606_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_182 optimizedBody606_10

def optimizedBody606_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_181, 606, 18)) (some 390) ([]) (some (2, optimizedBody606_183, 606, 19))

def optimizedBody606_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody606_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody606_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_180, 606, 20)) (some 599) ([]) (some (2, optimizedBody606_183, 606, 21))

def optimizedBody606_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody606_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody606_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_189 optimizedBody606_10

def optimizedBody606_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody606_188, 606, 22)) (some 602) ([]) (some (2, optimizedBody606_190, 606, 23))

def optimizedBody606_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody606_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_24 optimizedBody606_192

def optimizedBody606_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_193

def optimizedBody606_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_191 optimizedBody606_194

def optimizedBody606_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_180 optimizedBody606_195

def optimizedBody606_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_196

def optimizedBody606_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_187 optimizedBody606_197

def optimizedBody606_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_180 optimizedBody606_198

def optimizedBody606_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_101 optimizedBody606_199

def optimizedBody606_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_100 optimizedBody606_200

def optimizedBody606_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_186 optimizedBody606_201

def optimizedBody606_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_185 optimizedBody606_202

def optimizedBody606_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_203

def optimizedBody606_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_204

def optimizedBody606_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_205

def optimizedBody606_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_206

def optimizedBody606_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_184 optimizedBody606_207

def optimizedBody606_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_180 optimizedBody606_208

def optimizedBody606_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_209

def optimizedBody606_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_179 optimizedBody606_210

def optimizedBody606_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_33 optimizedBody606_211

def optimizedBody606_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_32 optimizedBody606_212

def optimizedBody606_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_31 optimizedBody606_213

def optimizedBody606_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_214

def optimizedBody606_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_30 optimizedBody606_215

def optimizedBody606_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_26 optimizedBody606_216

def optimizedBody606_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_25 optimizedBody606_217

def optimizedBody606_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_24 optimizedBody606_218

def optimizedBody606_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_23 optimizedBody606_219

def optimizedBody606_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_9 optimizedBody606_220

def optimizedBody606_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_22 optimizedBody606_221

def optimizedBody606_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_222

def optimizedBody606_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_223

def optimizedBody606_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_224

def optimizedBody606_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_225

def optimizedBody606_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_226

def optimizedBody606_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_18 optimizedBody606_227

def optimizedBody606_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_3 optimizedBody606_228

def optimizedBody606_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_2 optimizedBody606_229

def optimizedBody606_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_1 optimizedBody606_230

def optimizedBody606_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_0 optimizedBody606_231

def oracle606 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 0 Flapjack.Spt.ln))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 2 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 25)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))))
def optimized606 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(606, 2, optimizedBody606_232)
theorem optimize606_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source606, oracle606) = optimized606 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize606_eq
end InitECandidate.Proofs.WordStages
