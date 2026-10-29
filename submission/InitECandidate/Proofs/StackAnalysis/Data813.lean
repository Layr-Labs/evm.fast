import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody813_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (46, 4), (50, 2), (54, 6)]

def optimizedBody813_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (54, 54)]

def optimizedBody813_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54)]

def optimizedBody813_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody813_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_2 optimizedBody813_3

def optimizedBody813_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_1, 813, 2)) (some 69) ([]) (some (2, optimizedBody813_4, 813, 3))

def optimizedBody813_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody813_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody813_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 0)]

def optimizedBody813_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody813_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody813_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_10 optimizedBody813_3

def optimizedBody813_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_9, 813, 4)) (some 68) ([2]) (some (2, optimizedBody813_11, 813, 5))

def optimizedBody813_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody813_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody813_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody813_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_3

def optimizedBody813_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_14, 813, 6)) (some 68) ([2]) (some (2, optimizedBody813_16, 813, 7))

def optimizedBody813_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody813_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody813_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (12, 44), (8, 46), (10, 50), (44, 52), (46, 54), (50, 56)]

def optimizedBody813_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (12, 44), (8, 46), (10, 50), (44, 52), (46, 54), (50, 56)]

def optimizedBody813_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_21 optimizedBody813_3

def optimizedBody813_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_20, 813, 8)) (some 68) ([2]) (some (2, optimizedBody813_22, 813, 9))

def optimizedBody813_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody813_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (12, 12), (8, 8), (52, 0), (10, 10), (44, 44), (14, 14), (46, 46), (50, 50)]

def optimizedBody813_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (14, 14)]

def optimizedBody813_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody813_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 288#64)

def optimizedBody813_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4)]

def optimizedBody813_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody813_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody813_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody813_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (48, 48), (44, 12), (46, 8), (50, 52), (52, 10), (54, 44), (56, 2), (58, 14), (60, 46), (62, 50)]

def optimizedBody813_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody813_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody813_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_3

def optimizedBody813_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_34, 813, 10)) (some 787) ([2, 4]) (some (2, optimizedBody813_36, 813, 11))

def optimizedBody813_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody813_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody813_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (44, 48)]

def optimizedBody813_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody813_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody813_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_42 optimizedBody813_3

def optimizedBody813_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_41, 813, 12)) (some 70) ([2]) (some (2, optimizedBody813_43, 813, 13))

def optimizedBody813_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody813_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody813_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody813_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_46 optimizedBody813_47

def optimizedBody813_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_45 optimizedBody813_48

def optimizedBody813_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_49

def optimizedBody813_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_44 optimizedBody813_50

def optimizedBody813_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_40 optimizedBody813_51

def optimizedBody813_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_52

def optimizedBody813_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(0, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (48, 48)]

def optimizedBody813_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody813_53 optimizedBody813_54

def optimizedBody813_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody813_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody813_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody813_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_58 optimizedBody813_3

def optimizedBody813_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_57, 813, 14)) (some 789) ([2]) (some (2, optimizedBody813_59, 813, 15))

def optimizedBody813_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 60), (62, 48)]

def optimizedBody813_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 62)]

def optimizedBody813_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 62)]

def optimizedBody813_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_63 optimizedBody813_3

def optimizedBody813_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_62, 813, 16)) (some 70) ([2]) (some (2, optimizedBody813_64, 813, 17))

def optimizedBody813_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_65 optimizedBody813_50

def optimizedBody813_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_61 optimizedBody813_66

def optimizedBody813_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_67

def optimizedBody813_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 0), (56, 56), (58, 58), (60, 60), (48, 48)]

def optimizedBody813_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody813_68 optimizedBody813_69

def optimizedBody813_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody813_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody813_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody813_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody813_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (4, 4), (8, 8), (6, 6), (48, 48), (0, 44), (46, 46), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody813_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (0, 44), (46, 46), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody813_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_76 optimizedBody813_3

def optimizedBody813_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody813_75, 813, 18)) (some 146) ([2, 4]) (some (2, optimizedBody813_77, 813, 19))

def optimizedBody813_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 12), (10, 10), (8, 8), (2, 6), (4, 4)]

def optimizedBody813_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody813_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody813_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody813_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody813_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody813_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody813_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody813_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 0)]

def optimizedBody813_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4#64)

def optimizedBody813_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (8, 8), (48, 48), (44, 4), (46, 46), (50, 6), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody813_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (6, 44), (46, 46), (50, 50), (52, 52), (4, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody813_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (6, 44), (46, 46), (50, 50), (52, 52), (4, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody813_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_91 optimizedBody813_3

def optimizedBody813_93 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_90, 813, 20)) (some 784) ([2, 4, 6, 8]) (some (2, optimizedBody813_92, 813, 21))

def optimizedBody813_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 6), (48, 48), (44, 6), (46, 46), (50, 50), (52, 52), (54, 4), (56, 0), (58, 58), (60, 60)]

def optimizedBody813_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (12, 44), (8, 46), (0, 50), (10, 52), (4, 54), (14, 56), (6, 58), (50, 60)]

def optimizedBody813_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (12, 44), (8, 46), (0, 50), (10, 52), (4, 54), (14, 56), (6, 58), (50, 60)]

def optimizedBody813_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_96 optimizedBody813_3

def optimizedBody813_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_95, 813, 22)) (some 780) ([2, 4]) (some (2, optimizedBody813_97, 813, 23))

def optimizedBody813_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (12, 12), (8, 8), (0, 0), (10, 10), (4, 4), (14, 14), (6, 6), (50, 50)]

def optimizedBody813_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_99

def optimizedBody813_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_98 optimizedBody813_100

def optimizedBody813_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_94 optimizedBody813_101

def optimizedBody813_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_102

def optimizedBody813_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (48, 48), (44, 6), (46, 46), (50, 50), (52, 52), (54, 4), (56, 0), (58, 58), (60, 60)]

def optimizedBody813_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_95, 813, 24)) (some 783) ([2, 4, 6]) (some (2, optimizedBody813_97, 813, 25))

def optimizedBody813_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_105 optimizedBody813_100

def optimizedBody813_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_104 optimizedBody813_106

def optimizedBody813_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_107

def optimizedBody813_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody813_103 optimizedBody813_108

def optimizedBody813_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody813_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (12, 12), (8, 8), (52, 0), (10, 10), (44, 4), (14, 14), (46, 6), (50, 50)]

def optimizedBody813_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody813_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_111 optimizedBody813_112

def optimizedBody813_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_110 optimizedBody813_113

def optimizedBody813_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_27 optimizedBody813_114

def optimizedBody813_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_115

def optimizedBody813_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_109 optimizedBody813_116

def optimizedBody813_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_39 optimizedBody813_117

def optimizedBody813_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_71 optimizedBody813_118

def optimizedBody813_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_119

def optimizedBody813_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_93 optimizedBody813_120

def optimizedBody813_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_89 optimizedBody813_121

def optimizedBody813_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_88 optimizedBody813_122

def optimizedBody813_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_87 optimizedBody813_123

def optimizedBody813_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_86 optimizedBody813_124

def optimizedBody813_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_85 optimizedBody813_125

def optimizedBody813_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_84 optimizedBody813_126

def optimizedBody813_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_83 optimizedBody813_127

def optimizedBody813_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_82 optimizedBody813_128

def optimizedBody813_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_81 optimizedBody813_129

def optimizedBody813_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_80 optimizedBody813_130

def optimizedBody813_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_79 optimizedBody813_131

def optimizedBody813_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_132

def optimizedBody813_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_78 optimizedBody813_133

def optimizedBody813_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_74 optimizedBody813_134

def optimizedBody813_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_73 optimizedBody813_135

def optimizedBody813_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_72 optimizedBody813_136

def optimizedBody813_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_71 optimizedBody813_137

def optimizedBody813_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_138

def optimizedBody813_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_139

def optimizedBody813_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_70 optimizedBody813_140

def optimizedBody813_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_39 optimizedBody813_141

def optimizedBody813_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_38 optimizedBody813_142

def optimizedBody813_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_143

def optimizedBody813_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_60 optimizedBody813_144

def optimizedBody813_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_56 optimizedBody813_145

def optimizedBody813_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_146

def optimizedBody813_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_147

def optimizedBody813_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_55 optimizedBody813_148

def optimizedBody813_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_39 optimizedBody813_149

def optimizedBody813_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_38 optimizedBody813_150

def optimizedBody813_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_151

def optimizedBody813_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_37 optimizedBody813_152

def optimizedBody813_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_33 optimizedBody813_153

def optimizedBody813_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_32 optimizedBody813_154

def optimizedBody813_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_31 optimizedBody813_155

def optimizedBody813_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_30 optimizedBody813_156

def optimizedBody813_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_29 optimizedBody813_157

def optimizedBody813_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_28 optimizedBody813_158

def optimizedBody813_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_27 optimizedBody813_159

def optimizedBody813_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_160

def optimizedBody813_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody813_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_162

def optimizedBody813_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 8) optimizedBody813_161 optimizedBody813_163

def optimizedBody813_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (12, 12), (8, 8), (52, 2), (10, 10), (44, 4), (14, 14), (46, 6), (50, 16)]

def optimizedBody813_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_165

def optimizedBody813_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_164 optimizedBody813_166

def optimizedBody813_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_26 optimizedBody813_167

def optimizedBody813_169 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody813_168 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody813_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 46), (44, 48), (46, 50)]

def optimizedBody813_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody813_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody813_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_172 optimizedBody813_3

def optimizedBody813_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_171, 813, 26)) (some 788) ([2, 4]) (some (2, optimizedBody813_173, 813, 27))

def optimizedBody813_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody813_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody813_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody813_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_177 optimizedBody813_3

def optimizedBody813_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_176, 813, 28)) (some 70) ([2]) (some (2, optimizedBody813_178, 813, 29))

def optimizedBody813_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody813_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_46 optimizedBody813_180

def optimizedBody813_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_39 optimizedBody813_181

def optimizedBody813_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_182

def optimizedBody813_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_179 optimizedBody813_183

def optimizedBody813_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_175 optimizedBody813_184

def optimizedBody813_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_185

def optimizedBody813_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_174 optimizedBody813_186

def optimizedBody813_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_170 optimizedBody813_187

def optimizedBody813_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_188

def optimizedBody813_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_169 optimizedBody813_189

def optimizedBody813_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_25 optimizedBody813_190

def optimizedBody813_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_191

def optimizedBody813_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_24 optimizedBody813_192

def optimizedBody813_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_193

def optimizedBody813_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_23 optimizedBody813_194

def optimizedBody813_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_19 optimizedBody813_195

def optimizedBody813_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_18 optimizedBody813_196

def optimizedBody813_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_197

def optimizedBody813_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_17 optimizedBody813_198

def optimizedBody813_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_199

def optimizedBody813_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_7 optimizedBody813_200

def optimizedBody813_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_201

def optimizedBody813_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_12 optimizedBody813_202

def optimizedBody813_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_8 optimizedBody813_203

def optimizedBody813_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_7 optimizedBody813_204

def optimizedBody813_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_205

def optimizedBody813_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_5 optimizedBody813_206

def optimizedBody813_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_0 optimizedBody813_207

def optimized813 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(813, 4, optimizedBody813_208)
end InitECandidate.Proofs.StackAnalysis
