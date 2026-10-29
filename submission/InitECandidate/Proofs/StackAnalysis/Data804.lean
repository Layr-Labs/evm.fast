import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody804_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2)]

def optimizedBody804_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody804_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody804_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody804_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_2 optimizedBody804_3

def optimizedBody804_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody804_1, 804, 2)) (some 69) ([]) (some (2, optimizedBody804_4, 804, 3))

def optimizedBody804_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody804_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody804_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody804_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody804_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody804_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_10 optimizedBody804_3

def optimizedBody804_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody804_9, 804, 4)) (some 68) ([2]) (some (2, optimizedBody804_11, 804, 5))

def optimizedBody804_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody804_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody804_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody804_14, 804, 6)) (some 801) ([2, 4]) (some (2, optimizedBody804_11, 804, 7))

def optimizedBody804_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50)]

def optimizedBody804_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody804_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody804_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_18 optimizedBody804_3

def optimizedBody804_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody804_17, 804, 8)) (some 803) ([2, 4]) (some (2, optimizedBody804_19, 804, 9))

def optimizedBody804_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody804_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody804_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody804_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody804_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody804_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1632#64)))

def optimizedBody804_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 10#64)

def optimizedBody804_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody804_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody804_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody804_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_30 optimizedBody804_3

def optimizedBody804_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody804_29, 804, 10)) (some 784) ([2, 4, 6, 8]) (some (2, optimizedBody804_31, 804, 11))

def optimizedBody804_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody804_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody804_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody804_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_35 optimizedBody804_3

def optimizedBody804_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody804_34, 804, 12)) (some 70) ([2]) (some (2, optimizedBody804_36, 804, 13))

def optimizedBody804_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody804_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody804_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody804_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_39 optimizedBody804_40

def optimizedBody804_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_38 optimizedBody804_41

def optimizedBody804_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_6 optimizedBody804_42

def optimizedBody804_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_37 optimizedBody804_43

def optimizedBody804_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_33 optimizedBody804_44

def optimizedBody804_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_6 optimizedBody804_45

def optimizedBody804_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_32 optimizedBody804_46

def optimizedBody804_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_28 optimizedBody804_47

def optimizedBody804_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_27 optimizedBody804_48

def optimizedBody804_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_26 optimizedBody804_49

def optimizedBody804_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_25 optimizedBody804_50

def optimizedBody804_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_24 optimizedBody804_51

def optimizedBody804_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_23 optimizedBody804_52

def optimizedBody804_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_22 optimizedBody804_53

def optimizedBody804_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_21 optimizedBody804_54

def optimizedBody804_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_6 optimizedBody804_55

def optimizedBody804_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_20 optimizedBody804_56

def optimizedBody804_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_16 optimizedBody804_57

def optimizedBody804_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_6 optimizedBody804_58

def optimizedBody804_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_15 optimizedBody804_59

def optimizedBody804_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_13 optimizedBody804_60

def optimizedBody804_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_6 optimizedBody804_61

def optimizedBody804_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_12 optimizedBody804_62

def optimizedBody804_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_8 optimizedBody804_63

def optimizedBody804_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_7 optimizedBody804_64

def optimizedBody804_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_6 optimizedBody804_65

def optimizedBody804_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_5 optimizedBody804_66

def optimizedBody804_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody804_0 optimizedBody804_67

def optimized804 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(804, 3, optimizedBody804_68)
end InitECandidate.Proofs.StackAnalysis
