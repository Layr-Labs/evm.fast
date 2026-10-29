import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody426_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 12), (50, 10), (52, 6)]

def optimizedBody426_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (4, 46), (8, 48), (6, 50), (0, 52)]

def optimizedBody426_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (6, 50), (0, 52)]

def optimizedBody426_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody426_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_2 optimizedBody426_3

def optimizedBody426_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody426_1, 426, 2)) (some 392) ([2, 4]) (some (2, optimizedBody426_4, 426, 3))

def optimizedBody426_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody426_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 8), (50, 10), (52, 6), (54, 0)]

def optimizedBody426_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody426_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody426_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_9 optimizedBody426_3

def optimizedBody426_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody426_8, 426, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody426_10, 426, 5))

def optimizedBody426_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody426_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody426_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody426_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody426_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody426_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody426_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody426_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 50), (56, 44)]

def optimizedBody426_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 56)]

def optimizedBody426_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 56)]

def optimizedBody426_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_21 optimizedBody426_3

def optimizedBody426_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody426_20, 426, 6)) (some 389) ([2, 4]) (some (2, optimizedBody426_22, 426, 7))

def optimizedBody426_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody426_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody426_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_24 optimizedBody426_25

def optimizedBody426_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_13 optimizedBody426_26

def optimizedBody426_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_27

def optimizedBody426_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_23 optimizedBody426_28

def optimizedBody426_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_19 optimizedBody426_29

def optimizedBody426_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_18 optimizedBody426_30

def optimizedBody426_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_17 optimizedBody426_31

def optimizedBody426_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_16 optimizedBody426_32

def optimizedBody426_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_15 optimizedBody426_33

def optimizedBody426_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_14 optimizedBody426_34

def optimizedBody426_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_35

def optimizedBody426_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (44, 44)]

def optimizedBody426_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody426_36 optimizedBody426_37

def optimizedBody426_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody426_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (10, 46), (0, 48), (4, 50), (8, 52), (12, 54)]

def optimizedBody426_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (0, 48), (4, 50), (8, 52), (12, 54)]

def optimizedBody426_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_41 optimizedBody426_3

def optimizedBody426_43 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody426_40, 426, 8)) (some 68) ([2]) (some (2, optimizedBody426_42, 426, 9))

def optimizedBody426_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12), (0, 0), (8, 8), (10, 10)]

def optimizedBody426_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody426_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody426_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody426_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody426_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody426_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody426_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody426_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody426_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody426_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody426_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_54 optimizedBody426_3

def optimizedBody426_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody426_53, 426, 10)) (some 388) ([2, 4, 6]) (some (2, optimizedBody426_55, 426, 11))

def optimizedBody426_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_56 optimizedBody426_28

def optimizedBody426_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_52 optimizedBody426_57

def optimizedBody426_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_18 optimizedBody426_58

def optimizedBody426_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_17 optimizedBody426_59

def optimizedBody426_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_16 optimizedBody426_60

def optimizedBody426_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_15 optimizedBody426_61

def optimizedBody426_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_14 optimizedBody426_62

def optimizedBody426_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_51 optimizedBody426_63

def optimizedBody426_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_50 optimizedBody426_64

def optimizedBody426_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_49 optimizedBody426_65

def optimizedBody426_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_48 optimizedBody426_66

def optimizedBody426_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_47 optimizedBody426_67

def optimizedBody426_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_46 optimizedBody426_68

def optimizedBody426_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_45 optimizedBody426_69

def optimizedBody426_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_44 optimizedBody426_70

def optimizedBody426_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_71

def optimizedBody426_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_43 optimizedBody426_72

def optimizedBody426_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_9 optimizedBody426_73

def optimizedBody426_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_39 optimizedBody426_74

def optimizedBody426_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_75

def optimizedBody426_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_76

def optimizedBody426_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_38 optimizedBody426_77

def optimizedBody426_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_13 optimizedBody426_78

def optimizedBody426_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_12 optimizedBody426_79

def optimizedBody426_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_80

def optimizedBody426_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_11 optimizedBody426_81

def optimizedBody426_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_7 optimizedBody426_82

def optimizedBody426_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_6 optimizedBody426_83

def optimizedBody426_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_5 optimizedBody426_84

def optimizedBody426_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody426_0 optimizedBody426_85

def optimized426 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(426, 7, optimizedBody426_86)
end InitECandidate.Proofs.StackAnalysis
