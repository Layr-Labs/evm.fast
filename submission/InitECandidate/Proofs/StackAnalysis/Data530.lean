import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody530_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody530_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody530_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody530_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody530_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_2 optimizedBody530_3

def optimizedBody530_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_1, 530, 2)) (some 475) ([]) (some (2, optimizedBody530_4, 530, 3))

def optimizedBody530_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody530_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 8), (48, 4), (50, 0), (52, 6)]

def optimizedBody530_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 2), (0, 6), (20, 4), (22, 8), (44, 44), (10, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody530_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody530_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_9 optimizedBody530_3

def optimizedBody530_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_8, 530, 4)) (some 475) ([]) (some (2, optimizedBody530_10, 530, 5))

def optimizedBody530_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody530_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody530_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody530_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody530_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 32#64)

def optimizedBody530_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody530_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44), (46, 24), (48, 10),
    (50, 0), (52, 6), (54, 20), (56, 4), (58, 8), (60, 22)]

def optimizedBody530_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 48), (48, 50), (4, 52), (50, 54), (0, 56), (6, 58), (52, 60)]

def optimizedBody530_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (8, 48), (48, 50), (4, 52), (50, 54), (0, 56), (6, 58), (52, 60)]

def optimizedBody530_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_20 optimizedBody530_3

def optimizedBody530_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody530_19, 530, 6)) (some 483) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody530_21, 530, 7))

def optimizedBody530_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody530_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody530_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_24, 530, 8)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody530_10, 530, 9))

def optimizedBody530_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody530_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 10 Flapjack.WordStore.heapLength

def optimizedBody530_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody530_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10 10

def optimizedBody530_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 18446744073709551360#64))

def optimizedBody530_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody530_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody530_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody530_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody530_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_34, 530, 10)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody530_4, 530, 11))

def optimizedBody530_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody530_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody530_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody530_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_38 optimizedBody530_3

def optimizedBody530_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_37, 530, 12)) (some 490) ([2]) (some (2, optimizedBody530_39, 530, 13))

def optimizedBody530_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody530_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody530_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody530_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_42 optimizedBody530_43

def optimizedBody530_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_41 optimizedBody530_44

def optimizedBody530_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_6 optimizedBody530_45

def optimizedBody530_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_40 optimizedBody530_46

def optimizedBody530_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_2 optimizedBody530_47

def optimizedBody530_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_36 optimizedBody530_48

def optimizedBody530_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_6 optimizedBody530_49

def optimizedBody530_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_35 optimizedBody530_50

def optimizedBody530_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_33 optimizedBody530_51

def optimizedBody530_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_32 optimizedBody530_52

def optimizedBody530_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_31 optimizedBody530_53

def optimizedBody530_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_30 optimizedBody530_54

def optimizedBody530_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_29 optimizedBody530_55

def optimizedBody530_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_28 optimizedBody530_56

def optimizedBody530_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_27 optimizedBody530_57

def optimizedBody530_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_26 optimizedBody530_58

def optimizedBody530_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_6 optimizedBody530_59

def optimizedBody530_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_25 optimizedBody530_60

def optimizedBody530_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_23 optimizedBody530_61

def optimizedBody530_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_6 optimizedBody530_62

def optimizedBody530_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_22 optimizedBody530_63

def optimizedBody530_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_18 optimizedBody530_64

def optimizedBody530_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_17 optimizedBody530_65

def optimizedBody530_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_16 optimizedBody530_66

def optimizedBody530_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_15 optimizedBody530_67

def optimizedBody530_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_14 optimizedBody530_68

def optimizedBody530_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_13 optimizedBody530_69

def optimizedBody530_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_12 optimizedBody530_70

def optimizedBody530_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_6 optimizedBody530_71

def optimizedBody530_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_11 optimizedBody530_72

def optimizedBody530_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_7 optimizedBody530_73

def optimizedBody530_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_6 optimizedBody530_74

def optimizedBody530_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_5 optimizedBody530_75

def optimizedBody530_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_0 optimizedBody530_76

def optimized530 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(530, 1, optimizedBody530_77)
end InitECandidate.Proofs.StackAnalysis
