import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody831_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody831_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody831_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody831_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody831_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody831_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody831_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody831_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody831_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2)]

def optimizedBody831_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody831_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody831_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody831_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_10 optimizedBody831_11

def optimizedBody831_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody831_9, 831, 2)) (some 465) ([2]) (some (2, optimizedBody831_12, 831, 3))

def optimizedBody831_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody831_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody831_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12#64)

def optimizedBody831_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody831_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody831_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 60#64)))

def optimizedBody831_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody831_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody831_20, 831, 4)) (some 470) ([2]) (some (2, optimizedBody831_12, 831, 5))

def optimizedBody831_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody831_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody831_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody831_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_24 optimizedBody831_11

def optimizedBody831_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody831_23, 831, 6)) (some 68) ([2]) (some (2, optimizedBody831_25, 831, 7))

def optimizedBody831_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody831_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody831_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody831_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody831_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_30 optimizedBody831_11

def optimizedBody831_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody831_29, 831, 8)) (some 153) ([2, 4, 6]) (some (2, optimizedBody831_31, 831, 9))

def optimizedBody831_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody831_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody831_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody831_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody831_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody831_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody831_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody831_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody831_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody831_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody831_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody831_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody831_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody831_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_44 optimizedBody831_45

def optimizedBody831_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_43 optimizedBody831_46

def optimizedBody831_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_42 optimizedBody831_47

def optimizedBody831_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_15 optimizedBody831_48

def optimizedBody831_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_22 optimizedBody831_49

def optimizedBody831_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_41 optimizedBody831_50

def optimizedBody831_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_40 optimizedBody831_51

def optimizedBody831_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_0 optimizedBody831_52

def optimizedBody831_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_39 optimizedBody831_53

def optimizedBody831_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_38 optimizedBody831_54

def optimizedBody831_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_37 optimizedBody831_55

def optimizedBody831_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_36 optimizedBody831_56

def optimizedBody831_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_35 optimizedBody831_57

def optimizedBody831_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_34 optimizedBody831_58

def optimizedBody831_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_33 optimizedBody831_59

def optimizedBody831_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_14 optimizedBody831_60

def optimizedBody831_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_32 optimizedBody831_61

def optimizedBody831_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_28 optimizedBody831_62

def optimizedBody831_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_27 optimizedBody831_63

def optimizedBody831_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_15 optimizedBody831_64

def optimizedBody831_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_14 optimizedBody831_65

def optimizedBody831_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_26 optimizedBody831_66

def optimizedBody831_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_10 optimizedBody831_67

def optimizedBody831_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_22 optimizedBody831_68

def optimizedBody831_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_14 optimizedBody831_69

def optimizedBody831_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_21 optimizedBody831_70

def optimizedBody831_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_10 optimizedBody831_71

def optimizedBody831_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_19 optimizedBody831_72

def optimizedBody831_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_0 optimizedBody831_73

def optimizedBody831_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_18 optimizedBody831_74

def optimizedBody831_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_17 optimizedBody831_75

def optimizedBody831_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_16 optimizedBody831_76

def optimizedBody831_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_15 optimizedBody831_77

def optimizedBody831_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_14 optimizedBody831_78

def optimizedBody831_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_13 optimizedBody831_79

def optimizedBody831_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_8 optimizedBody831_80

def optimizedBody831_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_7 optimizedBody831_81

def optimizedBody831_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_6 optimizedBody831_82

def optimizedBody831_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_5 optimizedBody831_83

def optimizedBody831_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_4 optimizedBody831_84

def optimizedBody831_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_3 optimizedBody831_85

def optimizedBody831_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_2 optimizedBody831_86

def optimizedBody831_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_1 optimizedBody831_87

def optimizedBody831_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_0 optimizedBody831_88

def optimized831 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(831, 1, optimizedBody831_89)
end InitECandidate.Proofs.StackAnalysis
