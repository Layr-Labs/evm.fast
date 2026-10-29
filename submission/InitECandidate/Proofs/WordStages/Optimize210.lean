import InitECandidate.Proofs.WordStages.Optimize194
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source210
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody210_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody210_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (38, 44), (34, 46), (46, 48), (50, 50), (12, 52), (40, 54), (44, 56), (22, 58), (0, 60)]

def optimizedBody210_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (38, 44), (34, 46), (46, 48), (50, 50), (12, 52), (40, 54), (44, 56), (22, 58), (0, 60)]

def optimizedBody210_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody210_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_2 optimizedBody210_3

def optimizedBody210_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody210_1, 210, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody210_4, 210, 3))

def optimizedBody210_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody210_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody210_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody210_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody210_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody210_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody210_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody210_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody210_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 38 [2, 4, 6, 8]

def optimizedBody210_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_13 optimizedBody210_14

def optimizedBody210_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_12 optimizedBody210_15

def optimizedBody210_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_11 optimizedBody210_16

def optimizedBody210_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_10 optimizedBody210_17

def optimizedBody210_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_9 optimizedBody210_18

def optimizedBody210_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_19

def optimizedBody210_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody210_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody210_20 optimizedBody210_21

def optimizedBody210_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (0, 0), (12, 12), (44, 44), (46, 46), (22, 22), (50, 50), (40, 40)]

def optimizedBody210_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody210_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody210_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody210_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody210_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(38, 38), (16, 34), (46, 46), (58, 14), (50, 50), (18, 50), (40, 40), (0, 0), (54, 10), (12, 12), (44, 44), (22, 22),
    (24, 46), (62, 40), (4, 4), (2, 2), (34, 34), (10, 44), (36, 12), (56, 16), (6, 6), (8, 8), (48, 22), (60, 18),
    (52, 20), (14, 0)]

def optimizedBody210_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 22), (22, 24)]

def optimizedBody210_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 24 22 (Flapjack.WordRegImm.reg 20)))

def optimizedBody210_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody210_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 24 24 (Flapjack.WordRegImm.reg 18)))

def optimizedBody210_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def optimizedBody210_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 40)]

def optimizedBody210_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def optimizedBody210_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_15

def optimizedBody210_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(26, 4), (28, 2), (30, 6), (32, 8)]

def optimizedBody210_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 40) optimizedBody210_36 optimizedBody210_37

def optimizedBody210_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 24), (26, 26), (28, 28), (30, 30), (32, 32)]

def optimizedBody210_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_39

def optimizedBody210_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_40

def optimizedBody210_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_38 optimizedBody210_41

def optimizedBody210_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_35 optimizedBody210_42

def optimizedBody210_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_34 optimizedBody210_43

def optimizedBody210_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_44

def optimizedBody210_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 40), (26, 4), (28, 2), (30, 6), (32, 8)]

def optimizedBody210_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_46

def optimizedBody210_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 42) optimizedBody210_45 optimizedBody210_47

def optimizedBody210_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (34, 34)]

def optimizedBody210_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 34 (Flapjack.WordRegImm.reg 0)))

def optimizedBody210_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody210_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 36)))

def optimizedBody210_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 44)]

def optimizedBody210_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56), (4, 58), (6, 60), (8, 52)]

def optimizedBody210_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_54 optimizedBody210_14

def optimizedBody210_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_55

def optimizedBody210_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(64, 58), (66, 56), (68, 60), (70, 52)]

def optimizedBody210_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 2) optimizedBody210_56 optimizedBody210_57

def optimizedBody210_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 64), (44, 40), (56, 66), (60, 68), (52, 70)]

def optimizedBody210_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_59

def optimizedBody210_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_60

def optimizedBody210_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_58 optimizedBody210_61

def optimizedBody210_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_8 optimizedBody210_62

def optimizedBody210_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_53 optimizedBody210_63

def optimizedBody210_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_64

def optimizedBody210_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 58), (44, 44), (56, 56), (60, 60), (52, 52)]

def optimizedBody210_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_66

def optimizedBody210_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody210_65 optimizedBody210_67

def optimizedBody210_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 38), (16, 16), (48, 46), (50, 58), (52, 50), (54, 18), (56, 24), (46, 0), (60, 54), (12, 12), (58, 44),
    (66, 20), (68, 22), (70, 62), (72, 26), (74, 28), (62, 34), (10, 10), (64, 36), (82, 56), (84, 30), (86, 32),
    (88, 48), (90, 60), (92, 52), (14, 14)]

def optimizedBody210_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56)]

def optimizedBody210_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody210_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody210_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody210_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody210_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 66)]

def optimizedBody210_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody210_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody210_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody210_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 68)]

def optimizedBody210_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody210_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody210_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 74), (4, 72), (6, 84), (8, 86), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 48), (50, 50),
    (52, 52), (54, 4), (56, 6), (58, 46), (60, 60), (62, 12), (64, 58), (66, 2), (68, 0), (70, 70), (72, 62), (74, 10),
    (76, 64), (82, 82), (88, 88), (90, 90), (92, 92), (78, 14)]

def optimizedBody210_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (22, 2), (6, 6), (8, 8), (44, 44), (16, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (18, 58),
    (60, 60), (12, 62), (20, 64), (66, 66), (68, 68), (70, 70), (24, 72), (10, 74), (26, 76), (28, 82), (88, 88),
    (30, 90), (32, 92), (14, 78)]

def optimizedBody210_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (18, 58), (60, 60), (12, 62), (20, 64),
    (66, 66), (68, 68), (70, 70), (24, 72), (10, 74), (26, 76), (28, 82), (88, 88), (30, 90), (32, 92), (14, 78)]

def optimizedBody210_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_87 optimizedBody210_3

def optimizedBody210_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_86, 210, 4)) (some 211) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody210_88, 210, 5))

def optimizedBody210_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (16, 16), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (46, 18), (60, 60), (12, 12), (58, 20),
    (66, 66), (68, 68), (70, 70), (72, 4), (74, 22), (62, 24), (10, 10), (64, 26), (82, 28), (84, 6), (86, 8), (88, 88),
    (90, 30), (92, 32), (14, 14)]

def optimizedBody210_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody210_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_90 optimizedBody210_91

def optimizedBody210_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_92

def optimizedBody210_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_89 optimizedBody210_93

def optimizedBody210_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_85 optimizedBody210_94

def optimizedBody210_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_80 optimizedBody210_95

def optimizedBody210_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_79 optimizedBody210_96

def optimizedBody210_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_84 optimizedBody210_97

def optimizedBody210_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_75 optimizedBody210_98

def optimizedBody210_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_74 optimizedBody210_99

def optimizedBody210_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_83 optimizedBody210_100

def optimizedBody210_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_82 optimizedBody210_101

def optimizedBody210_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_81 optimizedBody210_102

def optimizedBody210_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_80 optimizedBody210_103

def optimizedBody210_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_79 optimizedBody210_104

def optimizedBody210_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_78 optimizedBody210_105

def optimizedBody210_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_77 optimizedBody210_106

def optimizedBody210_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_76 optimizedBody210_107

def optimizedBody210_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_75 optimizedBody210_108

def optimizedBody210_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_74 optimizedBody210_109

def optimizedBody210_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_73 optimizedBody210_110

def optimizedBody210_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_72 optimizedBody210_111

def optimizedBody210_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_112

def optimizedBody210_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 2)]

def optimizedBody210_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody210_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_114 optimizedBody210_115

def optimizedBody210_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_116

def optimizedBody210_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody210_113 optimizedBody210_117

def optimizedBody210_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 42), (16, 40), (48, 38), (50, 36), (52, 34), (54, 32), (56, 30), (46, 28), (60, 26), (12, 24), (58, 22),
    (66, 20), (68, 18), (70, 16), (72, 14), (74, 12), (62, 10), (10, 8), (64, 6), (82, 4), (84, 2), (86, 86), (88, 88),
    (90, 90), (92, 0), (14, 44)]

def optimizedBody210_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_119

def optimizedBody210_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_118 optimizedBody210_120

def optimizedBody210_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_10 optimizedBody210_121

def optimizedBody210_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_71 optimizedBody210_122

def optimizedBody210_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_70 optimizedBody210_123

def optimizedBody210_125 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody210_124 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody210_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 16), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (14, 46), (60, 60), (62, 12), (10, 58),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (16, 62), (78, 10), (12, 64), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92), (94, 14)]

def optimizedBody210_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody210_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody210_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody210_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody210_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody210_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody210_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody210_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 16 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody210_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody210_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody210_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 82), (4, 50), (6, 90), (8, 92), (10, 78), (12, 62), (14, 94), (16, 46), (44, 44), (46, 46), (48, 48), (52, 52),
    (54, 54), (56, 56), (50, 0), (60, 60), (62, 62), (58, 2), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (64, 4),
    (78, 78), (76, 6), (84, 84), (86, 86), (88, 88), (94, 94)]

def optimizedBody210_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (52, 52), (0, 54), (18, 56), (14, 50), (60, 60),
    (62, 62), (10, 58), (20, 66), (22, 68), (70, 70), (72, 72), (74, 74), (16, 64), (78, 78), (12, 76), (84, 84),
    (86, 86), (88, 88), (94, 94)]

def optimizedBody210_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (0, 54), (18, 56), (14, 50), (60, 60), (62, 62), (10, 58), (20, 66),
    (22, 68), (70, 70), (72, 72), (74, 74), (16, 64), (78, 78), (12, 76), (84, 84), (86, 86), (88, 88), (94, 94)]

def optimizedBody210_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_143 optimizedBody210_3

def optimizedBody210_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_142, 210, 6)) (some 211) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody210_144, 210, 7))

def optimizedBody210_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 0), (56, 18), (14, 14), (60, 60), (62, 62), (10, 10), (66, 20),
    (68, 22), (70, 70), (72, 72), (74, 74), (16, 16), (78, 78), (12, 12), (82, 24), (84, 84), (86, 86), (88, 88),
    (90, 6), (92, 8), (94, 94)]

def optimizedBody210_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_146 optimizedBody210_91

def optimizedBody210_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_147

def optimizedBody210_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_145 optimizedBody210_148

def optimizedBody210_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_141 optimizedBody210_149

def optimizedBody210_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_140 optimizedBody210_150

def optimizedBody210_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_136 optimizedBody210_151

def optimizedBody210_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_139 optimizedBody210_152

def optimizedBody210_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_138 optimizedBody210_153

def optimizedBody210_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_132 optimizedBody210_154

def optimizedBody210_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_137 optimizedBody210_155

def optimizedBody210_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_136 optimizedBody210_156

def optimizedBody210_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_135 optimizedBody210_157

def optimizedBody210_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_134 optimizedBody210_158

def optimizedBody210_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_128 optimizedBody210_159

def optimizedBody210_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_133 optimizedBody210_160

def optimizedBody210_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_132 optimizedBody210_161

def optimizedBody210_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_131 optimizedBody210_162

def optimizedBody210_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_130 optimizedBody210_163

def optimizedBody210_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_7 optimizedBody210_164

def optimizedBody210_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_129 optimizedBody210_165

def optimizedBody210_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_128 optimizedBody210_166

def optimizedBody210_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_167

def optimizedBody210_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody210_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_169 optimizedBody210_115

def optimizedBody210_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_170

def optimizedBody210_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody210_168 optimizedBody210_171

def optimizedBody210_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 42), (46, 40), (48, 38), (50, 36), (52, 34), (54, 32), (56, 30), (14, 28), (60, 26), (62, 24), (10, 22),
    (66, 20), (68, 18), (70, 16), (72, 14), (74, 12), (16, 10), (78, 8), (12, 6), (82, 4), (84, 2), (86, 86), (88, 88),
    (90, 90), (92, 0), (94, 94)]

def optimizedBody210_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_173

def optimizedBody210_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_172 optimizedBody210_174

def optimizedBody210_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_9 optimizedBody210_175

def optimizedBody210_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_127 optimizedBody210_176

def optimizedBody210_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_7 optimizedBody210_177

def optimizedBody210_179 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody210_178 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody210_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (4, 54), (6, 66), (8, 68), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 14), (60, 60), (62, 62), (64, 10), (66, 66), (68, 68), (70, 70), (72, 72),
    (74, 74), (76, 16), (78, 78), (80, 12), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90), (92, 92), (94, 94)]

def optimizedBody210_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (0, 56), (6, 58), (60, 60), (54, 62), (10, 64),
    (14, 66), (8, 68), (70, 70), (58, 72), (62, 74), (16, 76), (66, 78), (12, 80), (68, 82), (74, 84), (78, 86),
    (80, 88), (82, 90), (84, 92), (86, 94)]

def optimizedBody210_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (0, 56), (6, 58), (60, 60), (54, 62), (10, 64),
    (14, 66), (8, 68), (70, 70), (58, 72), (62, 74), (16, 76), (66, 78), (12, 80), (68, 82), (74, 84), (78, 86),
    (80, 88), (82, 90), (84, 92), (86, 94)]

def optimizedBody210_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_182 optimizedBody210_3

def optimizedBody210_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_181, 210, 8)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody210_183, 210, 9))

def optimizedBody210_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 14), (8, 8), (10, 10), (12, 12), (14, 6), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (56, 6), (60, 60), (54, 54), (64, 10), (70, 70), (58, 58), (62, 62), (72, 16), (66, 66), (76, 12),
    (68, 68), (74, 74), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86)]

def optimizedBody210_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (32, 2), (6, 6), (8, 8), (44, 44), (24, 46), (48, 48), (12, 50), (50, 52), (56, 56), (60, 60), (20, 54),
    (64, 64), (70, 70), (0, 58), (30, 62), (72, 72), (18, 66), (76, 76), (10, 68), (26, 74), (28, 78), (80, 80),
    (14, 82), (16, 84), (22, 86)]

def optimizedBody210_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (48, 48), (12, 50), (50, 52), (56, 56), (60, 60), (20, 54), (64, 64), (70, 70), (0, 58),
    (30, 62), (72, 72), (18, 66), (76, 76), (10, 68), (26, 74), (28, 78), (80, 80), (14, 82), (16, 84), (22, 86)]

def optimizedBody210_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_187 optimizedBody210_3

def optimizedBody210_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_186, 210, 10)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody210_188, 210, 11))

def optimizedBody210_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 30), (4, 0), (6, 26), (8, 28), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 24), (48, 48), (58, 12), (50, 50), (52, 4), (54, 32), (56, 56), (60, 60), (62, 20), (64, 64),
    (66, 6), (68, 8), (70, 70), (72, 72), (74, 18), (76, 76), (78, 10), (80, 80), (82, 14), (84, 16), (86, 22)]

def optimizedBody210_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (26, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (58, 58), (50, 50), (0, 52), (10, 54), (12, 56),
    (14, 60), (16, 62), (18, 64), (20, 66), (22, 68), (24, 70), (28, 72), (30, 74), (32, 76), (34, 78), (36, 80),
    (38, 82), (40, 84), (42, 86)]

def optimizedBody210_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (58, 58), (50, 50), (0, 52), (10, 54), (12, 56), (14, 60), (16, 62), (18, 64),
    (20, 66), (22, 68), (24, 70), (28, 72), (30, 74), (32, 76), (34, 78), (36, 80), (38, 82), (40, 84), (42, 86)]

def optimizedBody210_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_192 optimizedBody210_3

def optimizedBody210_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_191, 210, 12)) (some 212) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody210_193, 210, 13))

def optimizedBody210_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (58, 58), (8, 50), (10, 0), (12, 10), (14, 12), (16, 14), (18, 16), (20, 18), (22, 20),
    (24, 22), (26, 24), (28, 4), (30, 26), (32, 28), (34, 30), (36, 32), (38, 34), (40, 6), (42, 8), (0, 36), (2, 38),
    (4, 40), (6, 42)]

def optimizedBody210_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_195

def optimizedBody210_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_194 optimizedBody210_196

def optimizedBody210_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_190 optimizedBody210_197

def optimizedBody210_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_198

def optimizedBody210_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_189 optimizedBody210_199

def optimizedBody210_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_185 optimizedBody210_200

def optimizedBody210_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_201

def optimizedBody210_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 6), (8, 16), (10, 0), (12, 4), (14, 14), (16, 8), (44, 44), (46, 46), (52, 48), (50, 50),
    (54, 52), (56, 4), (58, 0), (62, 60), (48, 54), (68, 14), (70, 8), (72, 70), (60, 58), (64, 62), (66, 66), (74, 68),
    (76, 74), (78, 78), (88, 80), (82, 82), (84, 84), (86, 86)]

def optimizedBody210_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (32, 2), (8, 8), (4, 4), (44, 44), (24, 46), (52, 52), (0, 50), (54, 54), (56, 56), (58, 58), (62, 62),
    (20, 48), (68, 68), (70, 70), (72, 72), (12, 60), (10, 64), (18, 66), (30, 74), (14, 76), (16, 78), (88, 88),
    (26, 82), (28, 84), (22, 86)]

def optimizedBody210_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (52, 52), (0, 50), (54, 54), (56, 56), (58, 58), (62, 62), (20, 48), (68, 68), (70, 70),
    (72, 72), (12, 60), (10, 64), (18, 66), (30, 74), (14, 76), (16, 78), (88, 88), (26, 82), (28, 84), (22, 86)]

def optimizedBody210_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_205 optimizedBody210_3

def optimizedBody210_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_204, 210, 14)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody210_206, 210, 15))

def optimizedBody210_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 30), (4, 0), (6, 26), (8, 28), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 24), (52, 52), (54, 54), (56, 56), (58, 58), (60, 6), (62, 62), (64, 20), (66, 32), (68, 68),
    (70, 70), (72, 72), (74, 12), (76, 10), (78, 8), (80, 18), (82, 4), (84, 14), (86, 16), (88, 88), (90, 22)]

def optimizedBody210_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (38, 2), (48, 6), (50, 8), (44, 44), (0, 46), (6, 52), (8, 54), (10, 56), (12, 58), (14, 60), (16, 62),
    (18, 64), (20, 66), (22, 68), (24, 70), (26, 72), (28, 74), (30, 76), (32, 78), (34, 80), (36, 82), (40, 84),
    (42, 86), (46, 88), (52, 90)]

def optimizedBody210_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (6, 52), (8, 54), (10, 56), (12, 58), (14, 60), (16, 62), (18, 64), (20, 66), (22, 68),
    (24, 70), (26, 72), (28, 74), (30, 76), (32, 78), (34, 80), (36, 82), (40, 84), (42, 86), (46, 88), (52, 90)]

def optimizedBody210_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_210 optimizedBody210_3

def optimizedBody210_212 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody210_209, 210, 16)) (some 212) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody210_211, 210, 17))

def optimizedBody210_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 0), (48, 6), (58, 4), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (36, 36), (38, 38), (40, 40), (42, 42), (0, 46),
    (2, 48), (4, 50), (6, 52)]

def optimizedBody210_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_213

def optimizedBody210_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_212 optimizedBody210_214

def optimizedBody210_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_208 optimizedBody210_215

def optimizedBody210_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_216

def optimizedBody210_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_207 optimizedBody210_217

def optimizedBody210_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_203 optimizedBody210_218

def optimizedBody210_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_219

def optimizedBody210_221 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 2) optimizedBody210_202 optimizedBody210_220

def optimizedBody210_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(38, 44), (16, 46), (46, 48), (58, 58), (50, 8), (18, 10), (40, 12), (0, 14), (54, 16), (12, 18), (44, 20), (22, 22),
    (24, 24), (62, 26), (4, 28), (2, 30), (34, 32), (10, 34), (36, 36), (56, 38), (6, 40), (8, 42), (48, 0), (60, 2),
    (52, 4), (14, 6)]

def optimizedBody210_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_222 optimizedBody210_91

def optimizedBody210_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_223

def optimizedBody210_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_221 optimizedBody210_224

def optimizedBody210_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_9 optimizedBody210_225

def optimizedBody210_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_31 optimizedBody210_226

def optimizedBody210_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_227

def optimizedBody210_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_184 optimizedBody210_228

def optimizedBody210_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_180 optimizedBody210_229

def optimizedBody210_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_230

def optimizedBody210_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_179 optimizedBody210_231

def optimizedBody210_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_126 optimizedBody210_232

def optimizedBody210_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_233

def optimizedBody210_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_234

def optimizedBody210_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_125 optimizedBody210_235

def optimizedBody210_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_69 optimizedBody210_236

def optimizedBody210_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_237

def optimizedBody210_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_238

def optimizedBody210_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_68 optimizedBody210_239

def optimizedBody210_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_10 optimizedBody210_240

def optimizedBody210_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_52 optimizedBody210_241

def optimizedBody210_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_51 optimizedBody210_242

def optimizedBody210_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_50 optimizedBody210_243

def optimizedBody210_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_49 optimizedBody210_244

def optimizedBody210_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_245

def optimizedBody210_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_48 optimizedBody210_246

def optimizedBody210_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_33 optimizedBody210_247

def optimizedBody210_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_32 optimizedBody210_248

def optimizedBody210_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_31 optimizedBody210_249

def optimizedBody210_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_30 optimizedBody210_250

def optimizedBody210_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_29 optimizedBody210_251

def optimizedBody210_253 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody210_252 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  Flapjack.Spt.ln)

def optimizedBody210_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_253 optimizedBody210_20

def optimizedBody210_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_28 optimizedBody210_254

def optimizedBody210_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_255

def optimizedBody210_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_27 optimizedBody210_256

def optimizedBody210_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_26 optimizedBody210_257

def optimizedBody210_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_25 optimizedBody210_258

def optimizedBody210_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_24 optimizedBody210_259

def optimizedBody210_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_12 optimizedBody210_260

def optimizedBody210_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_11 optimizedBody210_261

def optimizedBody210_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_10 optimizedBody210_262

def optimizedBody210_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_8 optimizedBody210_263

def optimizedBody210_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_23 optimizedBody210_264

def optimizedBody210_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_265

def optimizedBody210_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_266

def optimizedBody210_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_22 optimizedBody210_267

def optimizedBody210_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_8 optimizedBody210_268

def optimizedBody210_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_7 optimizedBody210_269

def optimizedBody210_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_6 optimizedBody210_270

def optimizedBody210_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_5 optimizedBody210_271

def optimizedBody210_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody210_0 optimizedBody210_272

def oracle210 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 11 Flapjack.Spt.ln)))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 1 (Flapjack.Spt.ls 8)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 21)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 14 (Flapjack.Spt.ls 43)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 7
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 27)) 42
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 32)))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 (Flapjack.Spt.ls 27))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 3 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 6)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 13)))
                    8
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 6 (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 46)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 34
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 19 (Flapjack.Spt.ls 22)))
                    25 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 7 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 7)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 8)))
                    9
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17)) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 35 (Flapjack.Spt.ls 39)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3)))
                  19
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22)) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25)))
                    6
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 12
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 44 Flapjack.Spt.ln)))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 10)) 46
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 36)))
                    7
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 14
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 27 (Flapjack.Spt.ls 35)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 4))) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 7 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 15 Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 9 Flapjack.Spt.ln)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.ls 44)) 1 (Flapjack.Spt.ls 36)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 5 (Flapjack.Spt.ls 41)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 32 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)))
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 26)) 32
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    17
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 30 (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 1 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 35)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 38)))
                    10
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 12
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 9 (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 16))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 17 Flapjack.Spt.ln))
                    (Flapjack.Spt.ls 16)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 12
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 5 Flapjack.Spt.ln)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 40)))
                    29
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)) 18
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 33 (Flapjack.Spt.ls 34)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) 0 (Flapjack.Spt.ls 5)) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 2)) 34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 36
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 21 (Flapjack.Spt.ls 24)))
                    23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 11
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 29)) 44
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))
                    4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 16
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 7)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) 11
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 15 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 13 Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 10 Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 3 (Flapjack.Spt.ls 37)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 20)) 20
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 13 (Flapjack.Spt.ls 42)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                  25
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 41
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 21
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 2 Flapjack.Spt.ln)))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 36)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))
                    19
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 17
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 30 (Flapjack.Spt.ls 8)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 2))) 17
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 33 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 18 Flapjack.Spt.ln))
                    20 (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 20
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 15)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 7)))
                    25
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 34 (Flapjack.Spt.ls 37)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 4 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 37 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6)))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 10
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 45 Flapjack.Spt.ln)))
                  11
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 31)) 45
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 15)))
                    8
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 15
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 26 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 41)) 12
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 16 (Flapjack.Spt.ls 9))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 14 Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 8 Flapjack.Spt.ln)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.ls 8)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 11)))
                    20
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 12 (Flapjack.Spt.ls 40)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 33 (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 11 Flapjack.Spt.ln)))
                  17
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 12)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 28)))
                    0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 43 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 34)) 7
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 9)))
                    9
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 13
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 3))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 6 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 16 Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 4 Flapjack.Spt.ln)))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 14)))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 10 (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1 (Flapjack.Spt.ls 47)) 18
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 13)) 35 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 35
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 20 (Flapjack.Spt.ls 12)))
                    11 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln)))
                  20
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 28)) 43
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 35)))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 2 (Flapjack.Spt.ls 39)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 44 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 27 (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 12 Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 31)) 29
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 37 Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 27)) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 45 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 33 (Flapjack.Spt.ls 45))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 29)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 39 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 35 (Flapjack.Spt.ls 47)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 41 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 31 (Flapjack.Spt.ls 43)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 30)) 28
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 36 Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 26)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 44 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 32 (Flapjack.Spt.ls 44))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 28)) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 46 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.ls 46)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 22)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 38 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.ls 42))))))))))))
def optimized210 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(210, 9, optimizedBody210_273)
theorem optimize210_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source210, oracle210) = optimized210 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize210_eq
end InitECandidate.Proofs.WordStages
