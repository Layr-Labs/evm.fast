import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody799_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 8), (48, 4), (50, 12), (52, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody799_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody799_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody799_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody799_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_2 optimizedBody799_3

def optimizedBody799_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_1, 799, 2)) (some 69) ([]) (some (2, optimizedBody799_4, 799, 3))

def optimizedBody799_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody799_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody799_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58), (60, 60)]

def optimizedBody799_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (8, 46), (4, 48), (12, 50), (48, 52), (50, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody799_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (4, 48), (12, 50), (48, 52), (50, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody799_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_10 optimizedBody799_3

def optimizedBody799_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_9, 799, 4)) (some 68) ([2]) (some (2, optimizedBody799_11, 799, 5))

def optimizedBody799_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody799_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (50, 50)]

def optimizedBody799_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50)]

def optimizedBody799_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_15 optimizedBody799_3

def optimizedBody799_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_14, 799, 6)) (some 796) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody799_16, 799, 7))

def optimizedBody799_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 4), (48, 48), (50, 50)]

def optimizedBody799_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (46, 50)]

def optimizedBody799_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (46, 50)]

def optimizedBody799_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_20 optimizedBody799_3

def optimizedBody799_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_19, 799, 8)) (some 798) ([2, 4]) (some (2, optimizedBody799_21, 799, 9))

def optimizedBody799_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody799_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody799_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody799_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody799_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody799_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1624#64)))

def optimizedBody799_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody799_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody799_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody799_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody799_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_32 optimizedBody799_3

def optimizedBody799_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_31, 799, 10)) (some 772) ([2, 4, 6, 8]) (some (2, optimizedBody799_33, 799, 11))

def optimizedBody799_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody799_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody799_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody799_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_37 optimizedBody799_3

def optimizedBody799_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_36, 799, 12)) (some 70) ([2]) (some (2, optimizedBody799_38, 799, 13))

def optimizedBody799_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody799_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody799_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody799_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_41 optimizedBody799_42

def optimizedBody799_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_40 optimizedBody799_43

def optimizedBody799_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_44

def optimizedBody799_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_39 optimizedBody799_45

def optimizedBody799_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_35 optimizedBody799_46

def optimizedBody799_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_47

def optimizedBody799_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_34 optimizedBody799_48

def optimizedBody799_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_30 optimizedBody799_49

def optimizedBody799_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_29 optimizedBody799_50

def optimizedBody799_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_28 optimizedBody799_51

def optimizedBody799_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_27 optimizedBody799_52

def optimizedBody799_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_26 optimizedBody799_53

def optimizedBody799_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_25 optimizedBody799_54

def optimizedBody799_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_24 optimizedBody799_55

def optimizedBody799_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_23 optimizedBody799_56

def optimizedBody799_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_57

def optimizedBody799_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_22 optimizedBody799_58

def optimizedBody799_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_59

def optimizedBody799_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_60

def optimizedBody799_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_17 optimizedBody799_61

def optimizedBody799_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_13 optimizedBody799_62

def optimizedBody799_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_63

def optimizedBody799_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_12 optimizedBody799_64

def optimizedBody799_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_65

def optimizedBody799_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_7 optimizedBody799_66

def optimizedBody799_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_67

def optimizedBody799_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_5 optimizedBody799_68

def optimizedBody799_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_0 optimizedBody799_69

def optimized799 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(799, 8, optimizedBody799_70)
end InitECandidate.Proofs.StackAnalysis
