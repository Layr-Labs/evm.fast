import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source706
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles706
def optimizedBody706_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (10, 4)]

def optimizedBody706_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 64#64))

def optimizedBody706_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody706_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody706_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody706_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody706_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (50, 10), (48, 6), (52, 4), (54, 12), (56, 2)]

def optimizedBody706_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (50, 50), (6, 48), (4, 52), (46, 54), (0, 56)]

def optimizedBody706_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (50, 50), (6, 48), (4, 52), (46, 54), (0, 56)]

def optimizedBody706_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody706_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_8 optimizedBody706_9

def optimizedBody706_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody706_7, 706, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody706_10, 706, 3))

def optimizedBody706_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody706_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody706_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody706_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 50)]

def optimizedBody706_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody706_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 44)]

def optimizedBody706_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 48)]

def optimizedBody706_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 48)]

def optimizedBody706_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_19 optimizedBody706_9

def optimizedBody706_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody706_18, 706, 4)) (some 78) ([2, 4]) (some (2, optimizedBody706_20, 706, 5))

def optimizedBody706_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody706_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody706_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody706_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_23 optimizedBody706_24

def optimizedBody706_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_22 optimizedBody706_25

def optimizedBody706_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_26

def optimizedBody706_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_21 optimizedBody706_27

def optimizedBody706_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_17 optimizedBody706_28

def optimizedBody706_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_16 optimizedBody706_29

def optimizedBody706_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_15 optimizedBody706_30

def optimizedBody706_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_31

def optimizedBody706_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (50, 50), (6, 6), (4, 4), (46, 46), (0, 0), (44, 44)]

def optimizedBody706_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody706_32 optimizedBody706_33

def optimizedBody706_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (46, 46)]

def optimizedBody706_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 4), (10, 2), (14, 6), (16, 8), (44, 44), (50, 50), (0, 46)]

def optimizedBody706_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46)]

def optimizedBody706_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_37 optimizedBody706_9

def optimizedBody706_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody706_36, 706, 6)) (some 671) ([2, 4, 6, 8]) (some (2, optimizedBody706_38, 706, 7))

def optimizedBody706_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody706_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody706_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody706_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody706_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody706_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody706_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody706_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody706_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody706_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 12), (48, 10), (50, 50),
    (52, 14), (54, 0), (56, 18), (58, 20), (60, 16), (62, 22)]

def optimizedBody706_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (4, 4), (6, 6), (8, 8), (44, 44), (12, 46), (10, 48), (50, 50), (14, 52), (20, 54), (18, 56), (22, 58),
    (16, 60), (0, 62)]

def optimizedBody706_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (10, 48), (50, 50), (14, 52), (20, 54), (18, 56), (22, 58), (16, 60), (0, 62)]

def optimizedBody706_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_51 optimizedBody706_9

def optimizedBody706_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody706_50, 706, 8)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody706_52, 706, 9))

def optimizedBody706_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 24), (48, 4), (50, 50),
    (52, 6), (54, 8)]

def optimizedBody706_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (16, 2), (4, 4), (44, 44), (14, 46), (0, 48), (50, 50), (10, 52), (12, 54)]

def optimizedBody706_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (0, 48), (50, 50), (10, 52), (12, 54)]

def optimizedBody706_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_56 optimizedBody706_9

def optimizedBody706_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody706_55, 706, 10)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody706_57, 706, 11))

def optimizedBody706_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (50, 50), (46, 8), (48, 6), (52, 16), (54, 4)]

def optimizedBody706_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (12, 46), (10, 48), (14, 52), (0, 54)]

def optimizedBody706_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (12, 46), (10, 48), (14, 52), (0, 54)]

def optimizedBody706_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_61 optimizedBody706_9

def optimizedBody706_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody706_60, 706, 12)) (some 670) ([2, 4, 6, 8]) (some (2, optimizedBody706_62, 706, 13))

def optimizedBody706_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 16), (48, 4), (50, 50), (52, 6), (54, 8)]

def optimizedBody706_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (18, 2), (4, 4), (44, 44), (16, 46), (0, 48), (10, 50), (12, 52), (14, 54)]

def optimizedBody706_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (0, 48), (10, 50), (12, 52), (14, 54)]

def optimizedBody706_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_66 optimizedBody706_9

def optimizedBody706_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody706_65, 706, 14)) (some 670) ([2, 4, 6, 8]) (some (2, optimizedBody706_67, 706, 15))

def optimizedBody706_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 0), (6, 12), (8, 14), (10, 10), (44, 44), (46, 10), (48, 8), (50, 6), (52, 18), (54, 4)]

def optimizedBody706_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (6, 50), (10, 52), (4, 54)]

def optimizedBody706_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (6, 50), (10, 52), (4, 54)]

def optimizedBody706_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_71 optimizedBody706_9

def optimizedBody706_73 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody706_70, 706, 16)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody706_72, 706, 17))

def optimizedBody706_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody706_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody706_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody706_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody706_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody706_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_78 optimizedBody706_9

def optimizedBody706_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody706_77, 706, 18)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody706_79, 706, 19))

def optimizedBody706_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody706_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_23 optimizedBody706_81

def optimizedBody706_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_22 optimizedBody706_82

def optimizedBody706_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_83

def optimizedBody706_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_80 optimizedBody706_84

def optimizedBody706_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_76 optimizedBody706_85

def optimizedBody706_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_75 optimizedBody706_86

def optimizedBody706_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_74 optimizedBody706_87

def optimizedBody706_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_88

def optimizedBody706_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_73 optimizedBody706_89

def optimizedBody706_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_69 optimizedBody706_90

def optimizedBody706_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_91

def optimizedBody706_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_68 optimizedBody706_92

def optimizedBody706_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_64 optimizedBody706_93

def optimizedBody706_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_94

def optimizedBody706_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_63 optimizedBody706_95

def optimizedBody706_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_59 optimizedBody706_96

def optimizedBody706_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_97

def optimizedBody706_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_58 optimizedBody706_98

def optimizedBody706_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_54 optimizedBody706_99

def optimizedBody706_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_100

def optimizedBody706_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_53 optimizedBody706_101

def optimizedBody706_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_49 optimizedBody706_102

def optimizedBody706_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_48 optimizedBody706_103

def optimizedBody706_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_104

def optimizedBody706_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_47 optimizedBody706_105

def optimizedBody706_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_106

def optimizedBody706_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_46 optimizedBody706_107

def optimizedBody706_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_108

def optimizedBody706_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_45 optimizedBody706_109

def optimizedBody706_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_110

def optimizedBody706_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_44 optimizedBody706_111

def optimizedBody706_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_112

def optimizedBody706_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_43 optimizedBody706_113

def optimizedBody706_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_114

def optimizedBody706_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_42 optimizedBody706_115

def optimizedBody706_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_116

def optimizedBody706_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_41 optimizedBody706_117

def optimizedBody706_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_40 optimizedBody706_118

def optimizedBody706_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_119

def optimizedBody706_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_39 optimizedBody706_120

def optimizedBody706_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_35 optimizedBody706_121

def optimizedBody706_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_122

def optimizedBody706_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_123

def optimizedBody706_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_34 optimizedBody706_124

def optimizedBody706_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_14 optimizedBody706_125

def optimizedBody706_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_13 optimizedBody706_126

def optimizedBody706_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_127

def optimizedBody706_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_11 optimizedBody706_128

def optimizedBody706_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_6 optimizedBody706_129

def optimizedBody706_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_5 optimizedBody706_130

def optimizedBody706_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_2 optimizedBody706_131

def optimizedBody706_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_4 optimizedBody706_132

def optimizedBody706_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_2 optimizedBody706_133

def optimizedBody706_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_3 optimizedBody706_134

def optimizedBody706_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_2 optimizedBody706_135

def optimizedBody706_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_1 optimizedBody706_136

def optimizedBody706_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_0 optimizedBody706_137

def oracle706 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 10 (Flapjack.Spt.ls 25)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 11 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 7)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                6 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 7 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 5 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 5
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 23
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 28)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 22
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27))))))))))
def optimized706 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(706, 3, optimizedBody706_138)
end InitECandidate.Proofs.SmallStages.Oracles706
