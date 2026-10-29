import InitECandidate.Proofs.WordStages.Optimize299
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source315
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody315_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody315_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody315_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody315_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody315_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody315_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (50, 14), (54, 8), (52, 4), (56, 12), (46, 16), (22, 2), (18, 18), (58, 10), (48, 6)]

def optimizedBody315_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody315_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody315_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody315_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody315_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody315_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 52), (0, 54)]

def optimizedBody315_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody315_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 48)]

def optimizedBody315_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody315_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 58), (8, 56), (44, 44), (50, 50), (46, 6), (56, 56), (48, 46), (52, 8), (58, 58), (54, 10),
    (60, 12), (62, 14), (64, 16)]

def optimizedBody315_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (12, 44), (24, 50), (20, 46), (10, 56), (4, 48), (18, 52), (8, 58), (22, 54), (14, 60), (0, 62), (16, 64)]

def optimizedBody315_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (24, 50), (20, 46), (10, 56), (4, 48), (18, 52), (8, 58), (22, 54), (14, 60), (0, 62), (16, 64)]

def optimizedBody315_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody315_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_17 optimizedBody315_18

def optimizedBody315_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_16, 315, 2)) (some 296) ([2, 4, 6, 8]) (some (2, optimizedBody315_19, 315, 3))

def optimizedBody315_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (24, 24), (20, 20), (10, 10), (4, 4), (18, 18), (8, 8), (22, 22), (6, 6), (14, 14), (0, 0), (16, 16)]

def optimizedBody315_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_21

def optimizedBody315_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_20 optimizedBody315_22

def optimizedBody315_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_15 optimizedBody315_23

def optimizedBody315_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_14 optimizedBody315_24

def optimizedBody315_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_13 optimizedBody315_25

def optimizedBody315_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_12 optimizedBody315_26

def optimizedBody315_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_11 optimizedBody315_27

def optimizedBody315_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_28

def optimizedBody315_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 22 0#64))

def optimizedBody315_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody315_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody315_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody315_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 50), (48, 54), (50, 52), (52, 56), (54, 46), (56, 22), (58, 8), (60, 58), (62, 10), (64, 48),
    (66, 14), (68, 16), (70, 0)]

def optimizedBody315_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (22, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody315_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (22, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody315_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_36 optimizedBody315_18

def optimizedBody315_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_35, 315, 4)) (some 286) ([2]) (some (2, optimizedBody315_37, 315, 5))

def optimizedBody315_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (22, 22), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody315_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_39

def optimizedBody315_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_38 optimizedBody315_40

def optimizedBody315_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_34 optimizedBody315_41

def optimizedBody315_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_33 optimizedBody315_42

def optimizedBody315_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_43

def optimizedBody315_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 50), (48, 54), (50, 52), (52, 56), (54, 46), (22, 22), (58, 8), (60, 58), (62, 10), (64, 48),
    (66, 14), (68, 16), (70, 0)]

def optimizedBody315_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_45

def optimizedBody315_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody315_44 optimizedBody315_46

def optimizedBody315_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 22), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody315_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 48), (20, 50), (50, 52), (52, 54), (6, 56), (54, 58), (56, 60), (58, 62), (14, 64), (62, 66),
    (64, 68), (4, 70)]

def optimizedBody315_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (20, 50), (50, 52), (52, 54), (6, 56), (54, 58), (56, 60), (58, 62), (14, 64),
    (62, 66), (64, 68), (4, 70)]

def optimizedBody315_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_50 optimizedBody315_18

def optimizedBody315_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_49, 315, 6)) (some 299) ([2]) (some (2, optimizedBody315_51, 315, 7))

def optimizedBody315_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody315_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody315_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (0, 0), (2, 6)]

def optimizedBody315_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody315_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14)]

def optimizedBody315_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody315_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 56), (10, 50), (44, 44), (46, 46), (48, 20), (50, 50), (52, 52), (54, 54), (56, 56),
    (58, 58), (60, 14), (62, 62), (64, 64)]

def optimizedBody315_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (12, 44), (24, 46), (20, 48), (10, 50), (4, 52), (18, 54), (8, 56), (22, 58), (14, 60), (0, 62), (16, 64)]

def optimizedBody315_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (24, 46), (20, 48), (10, 50), (4, 52), (18, 54), (8, 56), (22, 58), (14, 60), (0, 62), (16, 64)]

def optimizedBody315_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_61 optimizedBody315_18

def optimizedBody315_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_60, 315, 8)) (some 313) ([2, 4, 6, 8, 10]) (some (2, optimizedBody315_62, 315, 9))

def optimizedBody315_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_63 optimizedBody315_22

def optimizedBody315_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_59 optimizedBody315_64

def optimizedBody315_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_58 optimizedBody315_65

def optimizedBody315_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_57 optimizedBody315_66

def optimizedBody315_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_56 optimizedBody315_67

def optimizedBody315_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_55 optimizedBody315_68

def optimizedBody315_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_69

def optimizedBody315_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 6)]

def optimizedBody315_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody315_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody315_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody315_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (0, 0), (4, 4), (2, 2)]

def optimizedBody315_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody315_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody315_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (50, 2), (48, 0), (52, 20), (54, 50), (56, 52), (58, 10),
    (60, 54), (62, 56), (64, 58), (66, 14), (68, 62), (70, 64), (72, 4)]

def optimizedBody315_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (44, 44), (46, 46), (50, 50), (0, 48), (20, 52), (10, 54), (48, 56), (6, 58), (58, 60), (8, 62), (62, 64),
    (14, 66), (66, 68), (68, 70), (4, 72)]

def optimizedBody315_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48), (20, 52), (10, 54), (48, 56), (6, 58), (58, 60), (8, 62), (62, 64),
    (14, 66), (66, 68), (68, 70), (4, 72)]

def optimizedBody315_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_80 optimizedBody315_18

def optimizedBody315_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_79, 315, 10)) (some 291) ([2, 4, 6, 8]) (some (2, optimizedBody315_81, 315, 11))

def optimizedBody315_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody315_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody315_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody315_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody315_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody315_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody315_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 44), (24, 46), (20, 20), (10, 10), (4, 48), (18, 18), (8, 8), (22, 22), (6, 6), (14, 14), (0, 0), (16, 16)]

def optimizedBody315_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_3 optimizedBody315_89

def optimizedBody315_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_88 optimizedBody315_90

def optimizedBody315_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_87 optimizedBody315_91

def optimizedBody315_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_86 optimizedBody315_92

def optimizedBody315_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_84 optimizedBody315_93

def optimizedBody315_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_85 optimizedBody315_94

def optimizedBody315_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_84 optimizedBody315_95

def optimizedBody315_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_96

def optimizedBody315_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 46), (50, 50), (52, 20), (54, 10),
    (56, 48), (58, 58), (60, 8), (62, 62), (64, 14), (66, 66), (68, 68)]

def optimizedBody315_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (4, 46), (46, 48), (0, 50), (48, 52), (50, 54), (52, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (62, 66), (64, 68)]

def optimizedBody315_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50), (48, 52), (50, 54), (52, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (62, 66), (64, 68)]

def optimizedBody315_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_100 optimizedBody315_18

def optimizedBody315_102 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_99, 315, 12)) (some 314) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody315_101, 315, 13))

def optimizedBody315_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64)]

def optimizedBody315_104 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody315_60, 315, 14)) (some 297) ([2, 4, 6]) (some (2, optimizedBody315_62, 315, 15))

def optimizedBody315_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_104 optimizedBody315_22

def optimizedBody315_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_103 optimizedBody315_105

def optimizedBody315_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_106

def optimizedBody315_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 44), (24, 46), (20, 48), (10, 50), (4, 52), (18, 54), (8, 56), (22, 58), (6, 6), (14, 60), (0, 62), (16, 64)]

def optimizedBody315_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_108

def optimizedBody315_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody315_107 optimizedBody315_109

def optimizedBody315_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_110 optimizedBody315_22

def optimizedBody315_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_53 optimizedBody315_111

def optimizedBody315_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_32 optimizedBody315_112

def optimizedBody315_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_113

def optimizedBody315_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_102 optimizedBody315_114

def optimizedBody315_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_98 optimizedBody315_115

def optimizedBody315_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_58 optimizedBody315_116

def optimizedBody315_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_57 optimizedBody315_117

def optimizedBody315_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_56 optimizedBody315_118

def optimizedBody315_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_55 optimizedBody315_119

def optimizedBody315_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_120

def optimizedBody315_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 4) optimizedBody315_97 optimizedBody315_121

def optimizedBody315_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_122 optimizedBody315_22

def optimizedBody315_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_83 optimizedBody315_123

def optimizedBody315_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_124

def optimizedBody315_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_82 optimizedBody315_125

def optimizedBody315_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_78 optimizedBody315_126

def optimizedBody315_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_77 optimizedBody315_127

def optimizedBody315_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_57 optimizedBody315_128

def optimizedBody315_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_76 optimizedBody315_129

def optimizedBody315_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_75 optimizedBody315_130

def optimizedBody315_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_74 optimizedBody315_131

def optimizedBody315_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_73 optimizedBody315_132

def optimizedBody315_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_72 optimizedBody315_133

def optimizedBody315_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_71 optimizedBody315_134

def optimizedBody315_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_135

def optimizedBody315_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody315_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody315_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 56)]

def optimizedBody315_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody315_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody315_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 50)]

def optimizedBody315_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody315_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (10, 10), (18, 54), (8, 8), (22, 58), (6, 6), (0, 62), (16, 64)]

def optimizedBody315_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_143 optimizedBody315_144

def optimizedBody315_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_142 optimizedBody315_145

def optimizedBody315_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_141 optimizedBody315_146

def optimizedBody315_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_84 optimizedBody315_147

def optimizedBody315_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_140 optimizedBody315_148

def optimizedBody315_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_139 optimizedBody315_149

def optimizedBody315_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_138 optimizedBody315_150

def optimizedBody315_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_84 optimizedBody315_151

def optimizedBody315_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_152

def optimizedBody315_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (0, 0)]

def optimizedBody315_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody315_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody315_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody315_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody315_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody315_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody315_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody315_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody315_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (10, 50), (18, 18), (8, 56), (22, 22), (6, 6), (0, 0), (16, 16)]

def optimizedBody315_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_3 optimizedBody315_163

def optimizedBody315_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_162 optimizedBody315_164

def optimizedBody315_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_31 optimizedBody315_165

def optimizedBody315_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_161 optimizedBody315_166

def optimizedBody315_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_157 optimizedBody315_167

def optimizedBody315_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_160 optimizedBody315_168

def optimizedBody315_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_159 optimizedBody315_169

def optimizedBody315_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_84 optimizedBody315_170

def optimizedBody315_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_158 optimizedBody315_171

def optimizedBody315_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_157 optimizedBody315_172

def optimizedBody315_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_156 optimizedBody315_173

def optimizedBody315_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_155 optimizedBody315_174

def optimizedBody315_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_154 optimizedBody315_175

def optimizedBody315_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_176

def optimizedBody315_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 14) optimizedBody315_153 optimizedBody315_177

def optimizedBody315_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 44), (24, 46), (20, 20), (10, 10), (4, 52), (18, 18), (8, 8), (22, 22), (6, 6), (14, 14), (0, 0), (16, 16)]

def optimizedBody315_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_179

def optimizedBody315_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_178 optimizedBody315_180

def optimizedBody315_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_137 optimizedBody315_181

def optimizedBody315_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_182

def optimizedBody315_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody315_136 optimizedBody315_183

def optimizedBody315_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_184 optimizedBody315_22

def optimizedBody315_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_33 optimizedBody315_185

def optimizedBody315_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_53 optimizedBody315_186

def optimizedBody315_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_187

def optimizedBody315_189 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody315_70 optimizedBody315_188

def optimizedBody315_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_189 optimizedBody315_22

def optimizedBody315_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_54 optimizedBody315_190

def optimizedBody315_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_53 optimizedBody315_191

def optimizedBody315_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_192

def optimizedBody315_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_52 optimizedBody315_193

def optimizedBody315_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_48 optimizedBody315_194

def optimizedBody315_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_195

def optimizedBody315_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_47 optimizedBody315_196

def optimizedBody315_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_32 optimizedBody315_197

def optimizedBody315_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_31 optimizedBody315_198

def optimizedBody315_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_30 optimizedBody315_199

def optimizedBody315_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_10 optimizedBody315_200

def optimizedBody315_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_201

def optimizedBody315_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 0) optimizedBody315_29 optimizedBody315_202

def optimizedBody315_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody315_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 6)]

def optimizedBody315_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_205

def optimizedBody315_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (6, 6)]

def optimizedBody315_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody315_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody315_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_208 optimizedBody315_209

def optimizedBody315_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_207 optimizedBody315_210

def optimizedBody315_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_211

def optimizedBody315_213 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 2) optimizedBody315_206 optimizedBody315_212

def optimizedBody315_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 12), (50, 16), (54, 0), (52, 20), (56, 10), (46, 4), (22, 22), (18, 18), (58, 8), (48, 14)]

def optimizedBody315_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody315_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_214 optimizedBody315_215

def optimizedBody315_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_216

def optimizedBody315_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_213 optimizedBody315_217

def optimizedBody315_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_32 optimizedBody315_218

def optimizedBody315_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_204 optimizedBody315_219

def optimizedBody315_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_220

def optimizedBody315_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_203 optimizedBody315_221

def optimizedBody315_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_7 optimizedBody315_222

def optimizedBody315_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_10 optimizedBody315_223

def optimizedBody315_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_9 optimizedBody315_224

def optimizedBody315_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_2 optimizedBody315_225

def optimizedBody315_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_1 optimizedBody315_226

def optimizedBody315_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_8 optimizedBody315_227

def optimizedBody315_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_228

def optimizedBody315_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody315_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_230

def optimizedBody315_232 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 0) optimizedBody315_229 optimizedBody315_231

def optimizedBody315_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (50, 2), (54, 4), (52, 6), (56, 8), (46, 10), (22, 22), (18, 18), (58, 12), (48, 14)]

def optimizedBody315_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_233

def optimizedBody315_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_232 optimizedBody315_234

def optimizedBody315_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_7 optimizedBody315_235

def optimizedBody315_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_6 optimizedBody315_236

def optimizedBody315_238 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody315_237 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody315_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody315_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody315_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_239 optimizedBody315_240

def optimizedBody315_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_241

def optimizedBody315_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_238 optimizedBody315_242

def optimizedBody315_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_5 optimizedBody315_243

def optimizedBody315_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_4 optimizedBody315_244

def optimizedBody315_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_3 optimizedBody315_245

def optimizedBody315_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_2 optimizedBody315_246

def optimizedBody315_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_1 optimizedBody315_247

def optimizedBody315_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody315_0 optimizedBody315_248

def oracle315 : Option (Spt Nat) :=
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
def optimized315 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(315, 7, optimizedBody315_249)
theorem optimize315_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source315, oracle315) = optimized315 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize315_eq
end InitECandidate.Proofs.WordStages
