import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody144_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody144_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 31#64)

def optimizedBody144_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody144_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6), (6, 8), (8, 10)]

def optimizedBody144_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody144_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_3 optimizedBody144_4

def optimizedBody144_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_5

def optimizedBody144_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(18, 8), (14, 4), (20, 10), (16, 6)]

def optimizedBody144_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody144_6 optimizedBody144_7

def optimizedBody144_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody144_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody144_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody144_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 16), (6, 18), (8, 20), (10, 10), (44, 0), (46, 18), (48, 10), (50, 14), (52, 20), (54, 16)]

def optimizedBody144_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (54, 54)]

def optimizedBody144_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (54, 54)]

def optimizedBody144_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody144_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_14 optimizedBody144_15

def optimizedBody144_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody144_13, 144, 2)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody144_16, 144, 3))

def optimizedBody144_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody144_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody144_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 18446744073709551615#64)

def optimizedBody144_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551615#64)

def optimizedBody144_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18446744073709551615#64)

def optimizedBody144_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody144_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 12), (54, 54)]

def optimizedBody144_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 4), (16, 8), (14, 6), (10, 2), (0, 44), (46, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody144_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (46, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody144_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_26 optimizedBody144_15

def optimizedBody144_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody144_25, 144, 4)) (some 141) ([2, 4, 6, 8, 10]) (some (2, optimizedBody144_27, 144, 5))

def optimizedBody144_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody144_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody144_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 48), (4, 52), (6, 46), (8, 50), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody144_32 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 113) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody144_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_31 optimizedBody144_32

def optimizedBody144_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_33

def optimizedBody144_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (46, 46), (16, 16), (48, 48), (50, 50), (52, 52), (14, 14), (10, 10)]

def optimizedBody144_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody144_34 optimizedBody144_35

def optimizedBody144_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (6, 14), (8, 16), (44, 0), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody144_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 4), (14, 6), (10, 2), (16, 8), (0, 44), (6, 46), (18, 48), (8, 50), (4, 52)]

def optimizedBody144_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (18, 48), (8, 50), (4, 52)]

def optimizedBody144_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_39 optimizedBody144_15

def optimizedBody144_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody144_38, 144, 6)) (some 111) ([2, 4, 6, 8]) (some (2, optimizedBody144_40, 144, 7))

def optimizedBody144_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 18), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody144_43 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 112) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody144_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_42 optimizedBody144_43

def optimizedBody144_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_44

def optimizedBody144_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_41 optimizedBody144_45

def optimizedBody144_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_37 optimizedBody144_46

def optimizedBody144_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_47

def optimizedBody144_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_48

def optimizedBody144_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_36 optimizedBody144_49

def optimizedBody144_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_30 optimizedBody144_50

def optimizedBody144_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_29 optimizedBody144_51

def optimizedBody144_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_52

def optimizedBody144_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_28 optimizedBody144_53

def optimizedBody144_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_24 optimizedBody144_54

def optimizedBody144_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_23 optimizedBody144_55

def optimizedBody144_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_22 optimizedBody144_56

def optimizedBody144_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_21 optimizedBody144_57

def optimizedBody144_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_20 optimizedBody144_58

def optimizedBody144_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_19 optimizedBody144_59

def optimizedBody144_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_18 optimizedBody144_60

def optimizedBody144_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_61

def optimizedBody144_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_17 optimizedBody144_62

def optimizedBody144_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_12 optimizedBody144_63

def optimizedBody144_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_11 optimizedBody144_64

def optimizedBody144_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_10 optimizedBody144_65

def optimizedBody144_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_9 optimizedBody144_66

def optimizedBody144_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_67

def optimizedBody144_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_2 optimizedBody144_68

def optimizedBody144_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_8 optimizedBody144_69

def optimizedBody144_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_1 optimizedBody144_70

def optimizedBody144_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody144_0 optimizedBody144_71

def optimized144 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(144, 6, optimizedBody144_72)
end InitECandidate.Proofs.StackAnalysis
