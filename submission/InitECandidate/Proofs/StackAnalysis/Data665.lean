import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody665_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody665_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody665_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody665_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody665_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody665_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (44, 0), (54, 8), (46, 4), (48, 12), (52, 2), (50, 14), (56, 10), (58, 6), (60, 16), (62, 18)]

def optimizedBody665_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (54, 54), (46, 46), (8, 48), (52, 52), (4, 50), (50, 56), (48, 58), (10, 60), (6, 62)]

def optimizedBody665_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (54, 54), (46, 46), (8, 48), (52, 52), (4, 50), (50, 56), (48, 58), (10, 60), (6, 62)]

def optimizedBody665_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody665_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_7 optimizedBody665_8

def optimizedBody665_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody665_6, 665, 2)) (some 137) ([2]) (some (2, optimizedBody665_9, 665, 3))

def optimizedBody665_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody665_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (54, 54), (46, 46), (0, 0), (8, 8), (52, 52), (4, 4), (50, 50), (48, 48), (2, 10), (6, 6)]

def optimizedBody665_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody665_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody665_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody665_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 2), (12, 4), (14, 6), (16, 8), (44, 44), (54, 54), (46, 46), (48, 0), (52, 52),
    (50, 50), (56, 48)]

def optimizedBody665_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 8), (4, 4), (22, 2), (6, 6), (44, 44), (16, 54), (12, 46), (8, 48), (10, 52), (18, 50), (14, 56)]

def optimizedBody665_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 54), (12, 46), (8, 48), (10, 52), (18, 50), (14, 56)]

def optimizedBody665_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_18 optimizedBody665_8

def optimizedBody665_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody665_17, 665, 4)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody665_19, 665, 5))

def optimizedBody665_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (50, 8), (18, 18)]

def optimizedBody665_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody665_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody665_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody665_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 4), (6, 6), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 12), (50, 50),
    (52, 10), (54, 18), (56, 14)]

def optimizedBody665_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 8), (4, 4), (22, 2), (6, 6), (8, 44), (16, 46), (12, 48), (0, 50), (10, 52), (18, 54), (14, 56)]

def optimizedBody665_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (16, 46), (12, 48), (0, 50), (10, 52), (18, 54), (14, 56)]

def optimizedBody665_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_27 optimizedBody665_8

def optimizedBody665_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody665_26, 665, 6)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody665_28, 665, 7))

def optimizedBody665_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (16, 16), (12, 12), (0, 0), (20, 20), (10, 10), (4, 4), (18, 18), (14, 14), (22, 22), (6, 6)]

def optimizedBody665_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_30

def optimizedBody665_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_29 optimizedBody665_31

def optimizedBody665_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_25 optimizedBody665_32

def optimizedBody665_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_33

def optimizedBody665_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 44), (16, 16), (12, 12), (0, 50), (20, 20), (10, 10), (4, 4), (18, 18), (14, 14), (22, 22), (6, 6)]

def optimizedBody665_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_35

def optimizedBody665_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody665_34 optimizedBody665_36

def optimizedBody665_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 8), (54, 16), (46, 12), (0, 0), (8, 20), (52, 10), (4, 4), (50, 18), (48, 14), (2, 22), (6, 6)]

def optimizedBody665_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody665_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_38 optimizedBody665_39

def optimizedBody665_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_40

def optimizedBody665_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_37 optimizedBody665_41

def optimizedBody665_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_24 optimizedBody665_42

def optimizedBody665_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_23 optimizedBody665_43

def optimizedBody665_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_22 optimizedBody665_44

def optimizedBody665_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_21 optimizedBody665_45

def optimizedBody665_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_46

def optimizedBody665_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_20 optimizedBody665_47

def optimizedBody665_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_16 optimizedBody665_48

def optimizedBody665_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_15 optimizedBody665_49

def optimizedBody665_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_14 optimizedBody665_50

def optimizedBody665_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_51

def optimizedBody665_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody665_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_53

def optimizedBody665_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 0) optimizedBody665_52 optimizedBody665_54

def optimizedBody665_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 10), (54, 12), (46, 14), (0, 0), (8, 8), (52, 16), (4, 4), (50, 18), (48, 20), (2, 2), (6, 6)]

def optimizedBody665_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_56

def optimizedBody665_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_55 optimizedBody665_57

def optimizedBody665_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_14 optimizedBody665_58

def optimizedBody665_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_13 optimizedBody665_59

def optimizedBody665_61 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody665_60 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody665_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody665_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6, 8]

def optimizedBody665_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_62 optimizedBody665_63

def optimizedBody665_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_64

def optimizedBody665_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_61 optimizedBody665_65

def optimizedBody665_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_12 optimizedBody665_66

def optimizedBody665_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_67

def optimizedBody665_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_11 optimizedBody665_68

def optimizedBody665_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_10 optimizedBody665_69

def optimizedBody665_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_5 optimizedBody665_70

def optimizedBody665_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_4 optimizedBody665_71

def optimizedBody665_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_3 optimizedBody665_72

def optimizedBody665_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_2 optimizedBody665_73

def optimizedBody665_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_1 optimizedBody665_74

def optimizedBody665_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody665_0 optimizedBody665_75

def optimized665 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(665, 6, optimizedBody665_76)
end InitECandidate.Proofs.StackAnalysis
