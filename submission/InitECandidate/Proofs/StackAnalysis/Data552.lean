import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody552_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody552_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody552_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody552_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody552_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_2 optimizedBody552_3

def optimizedBody552_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_1, 552, 2)) (some 492) ([]) (some (2, optimizedBody552_4, 552, 3))

def optimizedBody552_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody552_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody552_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_7, 552, 4)) (some 475) ([]) (some (2, optimizedBody552_4, 552, 5))

def optimizedBody552_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 8), (54, 4), (56, 0), (58, 6)]

def optimizedBody552_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody552_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody552_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_11 optimizedBody552_3

def optimizedBody552_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_10, 552, 6)) (some 475) ([]) (some (2, optimizedBody552_12, 552, 7))

def optimizedBody552_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody552_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (48, 0), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 8)]

def optimizedBody552_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (8, 50), (50, 52), (4, 54), (0, 56), (6, 58), (52, 60)]

def optimizedBody552_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (8, 50), (50, 52), (4, 54), (0, 56), (6, 58), (52, 60)]

def optimizedBody552_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_17 optimizedBody552_3

def optimizedBody552_19 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody552_16, 552, 8)) (some 470) ([2]) (some (2, optimizedBody552_18, 552, 9))

def optimizedBody552_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody552_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody552_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody552_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551336#64))

def optimizedBody552_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 10)]

def optimizedBody552_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (6, 48), (10, 50), (12, 52), (4, 54)]

def optimizedBody552_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48), (10, 50), (12, 52), (4, 54)]

def optimizedBody552_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_26 optimizedBody552_3

def optimizedBody552_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_25, 552, 10)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody552_27, 552, 11))

def optimizedBody552_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody552_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody552_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody552_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody552_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody552_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody552_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44)]

def optimizedBody552_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_1, 552, 12)) (some 426) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody552_4, 552, 13))

def optimizedBody552_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody552_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody552_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody552_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_39 optimizedBody552_3

def optimizedBody552_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_38, 552, 14)) (some 490) ([2]) (some (2, optimizedBody552_40, 552, 15))

def optimizedBody552_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody552_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody552_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody552_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_43 optimizedBody552_44

def optimizedBody552_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_42 optimizedBody552_45

def optimizedBody552_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_46

def optimizedBody552_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_41 optimizedBody552_47

def optimizedBody552_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_2 optimizedBody552_48

def optimizedBody552_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_37 optimizedBody552_49

def optimizedBody552_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_50

def optimizedBody552_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_36 optimizedBody552_51

def optimizedBody552_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_35 optimizedBody552_52

def optimizedBody552_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_34 optimizedBody552_53

def optimizedBody552_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_33 optimizedBody552_54

def optimizedBody552_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_32 optimizedBody552_55

def optimizedBody552_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_31 optimizedBody552_56

def optimizedBody552_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_30 optimizedBody552_57

def optimizedBody552_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_29 optimizedBody552_58

def optimizedBody552_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_59

def optimizedBody552_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_28 optimizedBody552_60

def optimizedBody552_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_24 optimizedBody552_61

def optimizedBody552_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_23 optimizedBody552_62

def optimizedBody552_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_22 optimizedBody552_63

def optimizedBody552_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_21 optimizedBody552_64

def optimizedBody552_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_20 optimizedBody552_65

def optimizedBody552_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_66

def optimizedBody552_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_19 optimizedBody552_67

def optimizedBody552_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_15 optimizedBody552_68

def optimizedBody552_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_14 optimizedBody552_69

def optimizedBody552_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_70

def optimizedBody552_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_13 optimizedBody552_71

def optimizedBody552_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_9 optimizedBody552_72

def optimizedBody552_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_73

def optimizedBody552_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_8 optimizedBody552_74

def optimizedBody552_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_1 optimizedBody552_75

def optimizedBody552_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_76

def optimizedBody552_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_5 optimizedBody552_77

def optimizedBody552_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_0 optimizedBody552_78

def optimized552 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(552, 1, optimizedBody552_79)
end InitECandidate.Proofs.StackAnalysis
