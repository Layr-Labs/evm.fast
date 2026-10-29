import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody800_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (52, 4), (56, 2), (44, 6)]

def optimizedBody800_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (52, 52), (56, 56), (44, 44)]

def optimizedBody800_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (56, 56), (44, 44)]

def optimizedBody800_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody800_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_2 optimizedBody800_3

def optimizedBody800_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_1, 800, 2)) (some 69) ([]) (some (2, optimizedBody800_4, 800, 3))

def optimizedBody800_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody800_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody800_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (54, 0), (56, 56), (44, 44)]

def optimizedBody800_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (52, 52), (54, 54), (56, 56), (4, 44)]

def optimizedBody800_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (54, 54), (56, 56), (4, 44)]

def optimizedBody800_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_10 optimizedBody800_3

def optimizedBody800_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_9, 800, 4)) (some 68) ([2]) (some (2, optimizedBody800_11, 800, 5))

def optimizedBody800_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody800_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody800_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody800_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody800_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody800_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody800_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody800_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (44, 0), (48, 2), (52, 52), (60, 2), (50, 6), (54, 54), (56, 56), (58, 8), (62, 10),
    (64, 4), (66, 12)]

def optimizedBody800_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (6, 48), (52, 52), (60, 60), (50, 50), (54, 54), (56, 56), (58, 58), (62, 62), (4, 64), (66, 66)]

def optimizedBody800_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (6, 48), (52, 52), (60, 60), (50, 50), (54, 54), (56, 56), (58, 58), (62, 62), (4, 64),
    (66, 66)]

def optimizedBody800_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_22 optimizedBody800_3

def optimizedBody800_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_21, 800, 6)) (some 729) ([2, 4]) (some (2, optimizedBody800_23, 800, 7))

def optimizedBody800_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody800_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (0, 0), (6, 6), (52, 52), (60, 60), (50, 50), (54, 54), (56, 56), (58, 58), (62, 62), (64, 4),
    (66, 66)]

def optimizedBody800_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody800_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody800_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 6), (6, 64), (46, 46), (44, 44), (48, 0), (50, 6), (52, 52), (60, 60), (54, 50), (56, 54), (58, 56),
    (62, 58), (64, 62), (66, 64), (68, 66)]

def optimizedBody800_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (0, 48), (6, 50), (4, 52), (60, 60), (50, 54), (54, 56), (56, 58), (58, 62), (62, 64), (64, 66),
    (8, 68)]

def optimizedBody800_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (0, 48), (6, 50), (4, 52), (60, 60), (50, 54), (54, 56), (56, 58), (58, 62), (62, 64),
    (64, 66), (8, 68)]

def optimizedBody800_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_31 optimizedBody800_3

def optimizedBody800_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody800_30, 800, 8)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_32, 800, 9))

def optimizedBody800_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody800_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (44, 44), (0, 0), (6, 6), (52, 4), (60, 60), (50, 50), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64),
    (66, 8)]

def optimizedBody800_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody800_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_35 optimizedBody800_36

def optimizedBody800_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_34 optimizedBody800_37

def optimizedBody800_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_27 optimizedBody800_38

def optimizedBody800_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_39

def optimizedBody800_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_33 optimizedBody800_40

def optimizedBody800_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_29 optimizedBody800_41

def optimizedBody800_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_42

def optimizedBody800_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody800_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_44

def optimizedBody800_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody800_43 optimizedBody800_45

def optimizedBody800_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (44, 4), (0, 0), (6, 6), (52, 8), (60, 10), (50, 12), (54, 14), (56, 16), (58, 18), (62, 20), (64, 22),
    (66, 24)]

def optimizedBody800_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_47

def optimizedBody800_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_46 optimizedBody800_48

def optimizedBody800_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_28 optimizedBody800_49

def optimizedBody800_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_27 optimizedBody800_50

def optimizedBody800_52 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody800_51 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody800_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 66), (4, 52), (6, 6), (46, 46), (44, 44), (48, 6), (52, 52), (60, 60), (50, 50), (54, 54), (56, 56), (58, 58),
    (62, 62), (64, 64), (66, 66)]

def optimizedBody800_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (4, 48), (52, 52), (60, 60), (48, 50), (50, 54), (54, 56), (0, 58), (62, 62), (6, 64), (66, 66)]

def optimizedBody800_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (4, 48), (52, 52), (60, 60), (48, 50), (50, 54), (54, 56), (0, 58), (62, 62), (6, 64),
    (66, 66)]

def optimizedBody800_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_55 optimizedBody800_3

def optimizedBody800_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_54, 800, 10)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_56, 800, 11))

def optimizedBody800_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (46, 46), (44, 44), (56, 4), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (58, 0),
    (62, 62), (64, 6), (66, 66)]

def optimizedBody800_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (6, 58), (62, 62), (64, 64), (4, 66)]

def optimizedBody800_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (6, 58), (62, 62), (64, 64),
    (4, 66)]

def optimizedBody800_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_60 optimizedBody800_3

def optimizedBody800_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_59, 800, 12)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_61, 800, 13))

def optimizedBody800_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (46, 46), (44, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (58, 6),
    (62, 62), (64, 64), (66, 4)]

def optimizedBody800_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (0, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (4, 58), (58, 62), (62, 64), (66, 66)]

def optimizedBody800_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (4, 58), (58, 62), (62, 64),
    (66, 66)]

def optimizedBody800_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_65 optimizedBody800_3

def optimizedBody800_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_64, 800, 14)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_66, 800, 15))

def optimizedBody800_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody800_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody800_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody800_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody800_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody800_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1528#64)))

def optimizedBody800_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12#64)

def optimizedBody800_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (46, 46), (44, 2), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54),
    (64, 4), (58, 58), (62, 62), (66, 66)]

def optimizedBody800_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (4, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (64, 64), (58, 58), (62, 62), (6, 66)]

def optimizedBody800_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (64, 64), (58, 58), (62, 62),
    (6, 66)]

def optimizedBody800_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_77 optimizedBody800_3

def optimizedBody800_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_76, 800, 16)) (some 744) ([2, 4, 6, 8]) (some (2, optimizedBody800_78, 800, 17))

def optimizedBody800_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 4), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 54), (64, 64),
    (58, 58), (62, 62), (68, 6)]

def optimizedBody800_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (4, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (0, 54), (64, 64), (58, 58), (62, 62), (68, 68)]

def optimizedBody800_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (0, 54), (64, 64), (58, 58), (62, 62),
    (68, 68)]

def optimizedBody800_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_82 optimizedBody800_3

def optimizedBody800_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_81, 800, 18)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_83, 800, 19))

def optimizedBody800_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody800_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (44, 4), (56, 56), (52, 52), (60, 60), (48, 48), (50, 50), (54, 0), (64, 64), (58, 58),
    (62, 62), (66, 2), (68, 68)]

def optimizedBody800_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (10, 44), (56, 56), (52, 52), (60, 60), (8, 48), (44, 50), (54, 54), (64, 64), (50, 58), (58, 62),
    (48, 66), (62, 68)]

def optimizedBody800_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (10, 44), (56, 56), (52, 52), (60, 60), (8, 48), (44, 50), (54, 54), (64, 64), (50, 58), (58, 62),
    (48, 66), (62, 68)]

def optimizedBody800_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_88 optimizedBody800_3

def optimizedBody800_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody800_87, 800, 20)) (some 729) ([2, 4]) (some (2, optimizedBody800_89, 800, 21))

def optimizedBody800_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (10, 10), (2, 2), (56, 56), (52, 52), (60, 60), (8, 8), (44, 44), (54, 54), (64, 64), (50, 50), (58, 58),
    (48, 48), (62, 62)]

def optimizedBody800_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody800_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody800_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody800_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody800_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8)]

def optimizedBody800_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody800_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody800_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody800_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551224#64))

def optimizedBody800_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody800_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5216#64)

def optimizedBody800_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody800_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 8), (4, 4), (6, 10), (46, 46), (44, 10), (48, 2), (50, 56), (52, 52), (54, 60), (56, 8), (58, 44), (60, 54),
    (62, 64), (64, 50), (66, 58), (68, 48), (70, 62)]

def optimizedBody800_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62), (0, 64), (66, 66),
    (68, 68), (70, 70)]

def optimizedBody800_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody800_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_106 optimizedBody800_3

def optimizedBody800_108 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody800_105, 800, 22)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_107, 800, 23))

def optimizedBody800_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58), (60, 60), (62, 62),
    (64, 0), (66, 66), (68, 68), (70, 70)]

def optimizedBody800_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64), (6, 66),
    (68, 68), (70, 70)]

def optimizedBody800_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (6, 66), (68, 68), (70, 70)]

def optimizedBody800_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_111 optimizedBody800_3

def optimizedBody800_113 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody800_110, 800, 24)) (some 740) ([2, 4]) (some (2, optimizedBody800_112, 800, 25))

def optimizedBody800_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 4), (66, 6), (68, 68), (70, 70)]

def optimizedBody800_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64), (66, 66),
    (68, 68), (70, 70)]

def optimizedBody800_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody800_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_116 optimizedBody800_3

def optimizedBody800_118 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody800_115, 800, 26)) (some 739) ([2, 4, 6]) (some (2, optimizedBody800_117, 800, 27))

def optimizedBody800_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 4), (66, 66), (68, 68), (70, 70)]

def optimizedBody800_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody800_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody800_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_121 optimizedBody800_3

def optimizedBody800_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody800_120, 800, 28)) (some 735) ([2, 4, 6]) (some (2, optimizedBody800_122, 800, 29))

def optimizedBody800_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 0),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody800_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (8, 56), (58, 58), (4, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70)]

def optimizedBody800_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (8, 56), (58, 58), (4, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70)]

def optimizedBody800_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_126 optimizedBody800_3

def optimizedBody800_128 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody800_125, 800, 30)) (some 732) ([2]) (some (2, optimizedBody800_127, 800, 31))

def optimizedBody800_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody800_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody800_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody800_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody800_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_131 optimizedBody800_132

def optimizedBody800_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_133

def optimizedBody800_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody800_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_135 optimizedBody800_132

def optimizedBody800_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_136

def optimizedBody800_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody800_134 optimizedBody800_137

def optimizedBody800_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody800_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_130 optimizedBody800_139

def optimizedBody800_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_140

def optimizedBody800_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_85 optimizedBody800_139

def optimizedBody800_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_142

def optimizedBody800_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody800_141 optimizedBody800_143

def optimizedBody800_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody800_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody800_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody800_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 8), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 8), (58, 58), (60, 4), (62, 62),
    (64, 64), (66, 66), (68, 0), (70, 70)]

def optimizedBody800_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (10, 44), (0, 48), (6, 50), (24, 52), (22, 54), (8, 56), (20, 58), (4, 60), (18, 62), (16, 64), (14, 66),
    (48, 68), (12, 70)]

def optimizedBody800_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (10, 44), (0, 48), (6, 50), (24, 52), (22, 54), (8, 56), (20, 58), (4, 60), (18, 62), (16, 64),
    (14, 66), (48, 68), (12, 70)]

def optimizedBody800_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_150 optimizedBody800_3

def optimizedBody800_152 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody800_149, 800, 32)) (some 729) ([2, 4]) (some (2, optimizedBody800_151, 800, 33))

def optimizedBody800_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (10, 10), (0, 0), (6, 6), (24, 24), (22, 22), (8, 8), (20, 20), (4, 4), (18, 18), (16, 16), (14, 14),
    (48, 48), (12, 12)]

def optimizedBody800_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_153

def optimizedBody800_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_152 optimizedBody800_154

def optimizedBody800_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_148 optimizedBody800_155

def optimizedBody800_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_147 optimizedBody800_156

def optimizedBody800_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (10, 44), (0, 48), (6, 50), (24, 52), (22, 54), (8, 8), (20, 58), (4, 4), (18, 62), (16, 64), (14, 66),
    (48, 0), (12, 70)]

def optimizedBody800_159 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody800_157 optimizedBody800_158

def optimizedBody800_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody800_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (10, 10), (2, 2), (56, 6), (52, 24), (60, 22), (8, 8), (44, 20), (54, 4), (64, 18), (50, 16), (58, 14),
    (48, 48), (62, 12)]

def optimizedBody800_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_161 optimizedBody800_36

def optimizedBody800_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_160 optimizedBody800_162

def optimizedBody800_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_27 optimizedBody800_163

def optimizedBody800_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_164

def optimizedBody800_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_159 optimizedBody800_165

def optimizedBody800_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_146 optimizedBody800_166

def optimizedBody800_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_145 optimizedBody800_167

def optimizedBody800_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_168

def optimizedBody800_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_144 optimizedBody800_169

def optimizedBody800_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_85 optimizedBody800_170

def optimizedBody800_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_27 optimizedBody800_171

def optimizedBody800_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_172

def optimizedBody800_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_138 optimizedBody800_173

def optimizedBody800_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_130 optimizedBody800_174

def optimizedBody800_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_129 optimizedBody800_175

def optimizedBody800_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_176

def optimizedBody800_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_128 optimizedBody800_177

def optimizedBody800_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_124 optimizedBody800_178

def optimizedBody800_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_179

def optimizedBody800_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_123 optimizedBody800_180

def optimizedBody800_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_119 optimizedBody800_181

def optimizedBody800_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_182

def optimizedBody800_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_118 optimizedBody800_183

def optimizedBody800_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_114 optimizedBody800_184

def optimizedBody800_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_185

def optimizedBody800_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_113 optimizedBody800_186

def optimizedBody800_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_109 optimizedBody800_187

def optimizedBody800_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_188

def optimizedBody800_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_108 optimizedBody800_189

def optimizedBody800_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_104 optimizedBody800_190

def optimizedBody800_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_103 optimizedBody800_191

def optimizedBody800_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_102 optimizedBody800_192

def optimizedBody800_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_101 optimizedBody800_193

def optimizedBody800_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_100 optimizedBody800_194

def optimizedBody800_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_99 optimizedBody800_195

def optimizedBody800_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_98 optimizedBody800_196

def optimizedBody800_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_97 optimizedBody800_197

def optimizedBody800_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_96 optimizedBody800_198

def optimizedBody800_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_95 optimizedBody800_199

def optimizedBody800_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_94 optimizedBody800_200

def optimizedBody800_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_93 optimizedBody800_201

def optimizedBody800_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_15 optimizedBody800_202

def optimizedBody800_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_203

def optimizedBody800_205 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody800_204 optimizedBody800_45

def optimizedBody800_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 0), (10, 10), (2, 2), (56, 4), (52, 6), (60, 12), (8, 8), (44, 14), (54, 16), (64, 18), (50, 20), (58, 22),
    (48, 24), (62, 26)]

def optimizedBody800_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_206

def optimizedBody800_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_205 optimizedBody800_207

def optimizedBody800_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_92 optimizedBody800_208

def optimizedBody800_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_15 optimizedBody800_209

def optimizedBody800_211 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody800_210 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody800_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (44, 46), (46, 48)]

def optimizedBody800_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody800_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody800_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_214 optimizedBody800_3

def optimizedBody800_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody800_213, 800, 34)) (some 70) ([2]) (some (2, optimizedBody800_215, 800, 35))

def optimizedBody800_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody800_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody800_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_217 optimizedBody800_218

def optimizedBody800_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_219

def optimizedBody800_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_216 optimizedBody800_220

def optimizedBody800_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_212 optimizedBody800_221

def optimizedBody800_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_222

def optimizedBody800_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_211 optimizedBody800_223

def optimizedBody800_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_91 optimizedBody800_224

def optimizedBody800_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_225

def optimizedBody800_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_85 optimizedBody800_226

def optimizedBody800_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_227

def optimizedBody800_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_90 optimizedBody800_228

def optimizedBody800_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_86 optimizedBody800_229

def optimizedBody800_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_85 optimizedBody800_230

def optimizedBody800_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_231

def optimizedBody800_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_84 optimizedBody800_232

def optimizedBody800_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_80 optimizedBody800_233

def optimizedBody800_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_234

def optimizedBody800_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_79 optimizedBody800_235

def optimizedBody800_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_75 optimizedBody800_236

def optimizedBody800_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_74 optimizedBody800_237

def optimizedBody800_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_73 optimizedBody800_238

def optimizedBody800_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_72 optimizedBody800_239

def optimizedBody800_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_71 optimizedBody800_240

def optimizedBody800_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_70 optimizedBody800_241

def optimizedBody800_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_69 optimizedBody800_242

def optimizedBody800_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_68 optimizedBody800_243

def optimizedBody800_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_244

def optimizedBody800_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_67 optimizedBody800_245

def optimizedBody800_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_63 optimizedBody800_246

def optimizedBody800_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_247

def optimizedBody800_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_62 optimizedBody800_248

def optimizedBody800_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_58 optimizedBody800_249

def optimizedBody800_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_250

def optimizedBody800_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_57 optimizedBody800_251

def optimizedBody800_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_53 optimizedBody800_252

def optimizedBody800_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_253

def optimizedBody800_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_52 optimizedBody800_254

def optimizedBody800_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_26 optimizedBody800_255

def optimizedBody800_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_256

def optimizedBody800_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_25 optimizedBody800_257

def optimizedBody800_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_258

def optimizedBody800_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_24 optimizedBody800_259

def optimizedBody800_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_20 optimizedBody800_260

def optimizedBody800_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_19 optimizedBody800_261

def optimizedBody800_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_15 optimizedBody800_262

def optimizedBody800_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_18 optimizedBody800_263

def optimizedBody800_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_15 optimizedBody800_264

def optimizedBody800_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_17 optimizedBody800_265

def optimizedBody800_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_15 optimizedBody800_266

def optimizedBody800_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_16 optimizedBody800_267

def optimizedBody800_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_15 optimizedBody800_268

def optimizedBody800_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_14 optimizedBody800_269

def optimizedBody800_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_13 optimizedBody800_270

def optimizedBody800_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_271

def optimizedBody800_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_12 optimizedBody800_272

def optimizedBody800_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_8 optimizedBody800_273

def optimizedBody800_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_7 optimizedBody800_274

def optimizedBody800_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_6 optimizedBody800_275

def optimizedBody800_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_5 optimizedBody800_276

def optimizedBody800_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody800_0 optimizedBody800_277

def optimized800 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(800, 4, optimizedBody800_278)
end InitECandidate.Proofs.StackAnalysis
