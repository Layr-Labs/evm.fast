import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles317
def optimizedBody317_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody317_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody317_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody317_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody317_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody317_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (50, 14), (54, 8), (52, 4), (56, 12), (46, 16), (22, 2), (18, 18), (58, 10), (48, 6)]

def optimizedBody317_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody317_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody317_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody317_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody317_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody317_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 52), (0, 54)]

def optimizedBody317_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody317_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 48)]

def optimizedBody317_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody317_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 58), (8, 56), (44, 44), (50, 50), (46, 6), (56, 56), (48, 46), (52, 8), (58, 58), (54, 10),
    (60, 12), (62, 14), (64, 16)]

def optimizedBody317_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (12, 44), (24, 50), (20, 46), (10, 56), (4, 48), (18, 52), (8, 58), (22, 54), (14, 60), (0, 62), (16, 64)]

def optimizedBody317_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (24, 50), (20, 46), (10, 56), (4, 48), (18, 52), (8, 58), (22, 54), (14, 60), (0, 62), (16, 64)]

def optimizedBody317_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody317_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_17 optimizedBody317_18

def optimizedBody317_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_16, 317, 2)) (some 298) ([2, 4, 6, 8]) (some (2, optimizedBody317_19, 317, 3))

def optimizedBody317_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (24, 24), (20, 20), (10, 10), (4, 4), (18, 18), (8, 8), (22, 22), (6, 6), (14, 14), (0, 0), (16, 16)]

def optimizedBody317_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_21

def optimizedBody317_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_20 optimizedBody317_22

def optimizedBody317_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_15 optimizedBody317_23

def optimizedBody317_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_14 optimizedBody317_24

def optimizedBody317_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_13 optimizedBody317_25

def optimizedBody317_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_12 optimizedBody317_26

def optimizedBody317_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_11 optimizedBody317_27

def optimizedBody317_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_28

def optimizedBody317_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 22 0#64))

def optimizedBody317_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody317_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody317_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody317_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 50), (48, 54), (50, 52), (52, 56), (54, 46), (56, 22), (58, 8), (60, 58), (62, 10), (64, 48),
    (66, 14), (68, 16), (70, 0)]

def optimizedBody317_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (22, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody317_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (22, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody317_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_36 optimizedBody317_18

def optimizedBody317_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_35, 317, 4)) (some 288) ([2]) (some (2, optimizedBody317_37, 317, 5))

def optimizedBody317_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (22, 22), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody317_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_39

def optimizedBody317_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_38 optimizedBody317_40

def optimizedBody317_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_34 optimizedBody317_41

def optimizedBody317_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_33 optimizedBody317_42

def optimizedBody317_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_43

def optimizedBody317_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 50), (48, 54), (50, 52), (52, 56), (54, 46), (22, 22), (58, 8), (60, 58), (62, 10), (64, 48),
    (66, 14), (68, 16), (70, 0)]

def optimizedBody317_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_45

def optimizedBody317_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody317_44 optimizedBody317_46

def optimizedBody317_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 22), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody317_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 48), (20, 50), (50, 52), (52, 54), (6, 56), (54, 58), (56, 60), (58, 62), (14, 64), (62, 66),
    (64, 68), (4, 70)]

def optimizedBody317_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (20, 50), (50, 52), (52, 54), (6, 56), (54, 58), (56, 60), (58, 62), (14, 64),
    (62, 66), (64, 68), (4, 70)]

def optimizedBody317_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_50 optimizedBody317_18

def optimizedBody317_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_49, 317, 6)) (some 301) ([2]) (some (2, optimizedBody317_51, 317, 7))

def optimizedBody317_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody317_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody317_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (0, 0), (2, 6)]

def optimizedBody317_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody317_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14)]

def optimizedBody317_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody317_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 56), (10, 50), (44, 44), (46, 46), (48, 20), (50, 50), (52, 52), (54, 54), (56, 56),
    (58, 58), (60, 14), (62, 62), (64, 64)]

def optimizedBody317_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (12, 44), (24, 46), (20, 48), (10, 50), (4, 52), (18, 54), (8, 56), (22, 58), (14, 60), (0, 62), (16, 64)]

def optimizedBody317_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (24, 46), (20, 48), (10, 50), (4, 52), (18, 54), (8, 56), (22, 58), (14, 60), (0, 62), (16, 64)]

def optimizedBody317_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_61 optimizedBody317_18

def optimizedBody317_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_60, 317, 8)) (some 315) ([2, 4, 6, 8, 10]) (some (2, optimizedBody317_62, 317, 9))

def optimizedBody317_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_63 optimizedBody317_22

def optimizedBody317_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_59 optimizedBody317_64

def optimizedBody317_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_58 optimizedBody317_65

def optimizedBody317_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_57 optimizedBody317_66

def optimizedBody317_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_56 optimizedBody317_67

def optimizedBody317_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_55 optimizedBody317_68

def optimizedBody317_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_69

def optimizedBody317_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 6)]

def optimizedBody317_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody317_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody317_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody317_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (0, 0), (4, 4), (2, 2)]

def optimizedBody317_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody317_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody317_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (50, 2), (48, 0), (52, 20), (54, 50), (56, 52), (58, 10),
    (60, 54), (62, 56), (64, 58), (66, 14), (68, 62), (70, 64), (72, 4)]

def optimizedBody317_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (44, 44), (46, 46), (50, 50), (0, 48), (20, 52), (10, 54), (48, 56), (6, 58), (58, 60), (8, 62), (62, 64),
    (14, 66), (66, 68), (68, 70), (4, 72)]

def optimizedBody317_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48), (20, 52), (10, 54), (48, 56), (6, 58), (58, 60), (8, 62), (62, 64),
    (14, 66), (66, 68), (68, 70), (4, 72)]

def optimizedBody317_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_80 optimizedBody317_18

def optimizedBody317_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_79, 317, 10)) (some 293) ([2, 4, 6, 8]) (some (2, optimizedBody317_81, 317, 11))

def optimizedBody317_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody317_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody317_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody317_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody317_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody317_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody317_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 44), (24, 46), (20, 20), (10, 10), (4, 48), (18, 18), (8, 8), (22, 22), (6, 6), (14, 14), (0, 0), (16, 16)]

def optimizedBody317_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_3 optimizedBody317_89

def optimizedBody317_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_88 optimizedBody317_90

def optimizedBody317_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_87 optimizedBody317_91

def optimizedBody317_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_86 optimizedBody317_92

def optimizedBody317_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_84 optimizedBody317_93

def optimizedBody317_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_85 optimizedBody317_94

def optimizedBody317_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_84 optimizedBody317_95

def optimizedBody317_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_96

def optimizedBody317_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 46), (50, 50), (52, 20), (54, 10),
    (56, 48), (58, 58), (60, 8), (62, 62), (64, 14), (66, 66), (68, 68)]

def optimizedBody317_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (4, 46), (46, 48), (0, 50), (48, 52), (50, 54), (52, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (62, 66), (64, 68)]

def optimizedBody317_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50), (48, 52), (50, 54), (52, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (62, 66), (64, 68)]

def optimizedBody317_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_100 optimizedBody317_18

def optimizedBody317_102 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_99, 317, 12)) (some 316) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody317_101, 317, 13))

def optimizedBody317_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64)]

def optimizedBody317_104 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody317_60, 317, 14)) (some 299) ([2, 4, 6]) (some (2, optimizedBody317_62, 317, 15))

def optimizedBody317_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_104 optimizedBody317_22

def optimizedBody317_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_103 optimizedBody317_105

def optimizedBody317_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_106

def optimizedBody317_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 44), (24, 46), (20, 48), (10, 50), (4, 52), (18, 54), (8, 56), (22, 58), (6, 6), (14, 60), (0, 62), (16, 64)]

def optimizedBody317_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_108

def optimizedBody317_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody317_107 optimizedBody317_109

def optimizedBody317_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_110 optimizedBody317_22

def optimizedBody317_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_53 optimizedBody317_111

def optimizedBody317_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_32 optimizedBody317_112

def optimizedBody317_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_113

def optimizedBody317_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_102 optimizedBody317_114

def optimizedBody317_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_98 optimizedBody317_115

def optimizedBody317_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_58 optimizedBody317_116

def optimizedBody317_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_57 optimizedBody317_117

def optimizedBody317_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_56 optimizedBody317_118

def optimizedBody317_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_55 optimizedBody317_119

def optimizedBody317_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_120

def optimizedBody317_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 4) optimizedBody317_97 optimizedBody317_121

def optimizedBody317_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_122 optimizedBody317_22

def optimizedBody317_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_83 optimizedBody317_123

def optimizedBody317_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_124

def optimizedBody317_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_82 optimizedBody317_125

def optimizedBody317_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_78 optimizedBody317_126

def optimizedBody317_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_77 optimizedBody317_127

def optimizedBody317_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_57 optimizedBody317_128

def optimizedBody317_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_76 optimizedBody317_129

def optimizedBody317_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_75 optimizedBody317_130

def optimizedBody317_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_74 optimizedBody317_131

def optimizedBody317_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_73 optimizedBody317_132

def optimizedBody317_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_72 optimizedBody317_133

def optimizedBody317_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_71 optimizedBody317_134

def optimizedBody317_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_135

def optimizedBody317_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody317_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody317_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 56)]

def optimizedBody317_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody317_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody317_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 50)]

def optimizedBody317_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody317_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (10, 10), (18, 54), (8, 8), (22, 58), (6, 6), (0, 62), (16, 64)]

def optimizedBody317_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_143 optimizedBody317_144

def optimizedBody317_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_142 optimizedBody317_145

def optimizedBody317_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_141 optimizedBody317_146

def optimizedBody317_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_84 optimizedBody317_147

def optimizedBody317_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_140 optimizedBody317_148

def optimizedBody317_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_139 optimizedBody317_149

def optimizedBody317_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_138 optimizedBody317_150

def optimizedBody317_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_84 optimizedBody317_151

def optimizedBody317_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_152

def optimizedBody317_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (0, 0)]

def optimizedBody317_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody317_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody317_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody317_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody317_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody317_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody317_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody317_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody317_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (10, 50), (18, 18), (8, 56), (22, 22), (6, 6), (0, 0), (16, 16)]

def optimizedBody317_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_3 optimizedBody317_163

def optimizedBody317_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_162 optimizedBody317_164

def optimizedBody317_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_31 optimizedBody317_165

def optimizedBody317_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_161 optimizedBody317_166

def optimizedBody317_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_157 optimizedBody317_167

def optimizedBody317_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_160 optimizedBody317_168

def optimizedBody317_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_159 optimizedBody317_169

def optimizedBody317_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_84 optimizedBody317_170

def optimizedBody317_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_158 optimizedBody317_171

def optimizedBody317_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_157 optimizedBody317_172

def optimizedBody317_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_156 optimizedBody317_173

def optimizedBody317_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_155 optimizedBody317_174

def optimizedBody317_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_154 optimizedBody317_175

def optimizedBody317_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_176

def optimizedBody317_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 14) optimizedBody317_153 optimizedBody317_177

def optimizedBody317_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 44), (24, 46), (20, 20), (10, 10), (4, 52), (18, 18), (8, 8), (22, 22), (6, 6), (14, 14), (0, 0), (16, 16)]

def optimizedBody317_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_179

def optimizedBody317_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_178 optimizedBody317_180

def optimizedBody317_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_137 optimizedBody317_181

def optimizedBody317_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_182

def optimizedBody317_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody317_136 optimizedBody317_183

def optimizedBody317_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_184 optimizedBody317_22

def optimizedBody317_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_33 optimizedBody317_185

def optimizedBody317_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_53 optimizedBody317_186

def optimizedBody317_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_187

def optimizedBody317_189 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody317_70 optimizedBody317_188

def optimizedBody317_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_189 optimizedBody317_22

def optimizedBody317_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_54 optimizedBody317_190

def optimizedBody317_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_53 optimizedBody317_191

def optimizedBody317_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_192

def optimizedBody317_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_52 optimizedBody317_193

def optimizedBody317_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_48 optimizedBody317_194

def optimizedBody317_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_195

def optimizedBody317_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_47 optimizedBody317_196

def optimizedBody317_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_32 optimizedBody317_197

def optimizedBody317_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_31 optimizedBody317_198

def optimizedBody317_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_30 optimizedBody317_199

def optimizedBody317_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_10 optimizedBody317_200

def optimizedBody317_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_201

def optimizedBody317_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 0) optimizedBody317_29 optimizedBody317_202

def optimizedBody317_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody317_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 6)]

def optimizedBody317_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_205

def optimizedBody317_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (6, 6)]

def optimizedBody317_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody317_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody317_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_208 optimizedBody317_209

def optimizedBody317_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_207 optimizedBody317_210

def optimizedBody317_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_211

def optimizedBody317_213 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 2) optimizedBody317_206 optimizedBody317_212

def optimizedBody317_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 12), (50, 16), (54, 0), (52, 20), (56, 10), (46, 4), (22, 22), (18, 18), (58, 8), (48, 14)]

def optimizedBody317_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody317_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_214 optimizedBody317_215

def optimizedBody317_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_216

def optimizedBody317_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_213 optimizedBody317_217

def optimizedBody317_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_32 optimizedBody317_218

def optimizedBody317_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_204 optimizedBody317_219

def optimizedBody317_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_220

def optimizedBody317_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_203 optimizedBody317_221

def optimizedBody317_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_7 optimizedBody317_222

def optimizedBody317_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_10 optimizedBody317_223

def optimizedBody317_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_9 optimizedBody317_224

def optimizedBody317_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_225

def optimizedBody317_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_1 optimizedBody317_226

def optimizedBody317_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_8 optimizedBody317_227

def optimizedBody317_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_228

def optimizedBody317_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody317_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_230

def optimizedBody317_232 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 0) optimizedBody317_229 optimizedBody317_231

def optimizedBody317_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (50, 2), (54, 4), (52, 6), (56, 8), (46, 10), (22, 22), (18, 18), (58, 12), (48, 14)]

def optimizedBody317_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_233

def optimizedBody317_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_232 optimizedBody317_234

def optimizedBody317_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_7 optimizedBody317_235

def optimizedBody317_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_6 optimizedBody317_236

def optimizedBody317_238 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody317_237 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody317_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody317_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody317_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_239 optimizedBody317_240

def optimizedBody317_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_241

def optimizedBody317_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_238 optimizedBody317_242

def optimizedBody317_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_5 optimizedBody317_243

def optimizedBody317_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_4 optimizedBody317_244

def optimizedBody317_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_3 optimizedBody317_245

def optimizedBody317_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_246

def optimizedBody317_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_1 optimizedBody317_247

def optimizedBody317_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_0 optimizedBody317_248

def oracle317 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 10)) Flapjack.Spt.ln))
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 8)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 32 Flapjack.Spt.ln))
                  1 (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 3 (Flapjack.Spt.ls 22))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)))
                  7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 29
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 11)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 10 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 12)))))
                28
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 Flapjack.Spt.ln) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 8
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 5))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 9 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 30)) 10
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 0))))
                11
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 0 Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12))))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 9)) 31
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 11 Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 12))))
                  5
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 32)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 31
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 7)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 11))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  11
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln) 7
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 9))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 7)) 27 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 6))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
                  9
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 28)) 6
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                9
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 31 Flapjack.Spt.ln))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 32
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 Flapjack.Spt.ln) Flapjack.Spt.ln))
                9
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 10 (Flapjack.Spt.ls 0)))
                  8
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 30
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                26
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 10 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 27)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 3)) 11
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln) 11
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 29)) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 34 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 10))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 4)) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln) 0 Flapjack.Spt.ln))
                8
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 11))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 31)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 34
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 8 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))
                25
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 26 Flapjack.Spt.ln)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3)) 11
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 11 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                  6 (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 1 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 30
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 32)))))))))
def optimized317 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(317, 7, optimizedBody317_249)
end InitECandidate.Proofs.SmallStages.Oracles317
