import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source619
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles619
def optimizedBody619_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody619_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody619_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody619_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody619_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_2 optimizedBody619_3

def optimizedBody619_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_1, 619, 2)) (some 494) ([]) (some (2, optimizedBody619_4, 619, 3))

def optimizedBody619_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody619_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody619_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_7, 619, 4)) (some 477) ([]) (some (2, optimizedBody619_4, 619, 5))

def optimizedBody619_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0), (50, 6), (64, 8), (68, 4)]

def optimizedBody619_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44), (46, 46), (50, 50), (64, 64), (68, 68)]

def optimizedBody619_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (64, 64), (68, 68)]

def optimizedBody619_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_11 optimizedBody619_3

def optimizedBody619_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_10, 619, 6)) (some 477) ([]) (some (2, optimizedBody619_12, 619, 7))

def optimizedBody619_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 50), (48, 0), (52, 6), (58, 8), (64, 64), (66, 4), (68, 68)]

def optimizedBody619_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (4, 4), (8, 8), (44, 44), (46, 46), (50, 50), (48, 48), (52, 52), (58, 58), (64, 64), (66, 66),
    (68, 68)]

def optimizedBody619_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (52, 52), (58, 58), (64, 64), (66, 66), (68, 68)]

def optimizedBody619_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_16 optimizedBody619_3

def optimizedBody619_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_15, 619, 8)) (some 477) ([]) (some (2, optimizedBody619_17, 619, 9))

def optimizedBody619_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (50, 50), (48, 48), (52, 52), (54, 0), (56, 6), (58, 58),
    (60, 4), (62, 8), (64, 64), (66, 66), (68, 68)]

def optimizedBody619_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (50, 50), (0, 48), (6, 52), (10, 54), (14, 56), (8, 58), (12, 60), (16, 62), (62, 64),
    (4, 66), (66, 68)]

def optimizedBody619_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48), (6, 52), (10, 54), (14, 56), (8, 58), (12, 60), (16, 62), (62, 64),
    (4, 66), (66, 68)]

def optimizedBody619_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_21 optimizedBody619_3

def optimizedBody619_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody619_20, 619, 10)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody619_22, 619, 11))

def optimizedBody619_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (50, 50), (52, 0),
    (54, 6), (48, 18), (58, 8), (62, 62), (64, 4), (66, 66)]

def optimizedBody619_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_26 optimizedBody619_3

def optimizedBody619_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_25, 619, 12)) (some 482) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody619_27, 619, 13))

def optimizedBody619_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 0), (48, 4), (58, 58), (60, 6), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody619_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (48, 48), (58, 58), (4, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody619_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (48, 48), (58, 58), (4, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody619_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_31 optimizedBody619_3

def optimizedBody619_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody619_30, 619, 14)) (some 467) ([2]) (some (2, optimizedBody619_32, 619, 15))

def optimizedBody619_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody619_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody619_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12000#64)

def optimizedBody619_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody619_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (48, 48), (58, 58), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody619_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (48, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (48, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_40 optimizedBody619_3

def optimizedBody619_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_39, 619, 16)) (some 465) ([2, 4]) (some (2, optimizedBody619_41, 619, 17))

def optimizedBody619_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (48, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (0, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (0, 48), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_45 optimizedBody619_3

def optimizedBody619_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_44, 619, 18)) (some 472) ([2]) (some (2, optimizedBody619_46, 619, 19))

def optimizedBody619_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_50 optimizedBody619_3

def optimizedBody619_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_49, 619, 20)) (some 484) ([2]) (some (2, optimizedBody619_51, 619, 21))

def optimizedBody619_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody619_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody619_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody619_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody619_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody619_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody619_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_60 optimizedBody619_3

def optimizedBody619_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_59, 619, 22)) (some 409) ([2]) (some (2, optimizedBody619_61, 619, 23))

def optimizedBody619_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody619_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 0), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody619_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (4, 48), (48, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (60, 62), (62, 64),
    (64, 66)]

def optimizedBody619_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (60, 62), (62, 64),
    (64, 66)]

def optimizedBody619_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_66 optimizedBody619_3

def optimizedBody619_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody619_65, 619, 24)) (some 68) ([2]) (some (2, optimizedBody619_67, 619, 25))

def optimizedBody619_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody619_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody619_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody619_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 6), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64)]

def optimizedBody619_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (6, 54), (52, 56), (8, 58), (54, 60), (4, 62), (56, 64)]

def optimizedBody619_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (6, 54), (52, 56), (8, 58), (54, 60), (4, 62), (56, 64)]

def optimizedBody619_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_74 optimizedBody619_3

def optimizedBody619_76 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody619_73, 619, 26)) (some 616) ([2, 4, 6]) (some (2, optimizedBody619_75, 619, 27))

def optimizedBody619_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody619_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (44, 44), (0, 46), (6, 48), (10, 50), (14, 52), (8, 54), (4, 56)]

def optimizedBody619_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (10, 50), (14, 52), (8, 54), (4, 56)]

def optimizedBody619_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_79 optimizedBody619_3

def optimizedBody619_81 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody619_78, 619, 28)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody619_80, 619, 29))

def optimizedBody619_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44)]

def optimizedBody619_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody619_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_83, 619, 30)) (some 618) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody619_4, 619, 31))

def optimizedBody619_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody619_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody619_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody619_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody619_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_88 optimizedBody619_3

def optimizedBody619_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_87, 619, 32)) (some 492) ([2]) (some (2, optimizedBody619_89, 619, 33))

def optimizedBody619_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody619_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_91

def optimizedBody619_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_90 optimizedBody619_92

def optimizedBody619_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_2 optimizedBody619_93

def optimizedBody619_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_86 optimizedBody619_94

def optimizedBody619_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_95

def optimizedBody619_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody619_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_97

def optimizedBody619_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody619_96 optimizedBody619_98

def optimizedBody619_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody619_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody619_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_100 optimizedBody619_101

def optimizedBody619_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_85 optimizedBody619_102

def optimizedBody619_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_103

def optimizedBody619_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_99 optimizedBody619_104

def optimizedBody619_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_85 optimizedBody619_105

def optimizedBody619_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_34 optimizedBody619_106

def optimizedBody619_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_107

def optimizedBody619_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_84 optimizedBody619_108

def optimizedBody619_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_82 optimizedBody619_109

def optimizedBody619_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_110

def optimizedBody619_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_81 optimizedBody619_111

def optimizedBody619_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_77 optimizedBody619_112

def optimizedBody619_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_113

def optimizedBody619_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_76 optimizedBody619_114

def optimizedBody619_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_72 optimizedBody619_115

def optimizedBody619_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_71 optimizedBody619_116

def optimizedBody619_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_34 optimizedBody619_117

def optimizedBody619_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_70 optimizedBody619_118

def optimizedBody619_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_69 optimizedBody619_119

def optimizedBody619_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_120

def optimizedBody619_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_68 optimizedBody619_121

def optimizedBody619_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_64 optimizedBody619_122

def optimizedBody619_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_63 optimizedBody619_123

def optimizedBody619_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_124

def optimizedBody619_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_62 optimizedBody619_125

def optimizedBody619_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_58 optimizedBody619_126

def optimizedBody619_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_57 optimizedBody619_127

def optimizedBody619_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_34 optimizedBody619_128

def optimizedBody619_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_56 optimizedBody619_129

def optimizedBody619_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_55 optimizedBody619_130

def optimizedBody619_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_54 optimizedBody619_131

def optimizedBody619_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_35 optimizedBody619_132

def optimizedBody619_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_53 optimizedBody619_133

def optimizedBody619_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_134

def optimizedBody619_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_52 optimizedBody619_135

def optimizedBody619_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_48 optimizedBody619_136

def optimizedBody619_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_137

def optimizedBody619_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_47 optimizedBody619_138

def optimizedBody619_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_43 optimizedBody619_139

def optimizedBody619_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_140

def optimizedBody619_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_42 optimizedBody619_141

def optimizedBody619_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_38 optimizedBody619_142

def optimizedBody619_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_37 optimizedBody619_143

def optimizedBody619_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_36 optimizedBody619_144

def optimizedBody619_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_35 optimizedBody619_145

def optimizedBody619_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_34 optimizedBody619_146

def optimizedBody619_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_147

def optimizedBody619_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_33 optimizedBody619_148

def optimizedBody619_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_29 optimizedBody619_149

def optimizedBody619_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_150

def optimizedBody619_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_28 optimizedBody619_151

def optimizedBody619_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_24 optimizedBody619_152

def optimizedBody619_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_153

def optimizedBody619_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_23 optimizedBody619_154

def optimizedBody619_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_19 optimizedBody619_155

def optimizedBody619_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_156

def optimizedBody619_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_18 optimizedBody619_157

def optimizedBody619_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_14 optimizedBody619_158

def optimizedBody619_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_159

def optimizedBody619_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_160

def optimizedBody619_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_9 optimizedBody619_161

def optimizedBody619_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_162

def optimizedBody619_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_8 optimizedBody619_163

def optimizedBody619_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_1 optimizedBody619_164

def optimizedBody619_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_165

def optimizedBody619_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_5 optimizedBody619_166

def optimizedBody619_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_0 optimizedBody619_167

def oracle619 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 7 (Flapjack.Spt.ls 27)) 34
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 29)))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 33
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 32)))
                  25 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 32)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 1))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 33))) 32
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 8 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31)))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 31)) 34
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 4 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 28))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 33 (Flapjack.Spt.ls 30)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 32))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 34 (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  25
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 31 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 32
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 31)) 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 33)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 32 (Flapjack.Spt.ls 29)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 34
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 31))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 32)) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 30 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 31)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 30)) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))))))))
def optimized619 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(619, 1, optimizedBody619_168)
end InitECandidate.Proofs.SmallStages.Oracles619
