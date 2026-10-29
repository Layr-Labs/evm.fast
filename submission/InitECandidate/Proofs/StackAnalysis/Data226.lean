import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody226_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 0), (64, 16), (46, 8), (48, 24), (50, 4), (54, 20), (52, 12), (56, 2), (58, 18), (60, 10), (62, 26),
    (66, 6), (68, 22), (70, 14)]

def optimizedBody226_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (64, 64), (6, 46), (48, 48), (0, 50), (54, 54), (50, 52), (46, 56), (58, 58), (8, 60), (52, 62), (4, 66),
    (66, 68), (68, 70)]

def optimizedBody226_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (64, 64), (6, 46), (48, 48), (0, 50), (54, 54), (50, 52), (46, 56), (58, 58), (8, 60), (52, 62),
    (4, 66), (66, 68), (68, 70)]

def optimizedBody226_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody226_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_2 optimizedBody226_3

def optimizedBody226_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody226_1, 226, 2)) (some 220) ([2]) (some (2, optimizedBody226_4, 226, 3))

def optimizedBody226_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody226_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (64, 64), (56, 6), (48, 48), (62, 0), (54, 54), (50, 50), (46, 46),
    (58, 58), (70, 8), (52, 52), (60, 4), (66, 66), (68, 68)]

def optimizedBody226_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (64, 64), (56, 56), (48, 48), (62, 62), (54, 54), (50, 50), (0, 46), (58, 58), (70, 70), (46, 52),
    (60, 60), (52, 66), (66, 68)]

def optimizedBody226_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (64, 64), (56, 56), (48, 48), (62, 62), (54, 54), (50, 50), (0, 46), (58, 58), (70, 70), (46, 52),
    (60, 60), (52, 66), (66, 68)]

def optimizedBody226_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_9 optimizedBody226_3

def optimizedBody226_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody226_8, 226, 4)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody226_10, 226, 5))

def optimizedBody226_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 4)]

def optimizedBody226_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (64, 64), (56, 56), (68, 68), (48, 48), (62, 62), (54, 54), (10, 68), (50, 50), (0, 0), (58, 58), (70, 70),
    (46, 46), (60, 60), (52, 52), (66, 66)]

def optimizedBody226_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody226_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody226_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody226_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 64), (56, 56), (50, 68), (52, 48), (62, 62), (54, 54), (48, 2), (60, 50), (58, 0), (64, 58),
    (70, 70), (68, 46), (66, 60), (72, 52), (74, 66)]

def optimizedBody226_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (6, 56), (50, 50), (52, 52), (0, 62), (56, 54), (10, 48), (60, 60), (62, 58), (64, 64), (8, 70),
    (68, 68), (4, 66), (72, 72), (74, 74)]

def optimizedBody226_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 56), (50, 50), (52, 52), (0, 62), (56, 54), (10, 48), (60, 60), (62, 58), (64, 64),
    (8, 70), (68, 68), (4, 66), (72, 72), (74, 74)]

def optimizedBody226_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_19 optimizedBody226_3

def optimizedBody226_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody226_18, 226, 6)) (some 223) ([2]) (some (2, optimizedBody226_20, 226, 7))

def optimizedBody226_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 6), (50, 50), (52, 52), (54, 0), (56, 56),
    (58, 10), (60, 60), (62, 62), (64, 64), (66, 8), (68, 68), (70, 4), (72, 72), (74, 74)]

def optimizedBody226_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (8, 46), (48, 48), (50, 50), (16, 52), (54, 54), (12, 56), (58, 58), (4, 60), (0, 62), (24, 64),
    (66, 66), (28, 68), (70, 70), (26, 72), (6, 74)]

def optimizedBody226_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (48, 48), (50, 50), (16, 52), (54, 54), (12, 56), (58, 58), (4, 60), (0, 62), (24, 64),
    (66, 66), (28, 68), (70, 70), (26, 72), (6, 74)]

def optimizedBody226_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_24 optimizedBody226_3

def optimizedBody226_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody226_23, 226, 8)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody226_25, 226, 9))

def optimizedBody226_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody226_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 24), (12, 12), (14, 26), (16, 16), (18, 28), (44, 44), (46, 8), (48, 48),
    (50, 50), (52, 16), (54, 54), (56, 12), (58, 58), (60, 4), (62, 0), (64, 24), (66, 66), (68, 28), (70, 70),
    (72, 26), (74, 6)]

def optimizedBody226_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(20, 44), (8, 46), (14, 48), (18, 50), (16, 52), (22, 54), (12, 56), (10, 58), (4, 60), (0, 62), (24, 64), (32, 66),
    (28, 68), (30, 70), (26, 72), (6, 74)]

def optimizedBody226_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (20, 44), (8, 46), (14, 48), (18, 50), (16, 52), (22, 54), (12, 56), (10, 58), (4, 60), (0, 62), (24, 64),
    (32, 66), (28, 68), (30, 70), (26, 72), (6, 74)]

def optimizedBody226_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_30 optimizedBody226_3

def optimizedBody226_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody226_29, 226, 10)) (some 224) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody226_31, 226, 11))

def optimizedBody226_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 20), (8, 8), (14, 14), (18, 18), (16, 16), (22, 22), (12, 12), (10, 10), (4, 4), (0, 0), (24, 24), (32, 32),
    (28, 28), (30, 30), (26, 26), (6, 6)]

def optimizedBody226_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_33

def optimizedBody226_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_32 optimizedBody226_34

def optimizedBody226_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_28 optimizedBody226_35

def optimizedBody226_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_36

def optimizedBody226_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 44), (8, 8), (14, 48), (18, 50), (16, 16), (22, 54), (12, 12), (10, 58), (4, 4), (0, 0), (24, 24), (32, 66),
    (28, 28), (30, 70), (26, 26), (6, 6)]

def optimizedBody226_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_38

def optimizedBody226_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody226_37 optimizedBody226_39

def optimizedBody226_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 20), (64, 8), (56, 14), (68, 18), (48, 16), (62, 22), (54, 12), (10, 10), (50, 4), (0, 0), (58, 24), (70, 32),
    (46, 28), (60, 30), (52, 26), (66, 6)]

def optimizedBody226_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody226_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_41 optimizedBody226_42

def optimizedBody226_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_43

def optimizedBody226_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_40 optimizedBody226_44

def optimizedBody226_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_27 optimizedBody226_45

def optimizedBody226_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_15 optimizedBody226_46

def optimizedBody226_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_47

def optimizedBody226_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_26 optimizedBody226_48

def optimizedBody226_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_22 optimizedBody226_49

def optimizedBody226_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_50

def optimizedBody226_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_21 optimizedBody226_51

def optimizedBody226_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_17 optimizedBody226_52

def optimizedBody226_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_16 optimizedBody226_53

def optimizedBody226_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_15 optimizedBody226_54

def optimizedBody226_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_55

def optimizedBody226_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody226_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_57

def optimizedBody226_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody226_56 optimizedBody226_58

def optimizedBody226_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (64, 4), (56, 6), (68, 8), (48, 12), (62, 14), (54, 16), (10, 10), (50, 18), (0, 0), (58, 20), (70, 22),
    (46, 24), (60, 26), (52, 28), (66, 30)]

def optimizedBody226_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_60

def optimizedBody226_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_59 optimizedBody226_61

def optimizedBody226_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_15 optimizedBody226_62

def optimizedBody226_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_14 optimizedBody226_63

def optimizedBody226_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody226_64 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody226_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody226_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody226_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_66 optimizedBody226_67

def optimizedBody226_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_14 optimizedBody226_68

def optimizedBody226_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_69

def optimizedBody226_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_65 optimizedBody226_70

def optimizedBody226_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_13 optimizedBody226_71

def optimizedBody226_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_72

def optimizedBody226_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_12 optimizedBody226_73

def optimizedBody226_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_74

def optimizedBody226_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_11 optimizedBody226_75

def optimizedBody226_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_7 optimizedBody226_76

def optimizedBody226_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_6 optimizedBody226_77

def optimizedBody226_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_5 optimizedBody226_78

def optimizedBody226_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody226_0 optimizedBody226_79

def optimized226 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(226, 14, optimizedBody226_80)
end InitECandidate.Proofs.StackAnalysis
