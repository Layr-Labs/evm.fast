import InitECandidate.Proofs.WordStages.Optimize679
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source695
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody695_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody695_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody695_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (54, 6), (46, 2)]

def optimizedBody695_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (0, 4), (8, 8), (44, 44), (54, 54), (4, 46)]

def optimizedBody695_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (4, 46)]

def optimizedBody695_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody695_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_4 optimizedBody695_5

def optimizedBody695_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody695_3, 695, 2)) (some 146) ([2, 4]) (some (2, optimizedBody695_6, 695, 3))

def optimizedBody695_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody695_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody695_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody695_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 10), (48, 6), (54, 54), (50, 0), (52, 8)]

def optimizedBody695_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (22, 2), (18, 6), (20, 8), (44, 44), (10, 46), (6, 48), (54, 54), (4, 50), (8, 52)]

def optimizedBody695_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (6, 48), (54, 54), (4, 50), (8, 52)]

def optimizedBody695_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_13 optimizedBody695_5

def optimizedBody695_15 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_12, 695, 4)) (some 146) ([2, 4]) (some (2, optimizedBody695_14, 695, 5))

def optimizedBody695_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody695_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3486998266802970665#64)

def optimizedBody695_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13281191951274694749#64)

def optimizedBody695_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10917124144477883021#64)

def optimizedBody695_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4332616871279656263#64)

def optimizedBody695_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 2), (48, 0), (50, 6),
    (52, 22), (54, 54), (56, 18), (58, 4), (60, 8), (62, 20)]

def optimizedBody695_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (18, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (6, 56), (58, 58), (60, 60), (8, 62)]

def optimizedBody695_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (6, 56), (58, 58), (60, 60), (8, 62)]

def optimizedBody695_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_23 optimizedBody695_5

def optimizedBody695_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_22, 695, 6)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_24, 695, 7))

def optimizedBody695_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody695_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody695_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody695_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody695_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody695_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_29 optimizedBody695_30

def optimizedBody695_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_28 optimizedBody695_31

def optimizedBody695_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_32

def optimizedBody695_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody695_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody695_33 optimizedBody695_34

def optimizedBody695_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody695_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 18), (46, 46), (48, 4), (50, 50),
    (52, 2), (54, 54), (56, 6), (58, 58), (60, 60), (62, 8)]

def optimizedBody695_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (12, 44), (10, 46), (48, 48), (6, 50), (52, 52), (54, 54), (56, 56), (4, 58), (8, 60), (60, 62)]

def optimizedBody695_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (10, 46), (48, 48), (6, 50), (52, 52), (54, 54), (56, 56), (4, 58), (8, 60), (60, 62)]

def optimizedBody695_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_39 optimizedBody695_5

def optimizedBody695_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_38, 695, 8)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_40, 695, 9))

def optimizedBody695_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody695_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody695_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_29 optimizedBody695_43

def optimizedBody695_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_28 optimizedBody695_44

def optimizedBody695_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_45

def optimizedBody695_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody695_46 optimizedBody695_34

def optimizedBody695_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 12), (46, 10), (48, 48), (50, 6), (52, 52), (54, 54), (56, 56), (58, 4),
    (62, 8), (60, 60)]

def optimizedBody695_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (6, 56), (58, 58), (62, 62), (8, 60)]

def optimizedBody695_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (6, 56), (58, 58), (62, 62), (8, 60)]

def optimizedBody695_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_50 optimizedBody695_5

def optimizedBody695_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_49, 695, 10)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody695_51, 695, 11))

def optimizedBody695_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0), (54, 54), (56, 6), (58, 58),
    (60, 10), (62, 62), (64, 8)]

def optimizedBody695_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (0, 46), (46, 48), (6, 50), (48, 52), (54, 54), (50, 56), (4, 58), (12, 60), (8, 62), (52, 64)]

def optimizedBody695_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (46, 48), (6, 50), (48, 52), (54, 54), (50, 56), (4, 58), (12, 60), (8, 62), (52, 64)]

def optimizedBody695_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_55 optimizedBody695_5

def optimizedBody695_57 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_54, 695, 12)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody695_56, 695, 13))

def optimizedBody695_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody695_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody695_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody695_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 54)]

def optimizedBody695_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (56, 44)]

def optimizedBody695_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 56)]

def optimizedBody695_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 56)]

def optimizedBody695_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_64 optimizedBody695_5

def optimizedBody695_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody695_63, 695, 14)) (some 680) ([2, 4]) (some (2, optimizedBody695_65, 695, 15))

def optimizedBody695_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody695_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_29 optimizedBody695_67

def optimizedBody695_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_27 optimizedBody695_68

def optimizedBody695_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_69

def optimizedBody695_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_66 optimizedBody695_70

def optimizedBody695_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_62 optimizedBody695_71

def optimizedBody695_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_28 optimizedBody695_72

def optimizedBody695_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_61 optimizedBody695_73

def optimizedBody695_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_74

def optimizedBody695_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(0, 0), (46, 46), (6, 6), (48, 48), (54, 54), (50, 50), (4, 4), (8, 8), (52, 52), (44, 44)]

def optimizedBody695_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody695_75 optimizedBody695_76

def optimizedBody695_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (54, 54), (50, 50), (52, 52)]

def optimizedBody695_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (54, 54), (10, 50), (12, 52)]

def optimizedBody695_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (54, 54), (10, 50), (12, 52)]

def optimizedBody695_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_80 optimizedBody695_5

def optimizedBody695_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_79, 695, 16)) (some 662) ([2, 4, 6, 8]) (some (2, optimizedBody695_81, 695, 17))

def optimizedBody695_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 16), (50, 6), (54, 54), (58, 4), (60, 8)]

def optimizedBody695_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (10, 2), (6, 6), (8, 8), (44, 44), (46, 46), (50, 50), (54, 54), (58, 58), (60, 60)]

def optimizedBody695_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 54), (58, 58), (60, 60)]

def optimizedBody695_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_85 optimizedBody695_5

def optimizedBody695_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody695_84, 695, 18)) (some 662) ([2, 4, 6, 8]) (some (2, optimizedBody695_86, 695, 19))

def optimizedBody695_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (10, 10), (12, 4), (14, 6), (16, 8), (44, 44), (46, 46), (48, 4), (50, 50),
    (52, 10), (54, 54), (56, 6), (58, 58), (60, 60), (70, 8)]

def optimizedBody695_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (10, 46), (48, 48), (14, 50), (52, 52), (54, 54), (56, 56), (12, 58),
    (16, 60), (70, 70)]

def optimizedBody695_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (10, 46), (48, 48), (14, 50), (52, 52), (54, 54), (56, 56), (12, 58), (16, 60), (70, 70)]

def optimizedBody695_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_90 optimizedBody695_5

def optimizedBody695_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody695_89, 695, 20)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_91, 695, 21))

def optimizedBody695_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 14), (8, 16), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 10), (48, 48), (50, 14),
    (52, 52), (54, 54), (56, 56), (58, 8), (60, 12), (62, 0), (64, 6), (66, 16), (68, 4), (70, 70)]

def optimizedBody695_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (10, 46), (48, 48), (14, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (12, 60), (62, 62), (64, 64), (16, 66), (68, 68), (70, 70)]

def optimizedBody695_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (10, 46), (48, 48), (14, 50), (52, 52), (54, 54), (56, 56), (58, 58), (12, 60), (62, 62), (64, 64),
    (16, 66), (68, 68), (70, 70)]

def optimizedBody695_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_95 optimizedBody695_5

def optimizedBody695_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody695_94, 695, 22)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_96, 695, 23))

def optimizedBody695_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 10), (48, 48), (50, 14),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 12), (62, 62), (64, 64), (66, 16), (68, 68), (70, 70)]

def optimizedBody695_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody695_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody695_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_100 optimizedBody695_5

def optimizedBody695_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody695_99, 695, 24)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_101, 695, 25))

def optimizedBody695_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3035258219084094862#64)

def optimizedBody695_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 3696305541684646532#64)

def optimizedBody695_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 2263834496217719225#64)

def optimizedBody695_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 8797723225643362519#64)

def optimizedBody695_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody695_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (10, 2), (14, 6), (12, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58),
    (58, 60), (0, 62), (6, 64), (60, 66), (4, 68), (62, 70)]

def optimizedBody695_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (58, 60), (0, 62), (6, 64),
    (60, 66), (4, 68), (62, 70)]

def optimizedBody695_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_109 optimizedBody695_5

def optimizedBody695_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody695_108, 695, 26)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_110, 695, 27))

def optimizedBody695_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody695_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 2), (22, 44), (18, 46), (0, 48), (14, 50), (10, 52), (4, 54), (8, 56), (16, 58), (12, 60), (6, 62)]

def optimizedBody695_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (22, 44), (18, 46), (0, 48), (14, 50), (10, 52), (4, 54), (8, 56), (16, 58), (12, 60), (6, 62)]

def optimizedBody695_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_114 optimizedBody695_5

def optimizedBody695_116 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody695_113, 695, 28)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody695_115, 695, 29))

def optimizedBody695_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody695_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 22 [2]

def optimizedBody695_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_29 optimizedBody695_118

def optimizedBody695_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_28 optimizedBody695_119

def optimizedBody695_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_120

def optimizedBody695_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 2) optimizedBody695_121 optimizedBody695_34

def optimizedBody695_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (18, 18), (12, 12), (14, 14), (16, 16)]

def optimizedBody695_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody695_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody695_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody695_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody695_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody695_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody695_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody695_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (6, 6), (8, 8), (0, 0)]

def optimizedBody695_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody695_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody695_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody695_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody695_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody695_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody695_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody695_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody695_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 15230403791020821917#64)

def optimizedBody695_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody695_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 754611498739239741#64)

def optimizedBody695_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody695_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7381016538464732716#64)

def optimizedBody695_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody695_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1011752739694698287#64)

def optimizedBody695_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody695_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_27 optimizedBody695_119

def optimizedBody695_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_147 optimizedBody695_148

def optimizedBody695_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_42 optimizedBody695_149

def optimizedBody695_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_146 optimizedBody695_150

def optimizedBody695_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_145 optimizedBody695_151

def optimizedBody695_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_42 optimizedBody695_152

def optimizedBody695_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_144 optimizedBody695_153

def optimizedBody695_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_143 optimizedBody695_154

def optimizedBody695_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_42 optimizedBody695_155

def optimizedBody695_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_142 optimizedBody695_156

def optimizedBody695_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_141 optimizedBody695_157

def optimizedBody695_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_42 optimizedBody695_158

def optimizedBody695_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_140 optimizedBody695_159

def optimizedBody695_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_139 optimizedBody695_160

def optimizedBody695_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_9 optimizedBody695_161

def optimizedBody695_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_138 optimizedBody695_162

def optimizedBody695_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_137 optimizedBody695_163

def optimizedBody695_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_136 optimizedBody695_164

def optimizedBody695_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_135 optimizedBody695_165

def optimizedBody695_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_134 optimizedBody695_166

def optimizedBody695_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_133 optimizedBody695_167

def optimizedBody695_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_132 optimizedBody695_168

def optimizedBody695_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_131 optimizedBody695_169

def optimizedBody695_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_10 optimizedBody695_170

def optimizedBody695_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_9 optimizedBody695_171

def optimizedBody695_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_130 optimizedBody695_172

def optimizedBody695_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_129 optimizedBody695_173

def optimizedBody695_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_128 optimizedBody695_174

def optimizedBody695_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_127 optimizedBody695_175

def optimizedBody695_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_126 optimizedBody695_176

def optimizedBody695_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_125 optimizedBody695_177

def optimizedBody695_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_124 optimizedBody695_178

def optimizedBody695_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_123 optimizedBody695_179

def optimizedBody695_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_180

def optimizedBody695_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_181

def optimizedBody695_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_122 optimizedBody695_182

def optimizedBody695_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_27 optimizedBody695_183

def optimizedBody695_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_117 optimizedBody695_184

def optimizedBody695_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_185

def optimizedBody695_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_116 optimizedBody695_186

def optimizedBody695_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_112 optimizedBody695_187

def optimizedBody695_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_188

def optimizedBody695_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_111 optimizedBody695_189

def optimizedBody695_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_107 optimizedBody695_190

def optimizedBody695_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_106 optimizedBody695_191

def optimizedBody695_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_105 optimizedBody695_192

def optimizedBody695_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_104 optimizedBody695_193

def optimizedBody695_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_103 optimizedBody695_194

def optimizedBody695_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_36 optimizedBody695_195

def optimizedBody695_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_196

def optimizedBody695_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_102 optimizedBody695_197

def optimizedBody695_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_98 optimizedBody695_198

def optimizedBody695_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_199

def optimizedBody695_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_97 optimizedBody695_200

def optimizedBody695_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_93 optimizedBody695_201

def optimizedBody695_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_202

def optimizedBody695_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_92 optimizedBody695_203

def optimizedBody695_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_88 optimizedBody695_204

def optimizedBody695_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_205

def optimizedBody695_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_87 optimizedBody695_206

def optimizedBody695_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_83 optimizedBody695_207

def optimizedBody695_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_208

def optimizedBody695_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_82 optimizedBody695_209

def optimizedBody695_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_78 optimizedBody695_210

def optimizedBody695_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_211

def optimizedBody695_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_212

def optimizedBody695_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_77 optimizedBody695_213

def optimizedBody695_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_60 optimizedBody695_214

def optimizedBody695_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_59 optimizedBody695_215

def optimizedBody695_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_58 optimizedBody695_216

def optimizedBody695_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_217

def optimizedBody695_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_57 optimizedBody695_218

def optimizedBody695_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_53 optimizedBody695_219

def optimizedBody695_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_220

def optimizedBody695_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_52 optimizedBody695_221

def optimizedBody695_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_48 optimizedBody695_222

def optimizedBody695_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_223

def optimizedBody695_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_224

def optimizedBody695_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_47 optimizedBody695_225

def optimizedBody695_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_27 optimizedBody695_226

def optimizedBody695_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_42 optimizedBody695_227

def optimizedBody695_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_228

def optimizedBody695_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_41 optimizedBody695_229

def optimizedBody695_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_37 optimizedBody695_230

def optimizedBody695_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_20 optimizedBody695_231

def optimizedBody695_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_19 optimizedBody695_232

def optimizedBody695_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_18 optimizedBody695_233

def optimizedBody695_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_17 optimizedBody695_234

def optimizedBody695_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_36 optimizedBody695_235

def optimizedBody695_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_236

def optimizedBody695_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_237

def optimizedBody695_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_35 optimizedBody695_238

def optimizedBody695_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_27 optimizedBody695_239

def optimizedBody695_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_26 optimizedBody695_240

def optimizedBody695_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_241

def optimizedBody695_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_25 optimizedBody695_242

def optimizedBody695_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_21 optimizedBody695_243

def optimizedBody695_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_20 optimizedBody695_244

def optimizedBody695_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_19 optimizedBody695_245

def optimizedBody695_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_18 optimizedBody695_246

def optimizedBody695_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_17 optimizedBody695_247

def optimizedBody695_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_16 optimizedBody695_248

def optimizedBody695_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_249

def optimizedBody695_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_15 optimizedBody695_250

def optimizedBody695_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_11 optimizedBody695_251

def optimizedBody695_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_1 optimizedBody695_252

def optimizedBody695_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_10 optimizedBody695_253

def optimizedBody695_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_9 optimizedBody695_254

def optimizedBody695_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_8 optimizedBody695_255

def optimizedBody695_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_7 optimizedBody695_256

def optimizedBody695_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_2 optimizedBody695_257

def optimizedBody695_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_1 optimizedBody695_258

def optimizedBody695_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody695_0 optimizedBody695_259

def oracle695 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 10))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
                  2 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  5
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 27)) 7
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 5 Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                  22 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 29)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 5 (Flapjack.Spt.ls 0)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 10)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 11
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  10
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 6 (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
                  27 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26)) 8
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 2)) 9
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 3)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 7
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  5 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 31 Flapjack.Spt.ln))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 5 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 9
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 30)) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 30 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 25 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 26))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 29)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 32 Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 27 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 28)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) 23 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 31)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 29 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 24 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 31 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 26 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))))))))
def optimized695 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(695, 3, optimizedBody695_260)
theorem optimize695_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source695, oracle695) = optimized695 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize695_eq
end InitECandidate.Proofs.WordStages
