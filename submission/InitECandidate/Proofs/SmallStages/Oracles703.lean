import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source703
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles703
def optimizedBody703_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (56, 2), (48, 6)]

def optimizedBody703_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (56, 56), (46, 48)]

def optimizedBody703_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (56, 56), (46, 48)]

def optimizedBody703_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody703_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_2 optimizedBody703_3

def optimizedBody703_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_1, 703, 2)) (some 664) ([]) (some (2, optimizedBody703_4, 703, 3))

def optimizedBody703_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody703_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody703_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody703_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (50, 4), (56, 56), (46, 46)]

def optimizedBody703_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (56, 56), (4, 46)]

def optimizedBody703_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (56, 56), (4, 46)]

def optimizedBody703_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_11 optimizedBody703_3

def optimizedBody703_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_10, 703, 4)) (some 688) ([2, 4]) (some (2, optimizedBody703_12, 703, 5))

def optimizedBody703_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody703_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (50, 50), (56, 56), (46, 0), (58, 4)]

def optimizedBody703_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (56, 56), (4, 46), (58, 58)]

def optimizedBody703_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (56, 56), (4, 46), (58, 58)]

def optimizedBody703_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_17 optimizedBody703_3

def optimizedBody703_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_16, 703, 6)) (some 688) ([2, 4]) (some (2, optimizedBody703_18, 703, 7))

def optimizedBody703_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody703_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody703_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 56)]

def optimizedBody703_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody703_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 44)]

def optimizedBody703_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody703_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody703_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_26 optimizedBody703_3

def optimizedBody703_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_25, 703, 8)) (some 686) ([2, 4]) (some (2, optimizedBody703_27, 703, 9))

def optimizedBody703_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody703_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody703_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody703_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_30 optimizedBody703_31

def optimizedBody703_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_29 optimizedBody703_32

def optimizedBody703_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_33

def optimizedBody703_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_28 optimizedBody703_34

def optimizedBody703_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_24 optimizedBody703_35

def optimizedBody703_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_23 optimizedBody703_36

def optimizedBody703_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_22 optimizedBody703_37

def optimizedBody703_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_38

def optimizedBody703_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(50, 50), (56, 56), (58, 58), (44, 44)]

def optimizedBody703_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody703_39 optimizedBody703_40

def optimizedBody703_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (56, 56), (58, 58)]

def optimizedBody703_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (56, 56), (58, 58)]

def optimizedBody703_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (56, 56), (58, 58)]

def optimizedBody703_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_44 optimizedBody703_3

def optimizedBody703_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_43, 703, 10)) (some 69) ([]) (some (2, optimizedBody703_45, 703, 11))

def optimizedBody703_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1152#64)

def optimizedBody703_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (56, 56), (58, 58)]

def optimizedBody703_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (56, 56), (58, 58)]

def optimizedBody703_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (56, 56), (58, 58)]

def optimizedBody703_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_50 optimizedBody703_3

def optimizedBody703_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_49, 703, 12)) (some 68) ([2]) (some (2, optimizedBody703_51, 703, 13))

def optimizedBody703_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 0), (56, 56), (58, 58)]

def optimizedBody703_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody703_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody703_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_55 optimizedBody703_3

def optimizedBody703_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_54, 703, 14)) (some 68) ([2]) (some (2, optimizedBody703_56, 703, 15))

def optimizedBody703_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody703_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody703_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody703_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody703_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_61 optimizedBody703_3

def optimizedBody703_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_60, 703, 16)) (some 68) ([2]) (some (2, optimizedBody703_62, 703, 17))

def optimizedBody703_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58)]

def optimizedBody703_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (0, 54), (54, 56), (56, 58)]

def optimizedBody703_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (0, 54), (54, 56), (56, 58)]

def optimizedBody703_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_66 optimizedBody703_3

def optimizedBody703_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_65, 703, 18)) (some 68) ([2]) (some (2, optimizedBody703_67, 703, 19))

def optimizedBody703_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 6)]

def optimizedBody703_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (4, 56), (56, 58)]

def optimizedBody703_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (4, 56), (56, 58)]

def optimizedBody703_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_71 optimizedBody703_3

def optimizedBody703_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_70, 703, 20)) (some 695) ([2, 4]) (some (2, optimizedBody703_72, 703, 21))

def optimizedBody703_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody703_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 48), (0, 50), (6, 52), (50, 54), (4, 56)]

def optimizedBody703_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48), (0, 50), (6, 52), (50, 54), (4, 56)]

def optimizedBody703_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_76 optimizedBody703_3

def optimizedBody703_78 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody703_75, 703, 22)) (some 696) ([2, 4]) (some (2, optimizedBody703_77, 703, 23))

def optimizedBody703_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 0), (50, 50), (52, 4)]

def optimizedBody703_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody703_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody703_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_81 optimizedBody703_3

def optimizedBody703_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_80, 703, 24)) (some 702) ([2, 4, 6, 8]) (some (2, optimizedBody703_82, 703, 25))

def optimizedBody703_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4)]

def optimizedBody703_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50), (6, 52)]

def optimizedBody703_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (6, 52)]

def optimizedBody703_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_86 optimizedBody703_3

def optimizedBody703_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_85, 703, 26)) (some 700) ([2, 4]) (some (2, optimizedBody703_87, 703, 27))

def optimizedBody703_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 50)]

def optimizedBody703_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody703_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody703_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_91 optimizedBody703_3

def optimizedBody703_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_90, 703, 28)) (some 675) ([2, 4, 6]) (some (2, optimizedBody703_92, 703, 29))

def optimizedBody703_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody703_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody703_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody703_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody703_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551216#64))

def optimizedBody703_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 44#64)

def optimizedBody703_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody703_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody703_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody703_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_102 optimizedBody703_3

def optimizedBody703_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_101, 703, 30)) (some 701) ([2, 4, 6, 8]) (some (2, optimizedBody703_103, 703, 31))

def optimizedBody703_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody703_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody703_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody703_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_107 optimizedBody703_3

def optimizedBody703_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_106, 703, 32)) (some 70) ([2]) (some (2, optimizedBody703_108, 703, 33))

def optimizedBody703_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_109 optimizedBody703_34

def optimizedBody703_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_105 optimizedBody703_110

def optimizedBody703_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_111

def optimizedBody703_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_104 optimizedBody703_112

def optimizedBody703_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_100 optimizedBody703_113

def optimizedBody703_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_99 optimizedBody703_114

def optimizedBody703_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_98 optimizedBody703_115

def optimizedBody703_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_97 optimizedBody703_116

def optimizedBody703_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_96 optimizedBody703_117

def optimizedBody703_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_95 optimizedBody703_118

def optimizedBody703_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_94 optimizedBody703_119

def optimizedBody703_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_120

def optimizedBody703_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_93 optimizedBody703_121

def optimizedBody703_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_89 optimizedBody703_122

def optimizedBody703_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_123

def optimizedBody703_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_88 optimizedBody703_124

def optimizedBody703_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_84 optimizedBody703_125

def optimizedBody703_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_126

def optimizedBody703_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_83 optimizedBody703_127

def optimizedBody703_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_79 optimizedBody703_128

def optimizedBody703_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_129

def optimizedBody703_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_78 optimizedBody703_130

def optimizedBody703_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_74 optimizedBody703_131

def optimizedBody703_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_132

def optimizedBody703_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_73 optimizedBody703_133

def optimizedBody703_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_69 optimizedBody703_134

def optimizedBody703_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_135

def optimizedBody703_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_68 optimizedBody703_136

def optimizedBody703_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_64 optimizedBody703_137

def optimizedBody703_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_58 optimizedBody703_138

def optimizedBody703_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_139

def optimizedBody703_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_63 optimizedBody703_140

def optimizedBody703_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_59 optimizedBody703_141

def optimizedBody703_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_58 optimizedBody703_142

def optimizedBody703_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_143

def optimizedBody703_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_57 optimizedBody703_144

def optimizedBody703_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_53 optimizedBody703_145

def optimizedBody703_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_47 optimizedBody703_146

def optimizedBody703_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_147

def optimizedBody703_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_52 optimizedBody703_148

def optimizedBody703_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_48 optimizedBody703_149

def optimizedBody703_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_47 optimizedBody703_150

def optimizedBody703_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_151

def optimizedBody703_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_46 optimizedBody703_152

def optimizedBody703_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_42 optimizedBody703_153

def optimizedBody703_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_154

def optimizedBody703_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_155

def optimizedBody703_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_41 optimizedBody703_156

def optimizedBody703_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_14 optimizedBody703_157

def optimizedBody703_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_21 optimizedBody703_158

def optimizedBody703_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_20 optimizedBody703_159

def optimizedBody703_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_160

def optimizedBody703_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_19 optimizedBody703_161

def optimizedBody703_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_15 optimizedBody703_162

def optimizedBody703_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_14 optimizedBody703_163

def optimizedBody703_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_7 optimizedBody703_164

def optimizedBody703_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_165

def optimizedBody703_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_13 optimizedBody703_166

def optimizedBody703_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_9 optimizedBody703_167

def optimizedBody703_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_8 optimizedBody703_168

def optimizedBody703_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_7 optimizedBody703_169

def optimizedBody703_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_170

def optimizedBody703_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_5 optimizedBody703_171

def optimizedBody703_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_0 optimizedBody703_172

def oracle703 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0))))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)) 23
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 28)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))) 1
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 25 (Flapjack.Spt.ls 28)) 28
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  28 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 29)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))))
              23
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 29)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 28)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 28
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 28))))))))))
def optimized703 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(703, 4, optimizedBody703_173)
end InitECandidate.Proofs.SmallStages.Oracles703
