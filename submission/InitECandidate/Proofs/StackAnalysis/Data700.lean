import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody700_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (56, 2)]

def optimizedBody700_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (56, 56)]

def optimizedBody700_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (56, 56)]

def optimizedBody700_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody700_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_2 optimizedBody700_3

def optimizedBody700_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_1, 700, 2)) (some 657) ([]) (some (2, optimizedBody700_4, 700, 3))

def optimizedBody700_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody700_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (56, 56)]

def optimizedBody700_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_7, 700, 4)) (some 69) ([]) (some (2, optimizedBody700_4, 700, 5))

def optimizedBody700_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody700_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 0), (50, 50), (56, 56)]

def optimizedBody700_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (56, 56)]

def optimizedBody700_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (56, 56)]

def optimizedBody700_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_12 optimizedBody700_3

def optimizedBody700_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_11, 700, 6)) (some 68) ([2]) (some (2, optimizedBody700_13, 700, 7))

def optimizedBody700_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def optimizedBody700_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 0), (56, 56)]

def optimizedBody700_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52), (56, 56)]

def optimizedBody700_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (56, 56)]

def optimizedBody700_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_18 optimizedBody700_3

def optimizedBody700_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_17, 700, 8)) (some 68) ([2]) (some (2, optimizedBody700_19, 700, 9))

def optimizedBody700_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (68, 0), (50, 50), (52, 52), (56, 56)]

def optimizedBody700_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (68, 68), (50, 50), (52, 52), (56, 56)]

def optimizedBody700_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (68, 68), (50, 50), (52, 52), (56, 56)]

def optimizedBody700_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_23 optimizedBody700_3

def optimizedBody700_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_22, 700, 10)) (some 68) ([2]) (some (2, optimizedBody700_24, 700, 11))

def optimizedBody700_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (68, 68), (50, 50), (52, 52), (56, 56), (60, 0)]

def optimizedBody700_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (68, 68), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (68, 68), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_28 optimizedBody700_3

def optimizedBody700_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_27, 700, 12)) (some 68) ([2]) (some (2, optimizedBody700_29, 700, 13))

def optimizedBody700_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1152#64)

def optimizedBody700_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (68, 68), (58, 0), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (68, 68), (58, 58), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (68, 68), (58, 58), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_34 optimizedBody700_3

def optimizedBody700_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_33, 700, 14)) (some 68) ([2]) (some (2, optimizedBody700_35, 700, 15))

def optimizedBody700_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 0), (68, 68), (58, 58), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_39 optimizedBody700_3

def optimizedBody700_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_38, 700, 16)) (some 68) ([2]) (some (2, optimizedBody700_40, 700, 17))

def optimizedBody700_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody700_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 0), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (52, 52), (56, 56), (60, 60)]

def optimizedBody700_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_45 optimizedBody700_3

def optimizedBody700_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_44, 700, 18)) (some 68) ([2]) (some (2, optimizedBody700_46, 700, 19))

def optimizedBody700_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (52, 52), (56, 56), (60, 60), (70, 0)]

def optimizedBody700_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (52, 52), (56, 56), (60, 60), (70, 70)]

def optimizedBody700_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (52, 52), (56, 56), (60, 60), (70, 70)]

def optimizedBody700_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_50 optimizedBody700_3

def optimizedBody700_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_49, 700, 20)) (some 68) ([2]) (some (2, optimizedBody700_51, 700, 21))

def optimizedBody700_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 0), (52, 52), (56, 56), (60, 60),
    (70, 70)]

def optimizedBody700_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (56, 56), (60, 60),
    (70, 70)]

def optimizedBody700_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (56, 56), (60, 60),
    (70, 70)]

def optimizedBody700_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_55 optimizedBody700_3

def optimizedBody700_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody700_54, 700, 22)) (some 68) ([2]) (some (2, optimizedBody700_56, 700, 23))

def optimizedBody700_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 0), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (56, 56),
    (60, 60), (70, 70)]

def optimizedBody700_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (56, 56),
    (60, 60), (70, 70)]

def optimizedBody700_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (56, 56),
    (60, 60), (70, 70)]

def optimizedBody700_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_60 optimizedBody700_3

def optimizedBody700_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody700_59, 700, 24)) (some 68) ([2]) (some (2, optimizedBody700_61, 700, 25))

def optimizedBody700_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (54, 0),
    (56, 56), (60, 60), (70, 70)]

def optimizedBody700_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (4, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (54, 54),
    (56, 56), (60, 60), (70, 70)]

def optimizedBody700_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (54, 54),
    (56, 56), (60, 60), (70, 70)]

def optimizedBody700_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_65 optimizedBody700_3

def optimizedBody700_67 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_64, 700, 26)) (some 68) ([2]) (some (2, optimizedBody700_66, 700, 27))

def optimizedBody700_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody700_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody700_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 4), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52),
    (54, 54), (56, 56), (60, 60), (70, 70), (72, 0)]

def optimizedBody700_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (4, 54),
    (56, 56), (60, 60), (70, 70), (72, 72)]

def optimizedBody700_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52), (4, 54),
    (56, 56), (60, 60), (70, 70), (72, 72)]

def optimizedBody700_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_72 optimizedBody700_3

def optimizedBody700_74 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_71, 700, 28)) (some 679) ([2, 4]) (some (2, optimizedBody700_73, 700, 29))

def optimizedBody700_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (50, 50), (62, 62), (66, 66), (52, 52),
    (54, 4), (56, 56), (60, 60), (70, 70), (72, 72)]

def optimizedBody700_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (12, 50), (62, 62), (66, 66), (14, 52), (50, 54),
    (8, 56), (60, 60), (52, 70), (54, 72)]

def optimizedBody700_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (12, 50), (62, 62), (66, 66), (14, 52), (50, 54),
    (8, 56), (60, 60), (52, 70), (54, 72)]

def optimizedBody700_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_77 optimizedBody700_3

def optimizedBody700_79 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_76, 700, 30)) (some 679) ([2, 4]) (some (2, optimizedBody700_78, 700, 31))

def optimizedBody700_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody700_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody700_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (64, 64), (68, 68), (58, 58), (12, 12), (62, 62), (66, 66), (14, 14), (50, 50),
    (56, 0), (8, 8), (60, 60), (10, 10), (52, 52), (54, 54)]

def optimizedBody700_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody700_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody700_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody700_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody700_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody700_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody700_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody700_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 14), (44, 44), (46, 46), (48, 48), (50, 64), (68, 68), (54, 58), (56, 12), (58, 62), (60, 66), (62, 14),
    (64, 50), (66, 56), (52, 8), (70, 60), (72, 10), (76, 52), (74, 2), (78, 54)]

def optimizedBody700_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 68), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 52), (70, 70), (72, 72), (76, 76), (0, 74), (78, 78)]

def optimizedBody700_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 68), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 52), (70, 70), (72, 72), (76, 76), (0, 74), (78, 78)]

def optimizedBody700_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_92 optimizedBody700_3

def optimizedBody700_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_91, 700, 32)) (some 695) ([2, 4]) (some (2, optimizedBody700_93, 700, 33))

def optimizedBody700_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody700_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody700_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (52, 44)]

def optimizedBody700_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 52)]

def optimizedBody700_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 52)]

def optimizedBody700_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_99 optimizedBody700_3

def optimizedBody700_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_98, 700, 34)) (some 70) ([2]) (some (2, optimizedBody700_100, 700, 35))

def optimizedBody700_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody700_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody700_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody700_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_103 optimizedBody700_104

def optimizedBody700_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_102 optimizedBody700_105

def optimizedBody700_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_106

def optimizedBody700_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_101 optimizedBody700_107

def optimizedBody700_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_97 optimizedBody700_108

def optimizedBody700_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_109

def optimizedBody700_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (4, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68),
    (70, 70), (72, 72), (76, 76), (0, 0), (78, 78), (44, 44)]

def optimizedBody700_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody700_110 optimizedBody700_111

def optimizedBody700_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody700_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody700_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62), (64, 64),
    (66, 66), (68, 68), (4, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62), (64, 64),
    (66, 66), (68, 68), (4, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_117 optimizedBody700_3

def optimizedBody700_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_116, 700, 36)) (some 696) ([2, 4]) (some (2, optimizedBody700_118, 700, 37))

def optimizedBody700_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (62, 44)]

def optimizedBody700_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 62)]

def optimizedBody700_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 62)]

def optimizedBody700_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_122 optimizedBody700_3

def optimizedBody700_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_121, 700, 38)) (some 70) ([2]) (some (2, optimizedBody700_123, 700, 39))

def optimizedBody700_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody700_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_103 optimizedBody700_125

def optimizedBody700_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_102 optimizedBody700_126

def optimizedBody700_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_127

def optimizedBody700_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_124 optimizedBody700_128

def optimizedBody700_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_120 optimizedBody700_129

def optimizedBody700_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_130

def optimizedBody700_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 6), (64, 64), (66, 66), (68, 68),
    (4, 4), (72, 72), (76, 76), (78, 78), (44, 44)]

def optimizedBody700_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody700_131 optimizedBody700_132

def optimizedBody700_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody700_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 3486998266802970665#64)

def optimizedBody700_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13281191951274694749#64)

def optimizedBody700_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 2896914383306846353#64)

def optimizedBody700_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4891460686036598785#64)

def optimizedBody700_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody700_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52),
    (54, 54), (56, 56), (58, 58), (60, 60), (62, 6), (64, 64), (66, 66), (68, 68), (70, 4), (72, 72), (76, 76),
    (78, 78)]

def optimizedBody700_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (4, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (4, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_142 optimizedBody700_3

def optimizedBody700_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_141, 700, 40)) (some 684) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody700_143, 700, 41))

def optimizedBody700_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 4), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_147 optimizedBody700_3

def optimizedBody700_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_146, 700, 42)) (some 681) ([2, 4]) (some (2, optimizedBody700_148, 700, 43))

def optimizedBody700_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52)]

def optimizedBody700_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 52)]

def optimizedBody700_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_151 optimizedBody700_3

def optimizedBody700_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_150, 700, 44)) (some 70) ([2]) (some (2, optimizedBody700_152, 700, 45))

def optimizedBody700_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_153 optimizedBody700_128

def optimizedBody700_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_97 optimizedBody700_154

def optimizedBody700_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_155

def optimizedBody700_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (6, 6), (4, 4), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68),
    (70, 70), (72, 72), (76, 76), (78, 78), (44, 44)]

def optimizedBody700_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody700_156 optimizedBody700_157

def optimizedBody700_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6),
    (54, 4), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (76, 76),
    (78, 78)]

def optimizedBody700_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_161 optimizedBody700_3

def optimizedBody700_163 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_160, 700, 46)) (some 684) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody700_162, 700, 47))

def optimizedBody700_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (4, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (4, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_166 optimizedBody700_3

def optimizedBody700_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_165, 700, 48)) (some 681) ([2, 4]) (some (2, optimizedBody700_167, 700, 49))

def optimizedBody700_169 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_121, 700, 50)) (some 70) ([2]) (some (2, optimizedBody700_123, 700, 51))

def optimizedBody700_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_169 optimizedBody700_128

def optimizedBody700_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_120 optimizedBody700_170

def optimizedBody700_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_171

def optimizedBody700_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (4, 4), (64, 64), (66, 66), (68, 68),
    (70, 70), (72, 72), (76, 76), (78, 78), (44, 44)]

def optimizedBody700_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody700_172 optimizedBody700_173

def optimizedBody700_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 4),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody700_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_177 optimizedBody700_3

def optimizedBody700_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_176, 700, 52)) (some 681) ([2, 4]) (some (2, optimizedBody700_178, 700, 53))

def optimizedBody700_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 0), (76, 76), (78, 78)]

def optimizedBody700_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (26, 66), (66, 68), (68, 70), (70, 72), (8, 74), (52, 76), (74, 78)]

def optimizedBody700_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (26, 66), (66, 68), (68, 70), (70, 72), (8, 74), (52, 76), (74, 78)]

def optimizedBody700_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_182 optimizedBody700_3

def optimizedBody700_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_181, 700, 54)) (some 681) ([2, 4]) (some (2, optimizedBody700_183, 700, 55))

def optimizedBody700_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody700_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody700_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody700_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 52), (74, 74)]

def optimizedBody700_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (60, 60), (4, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody700_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (60, 60), (4, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody700_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_190 optimizedBody700_3

def optimizedBody700_192 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_189, 700, 56)) (some 686) ([2, 4]) (some (2, optimizedBody700_191, 700, 57))

def optimizedBody700_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 0), (60, 60), (62, 4),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody700_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (6, 50), (52, 52), (54, 54), (56, 56), (8, 58), (4, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (0, 72), (74, 74)]

def optimizedBody700_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (52, 52), (54, 54), (56, 56), (8, 58), (4, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (0, 72), (74, 74)]

def optimizedBody700_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_195 optimizedBody700_3

def optimizedBody700_197 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_194, 700, 58)) (some 687) ([2, 4]) (some (2, optimizedBody700_196, 700, 59))

def optimizedBody700_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 6), (52, 52), (54, 54), (56, 56), (58, 8),
    (60, 4), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 0), (74, 74)]

def optimizedBody700_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (6, 72), (74, 74)]

def optimizedBody700_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (6, 72), (74, 74)]

def optimizedBody700_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_200 optimizedBody700_3

def optimizedBody700_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_199, 700, 60)) (some 693) ([2, 4, 6, 8]) (some (2, optimizedBody700_201, 700, 61))

def optimizedBody700_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 6), (74, 74)]

def optimizedBody700_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (62, 62), (4, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody700_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (62, 62), (4, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody700_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_205 optimizedBody700_3

def optimizedBody700_207 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_204, 700, 62)) (some 668) ([2, 4, 6]) (some (2, optimizedBody700_206, 700, 63))

def optimizedBody700_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 6),
    (62, 62), (64, 4), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody700_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (0, 50), (4, 52), (16, 54), (12, 56), (24, 58), (22, 60), (14, 62), (20, 64), (8, 66),
    (18, 68), (6, 70), (52, 72), (54, 74)]

def optimizedBody700_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52), (16, 54), (12, 56), (24, 58), (22, 60), (14, 62), (20, 64),
    (8, 66), (18, 68), (6, 70), (52, 72), (54, 74)]

def optimizedBody700_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_210 optimizedBody700_3

def optimizedBody700_212 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_209, 700, 64)) (some 668) ([2, 4, 6]) (some (2, optimizedBody700_211, 700, 65))

def optimizedBody700_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1#64)

def optimizedBody700_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (0, 0), (4, 4), (16, 16), (12, 12), (24, 24), (22, 22), (14, 14), (20, 20), (26, 26),
    (8, 8), (18, 18), (6, 6), (52, 52), (54, 54)]

def optimizedBody700_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_213 optimizedBody700_214

def optimizedBody700_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_215

def optimizedBody700_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_212 optimizedBody700_216

def optimizedBody700_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_208 optimizedBody700_217

def optimizedBody700_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_218

def optimizedBody700_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_207 optimizedBody700_219

def optimizedBody700_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_203 optimizedBody700_220

def optimizedBody700_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_221

def optimizedBody700_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_202 optimizedBody700_222

def optimizedBody700_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_198 optimizedBody700_223

def optimizedBody700_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_224

def optimizedBody700_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_197 optimizedBody700_225

def optimizedBody700_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_193 optimizedBody700_226

def optimizedBody700_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_227

def optimizedBody700_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_192 optimizedBody700_228

def optimizedBody700_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_188 optimizedBody700_229

def optimizedBody700_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_230

def optimizedBody700_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (0, 0), (4, 4), (16, 54), (12, 56), (24, 58), (22, 60), (14, 62), (20, 64), (26, 26),
    (8, 66), (18, 68), (6, 70), (52, 52), (54, 74)]

def optimizedBody700_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_232

def optimizedBody700_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody700_231 optimizedBody700_233

def optimizedBody700_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody700_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (64, 0), (68, 4), (58, 16), (12, 12), (62, 24), (66, 22), (14, 14), (50, 20), (56, 26),
    (8, 8), (60, 18), (10, 10), (52, 52), (54, 54)]

def optimizedBody700_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody700_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_236 optimizedBody700_237

def optimizedBody700_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_235 optimizedBody700_238

def optimizedBody700_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_95 optimizedBody700_239

def optimizedBody700_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_240

def optimizedBody700_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_234 optimizedBody700_241

def optimizedBody700_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_187 optimizedBody700_242

def optimizedBody700_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_186 optimizedBody700_243

def optimizedBody700_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_185 optimizedBody700_244

def optimizedBody700_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_245

def optimizedBody700_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_184 optimizedBody700_246

def optimizedBody700_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_180 optimizedBody700_247

def optimizedBody700_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_102 optimizedBody700_248

def optimizedBody700_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_249

def optimizedBody700_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_250

def optimizedBody700_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_179 optimizedBody700_251

def optimizedBody700_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_175 optimizedBody700_252

def optimizedBody700_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_139 optimizedBody700_253

def optimizedBody700_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_254

def optimizedBody700_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_255

def optimizedBody700_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_256

def optimizedBody700_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_174 optimizedBody700_257

def optimizedBody700_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_96 optimizedBody700_258

def optimizedBody700_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_113 optimizedBody700_259

def optimizedBody700_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_260

def optimizedBody700_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_168 optimizedBody700_261

def optimizedBody700_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_164 optimizedBody700_262

def optimizedBody700_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_102 optimizedBody700_263

def optimizedBody700_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_264

def optimizedBody700_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_265

def optimizedBody700_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_163 optimizedBody700_266

def optimizedBody700_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_159 optimizedBody700_267

def optimizedBody700_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_102 optimizedBody700_268

def optimizedBody700_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_138 optimizedBody700_269

def optimizedBody700_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_137 optimizedBody700_270

def optimizedBody700_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_136 optimizedBody700_271

def optimizedBody700_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_135 optimizedBody700_272

def optimizedBody700_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_134 optimizedBody700_273

def optimizedBody700_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_274

def optimizedBody700_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_275

def optimizedBody700_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_158 optimizedBody700_276

def optimizedBody700_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_96 optimizedBody700_277

def optimizedBody700_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_113 optimizedBody700_278

def optimizedBody700_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_279

def optimizedBody700_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_149 optimizedBody700_280

def optimizedBody700_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_145 optimizedBody700_281

def optimizedBody700_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_139 optimizedBody700_282

def optimizedBody700_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_283

def optimizedBody700_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_284

def optimizedBody700_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_144 optimizedBody700_285

def optimizedBody700_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_140 optimizedBody700_286

def optimizedBody700_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_139 optimizedBody700_287

def optimizedBody700_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_138 optimizedBody700_288

def optimizedBody700_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_137 optimizedBody700_289

def optimizedBody700_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_136 optimizedBody700_290

def optimizedBody700_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_135 optimizedBody700_291

def optimizedBody700_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_134 optimizedBody700_292

def optimizedBody700_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_293

def optimizedBody700_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_294

def optimizedBody700_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_133 optimizedBody700_295

def optimizedBody700_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_96 optimizedBody700_296

def optimizedBody700_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_113 optimizedBody700_297

def optimizedBody700_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_298

def optimizedBody700_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_119 optimizedBody700_299

def optimizedBody700_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_115 optimizedBody700_300

def optimizedBody700_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_114 optimizedBody700_301

def optimizedBody700_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_113 optimizedBody700_302

def optimizedBody700_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_303

def optimizedBody700_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_304

def optimizedBody700_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_112 optimizedBody700_305

def optimizedBody700_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_96 optimizedBody700_306

def optimizedBody700_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_95 optimizedBody700_307

def optimizedBody700_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_308

def optimizedBody700_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_94 optimizedBody700_309

def optimizedBody700_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_90 optimizedBody700_310

def optimizedBody700_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_89 optimizedBody700_311

def optimizedBody700_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_88 optimizedBody700_312

def optimizedBody700_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_87 optimizedBody700_313

def optimizedBody700_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_86 optimizedBody700_314

def optimizedBody700_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_85 optimizedBody700_315

def optimizedBody700_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_84 optimizedBody700_316

def optimizedBody700_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_317

def optimizedBody700_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody700_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_319

def optimizedBody700_321 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody700_318 optimizedBody700_320

def optimizedBody700_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (48, 4), (64, 6), (68, 16), (58, 18), (12, 12), (62, 20), (66, 22), (14, 14), (50, 24), (56, 26),
    (8, 8), (60, 28), (10, 10), (52, 30), (54, 32)]

def optimizedBody700_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_322

def optimizedBody700_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_321 optimizedBody700_323

def optimizedBody700_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_83 optimizedBody700_324

def optimizedBody700_326 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody700_325 (Flapjack.Spt.bn
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
  Flapjack.Spt.ln)

def optimizedBody700_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody700_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56)]

def optimizedBody700_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody700_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (4, 50), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody700_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (6, 50), (50, 52), (52, 54)]

def optimizedBody700_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (6, 50), (50, 52), (52, 54)]

def optimizedBody700_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_332 optimizedBody700_3

def optimizedBody700_334 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody700_331, 700, 66)) (some 691) ([2, 4]) (some (2, optimizedBody700_333, 700, 67))

def optimizedBody700_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52)]

def optimizedBody700_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (48, 50), (0, 52)]

def optimizedBody700_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (0, 52)]

def optimizedBody700_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_337 optimizedBody700_3

def optimizedBody700_339 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_336, 700, 68)) (some 668) ([2, 4, 6]) (some (2, optimizedBody700_338, 700, 69))

def optimizedBody700_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody700_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody700_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody700_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody700_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551232#64))

def optimizedBody700_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 44#64)

def optimizedBody700_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 2)]

def optimizedBody700_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody700_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody700_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_348 optimizedBody700_3

def optimizedBody700_350 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_347, 700, 70)) (some 692) ([2, 4, 6, 8]) (some (2, optimizedBody700_349, 700, 71))

def optimizedBody700_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody700_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 384#64)

def optimizedBody700_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 50)]

def optimizedBody700_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody700_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody700_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_355 optimizedBody700_3

def optimizedBody700_357 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_354, 700, 72)) (some 78) ([2, 4]) (some (2, optimizedBody700_356, 700, 73))

def optimizedBody700_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 15230403791020821917#64)

def optimizedBody700_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody700_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 754611498739239741#64)

def optimizedBody700_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody700_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7381016538464732716#64)

def optimizedBody700_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody700_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1011752739694698287#64)

def optimizedBody700_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody700_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 384#64)

def optimizedBody700_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody700_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody700_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody700_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_369 optimizedBody700_3

def optimizedBody700_371 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_368, 700, 74)) (some 79) ([2, 4, 6]) (some (2, optimizedBody700_370, 700, 75))

def optimizedBody700_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 4)]

def optimizedBody700_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_372

def optimizedBody700_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_371 optimizedBody700_373

def optimizedBody700_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_367 optimizedBody700_374

def optimizedBody700_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_366 optimizedBody700_375

def optimizedBody700_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_340 optimizedBody700_376

def optimizedBody700_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_365 optimizedBody700_377

def optimizedBody700_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_378

def optimizedBody700_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_364 optimizedBody700_379

def optimizedBody700_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_363 optimizedBody700_380

def optimizedBody700_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_381

def optimizedBody700_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_362 optimizedBody700_382

def optimizedBody700_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_361 optimizedBody700_383

def optimizedBody700_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_384

def optimizedBody700_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_360 optimizedBody700_385

def optimizedBody700_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_359 optimizedBody700_386

def optimizedBody700_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_387

def optimizedBody700_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_358 optimizedBody700_388

def optimizedBody700_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_389

def optimizedBody700_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_390

def optimizedBody700_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_357 optimizedBody700_391

def optimizedBody700_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_353 optimizedBody700_392

def optimizedBody700_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_352 optimizedBody700_393

def optimizedBody700_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_351 optimizedBody700_394

def optimizedBody700_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_395

def optimizedBody700_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_350 optimizedBody700_396

def optimizedBody700_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_346 optimizedBody700_397

def optimizedBody700_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_345 optimizedBody700_398

def optimizedBody700_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_344 optimizedBody700_399

def optimizedBody700_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_343 optimizedBody700_400

def optimizedBody700_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_342 optimizedBody700_401

def optimizedBody700_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_341 optimizedBody700_402

def optimizedBody700_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_340 optimizedBody700_403

def optimizedBody700_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_404

def optimizedBody700_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_339 optimizedBody700_405

def optimizedBody700_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_335 optimizedBody700_406

def optimizedBody700_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_407

def optimizedBody700_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_334 optimizedBody700_408

def optimizedBody700_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_330 optimizedBody700_409

def optimizedBody700_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_410

def optimizedBody700_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 48), (46, 0)]

def optimizedBody700_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_412

def optimizedBody700_414 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody700_411 optimizedBody700_413

def optimizedBody700_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody700_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody700_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody700_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_417 optimizedBody700_3

def optimizedBody700_419 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody700_416, 700, 76)) (some 70) ([2]) (some (2, optimizedBody700_418, 700, 77))

def optimizedBody700_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody700_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_420 optimizedBody700_125

def optimizedBody700_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_421

def optimizedBody700_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_419 optimizedBody700_422

def optimizedBody700_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_415 optimizedBody700_423

def optimizedBody700_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_424

def optimizedBody700_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_414 optimizedBody700_425

def optimizedBody700_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_329 optimizedBody700_426

def optimizedBody700_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_328 optimizedBody700_427

def optimizedBody700_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_327 optimizedBody700_428

def optimizedBody700_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_429

def optimizedBody700_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_326 optimizedBody700_430

def optimizedBody700_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_82 optimizedBody700_431

def optimizedBody700_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_432

def optimizedBody700_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_81 optimizedBody700_433

def optimizedBody700_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_80 optimizedBody700_434

def optimizedBody700_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_435

def optimizedBody700_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_79 optimizedBody700_436

def optimizedBody700_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_75 optimizedBody700_437

def optimizedBody700_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_69 optimizedBody700_438

def optimizedBody700_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_439

def optimizedBody700_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_440

def optimizedBody700_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_74 optimizedBody700_441

def optimizedBody700_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_70 optimizedBody700_442

def optimizedBody700_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_69 optimizedBody700_443

def optimizedBody700_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_68 optimizedBody700_444

def optimizedBody700_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_445

def optimizedBody700_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_67 optimizedBody700_446

def optimizedBody700_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_63 optimizedBody700_447

def optimizedBody700_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_42 optimizedBody700_448

def optimizedBody700_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_449

def optimizedBody700_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_62 optimizedBody700_450

def optimizedBody700_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_58 optimizedBody700_451

def optimizedBody700_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_42 optimizedBody700_452

def optimizedBody700_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_453

def optimizedBody700_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_57 optimizedBody700_454

def optimizedBody700_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_53 optimizedBody700_455

def optimizedBody700_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_42 optimizedBody700_456

def optimizedBody700_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_457

def optimizedBody700_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_52 optimizedBody700_458

def optimizedBody700_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_48 optimizedBody700_459

def optimizedBody700_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_42 optimizedBody700_460

def optimizedBody700_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_461

def optimizedBody700_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_47 optimizedBody700_462

def optimizedBody700_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_43 optimizedBody700_463

def optimizedBody700_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_42 optimizedBody700_464

def optimizedBody700_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_465

def optimizedBody700_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_41 optimizedBody700_466

def optimizedBody700_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_37 optimizedBody700_467

def optimizedBody700_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_31 optimizedBody700_468

def optimizedBody700_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_469

def optimizedBody700_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_36 optimizedBody700_470

def optimizedBody700_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_32 optimizedBody700_471

def optimizedBody700_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_31 optimizedBody700_472

def optimizedBody700_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_473

def optimizedBody700_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_30 optimizedBody700_474

def optimizedBody700_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_26 optimizedBody700_475

def optimizedBody700_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_15 optimizedBody700_476

def optimizedBody700_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_477

def optimizedBody700_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_25 optimizedBody700_478

def optimizedBody700_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_21 optimizedBody700_479

def optimizedBody700_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_9 optimizedBody700_480

def optimizedBody700_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_481

def optimizedBody700_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_20 optimizedBody700_482

def optimizedBody700_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_16 optimizedBody700_483

def optimizedBody700_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_15 optimizedBody700_484

def optimizedBody700_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_485

def optimizedBody700_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_14 optimizedBody700_486

def optimizedBody700_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_10 optimizedBody700_487

def optimizedBody700_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_9 optimizedBody700_488

def optimizedBody700_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_489

def optimizedBody700_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_8 optimizedBody700_490

def optimizedBody700_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_1 optimizedBody700_491

def optimizedBody700_493 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_6 optimizedBody700_492

def optimizedBody700_494 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_5 optimizedBody700_493

def optimizedBody700_495 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody700_0 optimizedBody700_494

def optimized700 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(700, 3, optimizedBody700_495)
end InitECandidate.Proofs.StackAnalysis
