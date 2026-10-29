import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source702
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles702
def optimizedBody702_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 8), (48, 4), (58, 2), (60, 6)]

def optimizedBody702_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (58, 58), (60, 60)]

def optimizedBody702_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (58, 58), (60, 60)]

def optimizedBody702_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody702_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_2 optimizedBody702_3

def optimizedBody702_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_1, 702, 2)) (some 69) ([]) (some (2, optimizedBody702_4, 702, 3))

def optimizedBody702_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody702_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1152#64)

def optimizedBody702_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (56, 0), (58, 58), (60, 60)]

def optimizedBody702_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_10 optimizedBody702_3

def optimizedBody702_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_9, 702, 4)) (some 68) ([2]) (some (2, optimizedBody702_11, 702, 5))

def optimizedBody702_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 0), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_15 optimizedBody702_3

def optimizedBody702_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_14, 702, 6)) (some 68) ([2]) (some (2, optimizedBody702_16, 702, 7))

def optimizedBody702_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_20 optimizedBody702_3

def optimizedBody702_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_19, 702, 8)) (some 68) ([2]) (some (2, optimizedBody702_21, 702, 9))

def optimizedBody702_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody702_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_25 optimizedBody702_3

def optimizedBody702_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_24, 702, 10)) (some 68) ([2]) (some (2, optimizedBody702_26, 702, 11))

def optimizedBody702_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody702_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (64, 0), (60, 60)]

def optimizedBody702_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (64, 64), (60, 60)]

def optimizedBody702_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (64, 64), (60, 60)]

def optimizedBody702_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_31 optimizedBody702_3

def optimizedBody702_33 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_30, 702, 12)) (some 68) ([2]) (some (2, optimizedBody702_32, 702, 13))

def optimizedBody702_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 0), (64, 64), (60, 60)]

def optimizedBody702_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (4, 60)]

def optimizedBody702_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (4, 60)]

def optimizedBody702_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_36 optimizedBody702_3

def optimizedBody702_38 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_35, 702, 14)) (some 68) ([2]) (some (2, optimizedBody702_37, 702, 15))

def optimizedBody702_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody702_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1152#64)

def optimizedBody702_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2), (54, 54), (56, 56), (58, 58), (60, 8),
    (62, 62), (64, 64), (66, 4)]

def optimizedBody702_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (4, 66)]

def optimizedBody702_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (4, 66)]

def optimizedBody702_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_43 optimizedBody702_3

def optimizedBody702_45 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_42, 702, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody702_44, 702, 17))

def optimizedBody702_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 4)]

def optimizedBody702_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64), (8, 66)]

def optimizedBody702_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (8, 66)]

def optimizedBody702_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_48 optimizedBody702_3

def optimizedBody702_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_47, 702, 18)) (some 77) ([2, 4, 6]) (some (2, optimizedBody702_49, 702, 19))

def optimizedBody702_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody702_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody702_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody702_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody702_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody702_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (66, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 8)]

def optimizedBody702_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (66, 66), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody702_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (66, 66), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody702_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_58 optimizedBody702_3

def optimizedBody702_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_57, 702, 20)) (some 681) ([2, 4, 6]) (some (2, optimizedBody702_59, 702, 21))

def optimizedBody702_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody702_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (66, 66), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58), (60, 60),
    (62, 62), (64, 64)]

def optimizedBody702_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (66, 66), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody702_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (66, 66), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody702_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_64 optimizedBody702_3

def optimizedBody702_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_63, 702, 22)) (some 686) ([2, 4]) (some (2, optimizedBody702_65, 702, 23))

def optimizedBody702_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 4), (66, 66), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64)]

def optimizedBody702_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 46), (48, 48), (66, 66), (6, 50), (52, 52), (54, 54), (56, 56), (8, 58), (10, 60), (62, 62), (64, 64)]

def optimizedBody702_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (66, 66), (6, 50), (52, 52), (54, 54), (56, 56), (8, 58), (10, 60), (62, 62),
    (64, 64)]

def optimizedBody702_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_69 optimizedBody702_3

def optimizedBody702_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_68, 702, 24)) (some 686) ([2, 4]) (some (2, optimizedBody702_70, 702, 25))

def optimizedBody702_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 64#64)

def optimizedBody702_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 4), (48, 48), (66, 66), (50, 6), (52, 52), (54, 54), (56, 56), (58, 8), (60, 10), (62, 62), (64, 64),
    (0, 0)]

def optimizedBody702_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody702_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody702_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 46), (10, 50), (6, 58), (4, 60), (68, 0)]

def optimizedBody702_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 10), (10, 10), (12, 12), (44, 44), (46, 12), (48, 48), (50, 66), (52, 10), (54, 52),
    (56, 54), (58, 56), (60, 6), (62, 4), (64, 62), (66, 64), (68, 68)]

def optimizedBody702_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody702_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody702_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_79 optimizedBody702_3

def optimizedBody702_81 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_78, 702, 26)) (some 694) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody702_80, 702, 27))

def optimizedBody702_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody702_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (6, 62), (62, 64), (66, 66),
    (68, 68)]

def optimizedBody702_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (6, 62), (62, 64),
    (66, 66), (68, 68)]

def optimizedBody702_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_84 optimizedBody702_3

def optimizedBody702_86 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_83, 702, 28)) (some 676) ([2, 4]) (some (2, optimizedBody702_85, 702, 29))

def optimizedBody702_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60),
    (64, 6), (62, 62), (66, 66), (68, 68)]

def optimizedBody702_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody702_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody702_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_89 optimizedBody702_3

def optimizedBody702_91 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_88, 702, 30)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_90, 702, 31))

def optimizedBody702_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64),
    (62, 62), (66, 66), (68, 68)]

def optimizedBody702_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (64, 64), (62, 62), (66, 66),
    (68, 68)]

def optimizedBody702_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody702_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_94 optimizedBody702_3

def optimizedBody702_96 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_93, 702, 32)) (some 676) ([2, 4]) (some (2, optimizedBody702_95, 702, 33))

def optimizedBody702_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 6),
    (64, 64), (62, 62), (66, 66), (68, 68)]

def optimizedBody702_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody702_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody702_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_99 optimizedBody702_3

def optimizedBody702_101 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_98, 702, 34)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_100, 702, 35))

def optimizedBody702_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody702_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 60),
    (64, 64), (62, 62), (66, 66), (68, 68)]

def optimizedBody702_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (62, 62),
    (66, 66), (8, 68)]

def optimizedBody702_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (62, 62),
    (66, 66), (8, 68)]

def optimizedBody702_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_105 optimizedBody702_3

def optimizedBody702_107 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_104, 702, 36)) (some 691) ([2, 4, 6]) (some (2, optimizedBody702_106, 702, 37))

def optimizedBody702_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 11637723931993326632#64)

def optimizedBody702_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (68, 8)]

def optimizedBody702_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody702_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody702_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody702_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 46), (10, 66), (8, 52), (6, 60), (4, 64)]

def optimizedBody702_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 48), (50, 50), (52, 8), (54, 54),
    (56, 56), (58, 58), (60, 6), (62, 4), (64, 62), (66, 10), (68, 68)]

def optimizedBody702_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (6, 62), (64, 64), (66, 66),
    (68, 68)]

def optimizedBody702_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (6, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody702_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_116 optimizedBody702_3

def optimizedBody702_118 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_115, 702, 38)) (some 694) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody702_117, 702, 39))

def optimizedBody702_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60),
    (62, 6), (64, 64), (66, 66), (68, 68)]

def optimizedBody702_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (62, 62), (64, 64), (66, 66),
    (68, 68)]

def optimizedBody702_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody702_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_121 optimizedBody702_3

def optimizedBody702_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_120, 702, 40)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_122, 702, 41))

def optimizedBody702_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 6),
    (62, 62), (64, 64), (66, 66), (68, 68)]

def optimizedBody702_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (8, 66),
    (68, 68)]

def optimizedBody702_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (8, 66), (68, 68)]

def optimizedBody702_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_126 optimizedBody702_3

def optimizedBody702_128 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_125, 702, 42)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_127, 702, 43))

def optimizedBody702_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody702_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 8), (68, 68)]

def optimizedBody702_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (10, 50), (50, 52), (54, 54), (56, 56), (58, 58), (52, 60), (60, 62), (62, 64),
    (66, 66), (8, 68)]

def optimizedBody702_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (10, 50), (50, 52), (54, 54), (56, 56), (58, 58), (52, 60), (60, 62), (62, 64),
    (66, 66), (8, 68)]

def optimizedBody702_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_132 optimizedBody702_3

def optimizedBody702_134 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_131, 702, 44)) (some 692) ([2, 4, 6, 8]) (some (2, optimizedBody702_133, 702, 45))

def optimizedBody702_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (10, 10), (50, 50), (54, 54), (56, 56), (58, 58), (52, 52), (60, 60), (62, 62),
    (66, 66), (8, 8)]

def optimizedBody702_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_135

def optimizedBody702_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_134 optimizedBody702_136

def optimizedBody702_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_130 optimizedBody702_137

def optimizedBody702_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_138

def optimizedBody702_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_129 optimizedBody702_139

def optimizedBody702_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_140

def optimizedBody702_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_128 optimizedBody702_141

def optimizedBody702_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_124 optimizedBody702_142

def optimizedBody702_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_143

def optimizedBody702_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_123 optimizedBody702_144

def optimizedBody702_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_119 optimizedBody702_145

def optimizedBody702_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_146

def optimizedBody702_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_118 optimizedBody702_147

def optimizedBody702_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_114 optimizedBody702_148

def optimizedBody702_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_149

def optimizedBody702_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_113 optimizedBody702_150

def optimizedBody702_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_151

def optimizedBody702_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (10, 50), (50, 52), (54, 54), (56, 56), (58, 58), (52, 60), (60, 64), (62, 62),
    (66, 66), (8, 68)]

def optimizedBody702_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_153

def optimizedBody702_155 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody702_152 optimizedBody702_154

def optimizedBody702_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 290499802545784960#64)

def optimizedBody702_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 46), (10, 10), (8, 50), (6, 52), (4, 60)]

def optimizedBody702_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 48), (50, 10), (52, 8), (54, 54),
    (56, 56), (58, 58), (60, 6), (62, 4), (64, 62), (66, 66), (68, 68)]

def optimizedBody702_159 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_115, 702, 46)) (some 694) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody702_117, 702, 47))

def optimizedBody702_160 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_120, 702, 48)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_122, 702, 49))

def optimizedBody702_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (8, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68)]

def optimizedBody702_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (8, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody702_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_162 optimizedBody702_3

def optimizedBody702_164 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_161, 702, 50)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_163, 702, 51))

def optimizedBody702_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 8), (52, 6), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68)]

def optimizedBody702_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (10, 50), (50, 52), (4, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64), (6, 66),
    (0, 68)]

def optimizedBody702_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (10, 50), (50, 52), (4, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (6, 66), (0, 68)]

def optimizedBody702_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_167 optimizedBody702_3

def optimizedBody702_169 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_166, 702, 52)) (some 692) ([2, 4, 6, 8]) (some (2, optimizedBody702_168, 702, 53))

def optimizedBody702_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (10, 10), (50, 50), (4, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (6, 6),
    (0, 0)]

def optimizedBody702_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_170

def optimizedBody702_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_169 optimizedBody702_171

def optimizedBody702_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_165 optimizedBody702_172

def optimizedBody702_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_173

def optimizedBody702_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_129 optimizedBody702_174

def optimizedBody702_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_175

def optimizedBody702_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_164 optimizedBody702_176

def optimizedBody702_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_124 optimizedBody702_177

def optimizedBody702_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_178

def optimizedBody702_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_160 optimizedBody702_179

def optimizedBody702_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_119 optimizedBody702_180

def optimizedBody702_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_181

def optimizedBody702_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_159 optimizedBody702_182

def optimizedBody702_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_158 optimizedBody702_183

def optimizedBody702_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_184

def optimizedBody702_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_157 optimizedBody702_185

def optimizedBody702_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_186

def optimizedBody702_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (10, 10), (50, 50), (4, 54), (54, 56), (56, 58), (58, 52), (60, 60), (62, 62), (6, 66),
    (0, 68)]

def optimizedBody702_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_188

def optimizedBody702_190 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody702_187 optimizedBody702_189

def optimizedBody702_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (66, 10), (50, 50), (52, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 6),
    (0, 0)]

def optimizedBody702_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody702_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_191 optimizedBody702_192

def optimizedBody702_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_193

def optimizedBody702_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_190 optimizedBody702_194

def optimizedBody702_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_112 optimizedBody702_195

def optimizedBody702_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_111 optimizedBody702_196

def optimizedBody702_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_110 optimizedBody702_197

def optimizedBody702_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_109 optimizedBody702_198

def optimizedBody702_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_156 optimizedBody702_199

def optimizedBody702_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_200

def optimizedBody702_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_155 optimizedBody702_201

def optimizedBody702_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_112 optimizedBody702_202

def optimizedBody702_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_111 optimizedBody702_203

def optimizedBody702_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_110 optimizedBody702_204

def optimizedBody702_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_109 optimizedBody702_205

def optimizedBody702_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_108 optimizedBody702_206

def optimizedBody702_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_207

def optimizedBody702_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_107 optimizedBody702_208

def optimizedBody702_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_103 optimizedBody702_209

def optimizedBody702_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_210

def optimizedBody702_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_102 optimizedBody702_211

def optimizedBody702_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_212

def optimizedBody702_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_101 optimizedBody702_213

def optimizedBody702_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_97 optimizedBody702_214

def optimizedBody702_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_215

def optimizedBody702_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_96 optimizedBody702_216

def optimizedBody702_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_92 optimizedBody702_217

def optimizedBody702_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_218

def optimizedBody702_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_91 optimizedBody702_219

def optimizedBody702_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_87 optimizedBody702_220

def optimizedBody702_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_221

def optimizedBody702_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_86 optimizedBody702_222

def optimizedBody702_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_82 optimizedBody702_223

def optimizedBody702_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_224

def optimizedBody702_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_81 optimizedBody702_225

def optimizedBody702_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_77 optimizedBody702_226

def optimizedBody702_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_227

def optimizedBody702_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_76 optimizedBody702_228

def optimizedBody702_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_75 optimizedBody702_229

def optimizedBody702_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_230

def optimizedBody702_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_231

def optimizedBody702_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody702_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_233

def optimizedBody702_235 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody702_232 optimizedBody702_234

def optimizedBody702_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (48, 6), (66, 8), (50, 10), (52, 12), (54, 14), (56, 16), (58, 18), (60, 20), (62, 22), (64, 24),
    (0, 0)]

def optimizedBody702_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_236

def optimizedBody702_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_235 optimizedBody702_237

def optimizedBody702_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_238

def optimizedBody702_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_74 optimizedBody702_239

def optimizedBody702_241 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody702_240 (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody702_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 52), (4, 64), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody702_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (6, 64)]

def optimizedBody702_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (6, 64)]

def optimizedBody702_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_244 optimizedBody702_3

def optimizedBody702_246 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_243, 702, 54)) (some 697) ([2, 4]) (some (2, optimizedBody702_245, 702, 55))

def optimizedBody702_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody702_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody702_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 6)]

def optimizedBody702_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64)]

def optimizedBody702_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64)]

def optimizedBody702_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_251 optimizedBody702_3

def optimizedBody702_253 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_250, 702, 56)) (some 697) ([2, 4]) (some (2, optimizedBody702_252, 702, 57))

def optimizedBody702_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody702_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody702_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody702_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody702_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody702_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_258 optimizedBody702_3

def optimizedBody702_260 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_257, 702, 58)) (some 697) ([2, 4]) (some (2, optimizedBody702_259, 702, 59))

def optimizedBody702_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 0)]

def optimizedBody702_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62)]

def optimizedBody702_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62)]

def optimizedBody702_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_263 optimizedBody702_3

def optimizedBody702_265 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_262, 702, 60)) (some 697) ([2, 4]) (some (2, optimizedBody702_264, 702, 61))

def optimizedBody702_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody702_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 6)]

def optimizedBody702_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody702_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody702_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_269 optimizedBody702_3

def optimizedBody702_271 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_268, 702, 62)) (some 697) ([2, 4]) (some (2, optimizedBody702_270, 702, 63))

def optimizedBody702_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody702_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (62, 0)]

def optimizedBody702_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62)]

def optimizedBody702_275 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_262, 702, 64)) (some 681) ([2, 4, 6]) (some (2, optimizedBody702_264, 702, 65))

def optimizedBody702_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody702_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody702_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 46), (48, 48), (8, 50), (10, 52), (54, 54), (56, 56), (6, 58), (4, 60), (62, 62)]

def optimizedBody702_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (48, 48), (8, 50), (10, 52), (54, 54), (56, 56), (6, 58), (4, 60), (62, 62)]

def optimizedBody702_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_279 optimizedBody702_3

def optimizedBody702_281 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_278, 702, 66)) (some 697) ([2, 4]) (some (2, optimizedBody702_280, 702, 67))

def optimizedBody702_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody702_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 48), (50, 8), (52, 10), (54, 54),
    (56, 56), (58, 6), (60, 4), (62, 62)]

def optimizedBody702_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (6, 60), (62, 62)]

def optimizedBody702_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (6, 60), (62, 62)]

def optimizedBody702_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_285 optimizedBody702_3

def optimizedBody702_287 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_284, 702, 68)) (some 694) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody702_286, 702, 69))

def optimizedBody702_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58), (60, 6),
    (62, 62)]

def optimizedBody702_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (6, 58), (60, 60), (62, 62)]

def optimizedBody702_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (6, 58), (60, 60), (62, 62)]

def optimizedBody702_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_290 optimizedBody702_3

def optimizedBody702_292 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_289, 702, 70)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_291, 702, 71))

def optimizedBody702_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 6), (60, 60),
    (62, 62)]

def optimizedBody702_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody702_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody702_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_295 optimizedBody702_3

def optimizedBody702_297 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_294, 702, 72)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_296, 702, 73))

def optimizedBody702_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 6), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody702_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (46, 48), (8, 50), (48, 52), (50, 54), (6, 56), (4, 58), (10, 60)]

def optimizedBody702_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (46, 48), (8, 50), (48, 52), (50, 54), (6, 56), (4, 58), (10, 60)]

def optimizedBody702_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_300 optimizedBody702_3

def optimizedBody702_302 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_299, 702, 74)) (some 692) ([2, 4, 6, 8]) (some (2, optimizedBody702_301, 702, 75))

def optimizedBody702_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 4)]

def optimizedBody702_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (6, 54)]

def optimizedBody702_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (6, 54)]

def optimizedBody702_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_305 optimizedBody702_3

def optimizedBody702_307 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody702_304, 702, 76)) (some 694) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody702_306, 702, 77))

def optimizedBody702_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody702_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody702_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody702_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_310 optimizedBody702_3

def optimizedBody702_312 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_309, 702, 78)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_311, 702, 79))

def optimizedBody702_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody702_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody702_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody702_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_315 optimizedBody702_3

def optimizedBody702_317 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_314, 702, 80)) (some 675) ([2, 4, 6]) (some (2, optimizedBody702_316, 702, 81))

def optimizedBody702_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody702_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody702_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody702_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_320 optimizedBody702_3

def optimizedBody702_322 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_319, 702, 82)) (some 70) ([2]) (some (2, optimizedBody702_321, 702, 83))

def optimizedBody702_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody702_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody702_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_323 optimizedBody702_324

def optimizedBody702_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_74 optimizedBody702_325

def optimizedBody702_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_326

def optimizedBody702_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_322 optimizedBody702_327

def optimizedBody702_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_318 optimizedBody702_328

def optimizedBody702_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_329

def optimizedBody702_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_317 optimizedBody702_330

def optimizedBody702_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_313 optimizedBody702_331

def optimizedBody702_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_332

def optimizedBody702_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_312 optimizedBody702_333

def optimizedBody702_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_308 optimizedBody702_334

def optimizedBody702_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_335

def optimizedBody702_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_307 optimizedBody702_336

def optimizedBody702_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_303 optimizedBody702_337

def optimizedBody702_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_338

def optimizedBody702_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_282 optimizedBody702_339

def optimizedBody702_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_340

def optimizedBody702_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_302 optimizedBody702_341

def optimizedBody702_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_298 optimizedBody702_342

def optimizedBody702_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_343

def optimizedBody702_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_129 optimizedBody702_344

def optimizedBody702_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_345

def optimizedBody702_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_297 optimizedBody702_346

def optimizedBody702_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_293 optimizedBody702_347

def optimizedBody702_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_348

def optimizedBody702_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_292 optimizedBody702_349

def optimizedBody702_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_288 optimizedBody702_350

def optimizedBody702_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_351

def optimizedBody702_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_287 optimizedBody702_352

def optimizedBody702_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_283 optimizedBody702_353

def optimizedBody702_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_354

def optimizedBody702_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_282 optimizedBody702_355

def optimizedBody702_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_356

def optimizedBody702_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_281 optimizedBody702_357

def optimizedBody702_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_267 optimizedBody702_358

def optimizedBody702_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_277 optimizedBody702_359

def optimizedBody702_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_360

def optimizedBody702_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_276 optimizedBody702_361

def optimizedBody702_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_102 optimizedBody702_362

def optimizedBody702_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_363

def optimizedBody702_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_275 optimizedBody702_364

def optimizedBody702_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_274 optimizedBody702_365

def optimizedBody702_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_366

def optimizedBody702_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_273 optimizedBody702_367

def optimizedBody702_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_272 optimizedBody702_368

def optimizedBody702_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_369

def optimizedBody702_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_370

def optimizedBody702_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_271 optimizedBody702_371

def optimizedBody702_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_267 optimizedBody702_372

def optimizedBody702_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_52 optimizedBody702_373

def optimizedBody702_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_374

def optimizedBody702_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_266 optimizedBody702_375

def optimizedBody702_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_102 optimizedBody702_376

def optimizedBody702_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_377

def optimizedBody702_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_265 optimizedBody702_378

def optimizedBody702_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_261 optimizedBody702_379

def optimizedBody702_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_380

def optimizedBody702_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_260 optimizedBody702_381

def optimizedBody702_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_256 optimizedBody702_382

def optimizedBody702_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_255 optimizedBody702_383

def optimizedBody702_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_61 optimizedBody702_384

def optimizedBody702_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_254 optimizedBody702_385

def optimizedBody702_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_386

def optimizedBody702_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_387

def optimizedBody702_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_253 optimizedBody702_388

def optimizedBody702_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_249 optimizedBody702_389

def optimizedBody702_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_248 optimizedBody702_390

def optimizedBody702_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_102 optimizedBody702_391

def optimizedBody702_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_247 optimizedBody702_392

def optimizedBody702_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_393

def optimizedBody702_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_394

def optimizedBody702_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_246 optimizedBody702_395

def optimizedBody702_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_242 optimizedBody702_396

def optimizedBody702_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_397

def optimizedBody702_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_241 optimizedBody702_398

def optimizedBody702_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_73 optimizedBody702_399

def optimizedBody702_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_400

def optimizedBody702_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_72 optimizedBody702_401

def optimizedBody702_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_402

def optimizedBody702_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_71 optimizedBody702_403

def optimizedBody702_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_67 optimizedBody702_404

def optimizedBody702_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_405

def optimizedBody702_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_61 optimizedBody702_406

def optimizedBody702_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_407

def optimizedBody702_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_66 optimizedBody702_408

def optimizedBody702_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_62 optimizedBody702_409

def optimizedBody702_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_410

def optimizedBody702_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_61 optimizedBody702_411

def optimizedBody702_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_412

def optimizedBody702_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_60 optimizedBody702_413

def optimizedBody702_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_56 optimizedBody702_414

def optimizedBody702_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_55 optimizedBody702_415

def optimizedBody702_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_54 optimizedBody702_416

def optimizedBody702_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_53 optimizedBody702_417

def optimizedBody702_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_52 optimizedBody702_418

def optimizedBody702_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_419

def optimizedBody702_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_420

def optimizedBody702_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_50 optimizedBody702_421

def optimizedBody702_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_46 optimizedBody702_422

def optimizedBody702_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_40 optimizedBody702_423

def optimizedBody702_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_39 optimizedBody702_424

def optimizedBody702_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_425

def optimizedBody702_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_45 optimizedBody702_426

def optimizedBody702_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_41 optimizedBody702_427

def optimizedBody702_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_40 optimizedBody702_428

def optimizedBody702_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_39 optimizedBody702_429

def optimizedBody702_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_430

def optimizedBody702_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_38 optimizedBody702_431

def optimizedBody702_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_34 optimizedBody702_432

def optimizedBody702_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_433

def optimizedBody702_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_434

def optimizedBody702_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_33 optimizedBody702_435

def optimizedBody702_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_29 optimizedBody702_436

def optimizedBody702_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_437

def optimizedBody702_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_438

def optimizedBody702_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_27 optimizedBody702_439

def optimizedBody702_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_23 optimizedBody702_440

def optimizedBody702_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_7 optimizedBody702_441

def optimizedBody702_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_442

def optimizedBody702_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_22 optimizedBody702_443

def optimizedBody702_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_18 optimizedBody702_444

def optimizedBody702_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_7 optimizedBody702_445

def optimizedBody702_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_446

def optimizedBody702_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_17 optimizedBody702_447

def optimizedBody702_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_448

def optimizedBody702_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_7 optimizedBody702_449

def optimizedBody702_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_450

def optimizedBody702_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_12 optimizedBody702_451

def optimizedBody702_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_8 optimizedBody702_452

def optimizedBody702_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_7 optimizedBody702_453

def optimizedBody702_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_454

def optimizedBody702_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_5 optimizedBody702_455

def optimizedBody702_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_0 optimizedBody702_456

def oracle702 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                  26
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    27
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 31))) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 32
                        (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 32
                        (Flapjack.Spt.ls 31))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 27
                      (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23)))
                      29 (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26))) 29
                      (Flapjack.Spt.ls 33))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 30 Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 33 (Flapjack.Spt.ls 24)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 31
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 (Flapjack.Spt.ls 24))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 30)))
                      2 (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      29 (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 2 (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 27)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    23
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))) 24
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.ls 29)) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))
                      0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 6))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                    0 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 30 (Flapjack.Spt.ls 26))))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 30
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 30
                        (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    25
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 25
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 (Flapjack.Spt.ls 31)) 27
                      (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 33)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
                    30
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.ls 34)) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.ls 22))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28)))
                      31 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 32 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    29
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 25)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 22))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))
                      22 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 23 (Flapjack.Spt.ls 27)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                    29 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                    26
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 31
                        (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 23)) 31
                        (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    26
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 26
                      (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22)))
                      28 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4))) 28
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6)))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 34)) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                30
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 29 (Flapjack.Spt.ls 0)) 30
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.ls 23))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 29)))
                      32 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      28 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 (Flapjack.Spt.ls 27))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    30
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.ls 28)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
                      24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    30 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 29 (Flapjack.Spt.ls 25))))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 4 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)) 29
                        (Flapjack.Spt.ls 29))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    24
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 (Flapjack.Spt.ls 30)) 0
                      (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.ls 32)) 22
                      (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                    1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 22)))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 29))))))
                24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 0)) 28
                      (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 2))) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 25 Flapjack.Spt.ln)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27)))
                      30 (Flapjack.Spt.ls 3))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 31 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    28
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 22 (Flapjack.Spt.ls 3)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28)) 28 Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 29))) 33
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 32 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 30
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24 (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 30)) 24 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    28
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 25)))))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)) 33 (Flapjack.Spt.ls 31))
                    23
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25))) 29
                      (Flapjack.Spt.ls 33)))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 28
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 34)) 28
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 33 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 30))))
                    23
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
                24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 32 (Flapjack.Spt.ls 29))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 30
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 32 (Flapjack.Spt.ls 33))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26)) 26 (Flapjack.Spt.ls 33))
                    25
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 27))) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 30
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    25
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22 (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln)))
                30
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 23)))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27))) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23))) 27
                      (Flapjack.Spt.ls 23)))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 26
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 32)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 23 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    30
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    30 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 30 (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 30 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 29
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 30 (Flapjack.Spt.ls 32)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27)) 27 (Flapjack.Spt.ls 34))
                    26
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 28))) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 27 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 31
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    26
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 23 (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29)) 23 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    27
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 24)))))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) 24 (Flapjack.Spt.ls 30))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))) 28
                      (Flapjack.Spt.ls 24)))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 27
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 33)) 27
                      (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    22
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)) 31
                        (Flapjack.Spt.ls 28))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 31 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 31 (Flapjack.Spt.ls 31))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25)) 25 (Flapjack.Spt.ls 32))
                    24
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26))) 30
                      (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 29
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 29
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31))))
                    24
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 34)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                      26 (Flapjack.Spt.ls 22)))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 25
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 31)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    29
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 33
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 29 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 28
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 29 (Flapjack.Spt.ls 30))))))))))))
def optimized702 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(702, 5, optimizedBody702_457)
end InitECandidate.Proofs.SmallStages.Oracles702
