import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles214
def optimizedBody214_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody214_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (38, 44), (34, 46), (46, 48), (50, 50), (12, 52), (40, 54), (44, 56), (22, 58), (0, 60)]

def optimizedBody214_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (38, 44), (34, 46), (46, 48), (50, 50), (12, 52), (40, 54), (44, 56), (22, 58), (0, 60)]

def optimizedBody214_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody214_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_2 optimizedBody214_3

def optimizedBody214_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_1, 214, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody214_4, 214, 3))

def optimizedBody214_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody214_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody214_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody214_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody214_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody214_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody214_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody214_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody214_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 38 [2, 4, 6, 8]

def optimizedBody214_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_13 optimizedBody214_14

def optimizedBody214_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_12 optimizedBody214_15

def optimizedBody214_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_11 optimizedBody214_16

def optimizedBody214_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_10 optimizedBody214_17

def optimizedBody214_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_9 optimizedBody214_18

def optimizedBody214_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_19

def optimizedBody214_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody214_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody214_20 optimizedBody214_21

def optimizedBody214_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (0, 0), (12, 12), (44, 44), (46, 46), (22, 22), (50, 50), (40, 40)]

def optimizedBody214_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody214_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody214_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody214_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody214_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(38, 38), (16, 34), (46, 46), (58, 14), (50, 50), (18, 50), (40, 40), (0, 0), (54, 10), (12, 12), (44, 44), (22, 22),
    (24, 46), (62, 40), (4, 4), (2, 2), (34, 34), (10, 44), (36, 12), (56, 16), (6, 6), (8, 8), (48, 22), (60, 18),
    (52, 20), (14, 0)]

def optimizedBody214_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 22), (22, 24)]

def optimizedBody214_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 24 22 (Flapjack.WordRegImm.reg 20)))

def optimizedBody214_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody214_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 24 24 (Flapjack.WordRegImm.reg 18)))

def optimizedBody214_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def optimizedBody214_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 40)]

def optimizedBody214_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def optimizedBody214_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_15

def optimizedBody214_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(26, 4), (28, 2), (30, 6), (32, 8)]

def optimizedBody214_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 40) optimizedBody214_36 optimizedBody214_37

def optimizedBody214_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 24), (26, 26), (28, 28), (30, 30), (32, 32)]

def optimizedBody214_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_39

def optimizedBody214_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_40

def optimizedBody214_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_38 optimizedBody214_41

def optimizedBody214_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_35 optimizedBody214_42

def optimizedBody214_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_34 optimizedBody214_43

def optimizedBody214_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_44

def optimizedBody214_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 40), (26, 4), (28, 2), (30, 6), (32, 8)]

def optimizedBody214_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_46

def optimizedBody214_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 42) optimizedBody214_45 optimizedBody214_47

def optimizedBody214_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (34, 34)]

def optimizedBody214_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 34 (Flapjack.WordRegImm.reg 0)))

def optimizedBody214_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody214_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 36)))

def optimizedBody214_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 44)]

def optimizedBody214_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56), (4, 58), (6, 60), (8, 52)]

def optimizedBody214_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_54 optimizedBody214_14

def optimizedBody214_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_55

def optimizedBody214_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(64, 58), (66, 56), (68, 60), (70, 52)]

def optimizedBody214_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 2) optimizedBody214_56 optimizedBody214_57

def optimizedBody214_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 64), (44, 40), (56, 66), (60, 68), (52, 70)]

def optimizedBody214_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_59

def optimizedBody214_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_60

def optimizedBody214_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_58 optimizedBody214_61

def optimizedBody214_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_8 optimizedBody214_62

def optimizedBody214_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_53 optimizedBody214_63

def optimizedBody214_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_64

def optimizedBody214_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 58), (44, 44), (56, 56), (60, 60), (52, 52)]

def optimizedBody214_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_66

def optimizedBody214_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody214_65 optimizedBody214_67

def optimizedBody214_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 38), (16, 16), (48, 46), (50, 58), (52, 50), (54, 18), (56, 24), (46, 0), (60, 54), (12, 12), (58, 44),
    (66, 20), (68, 22), (70, 62), (72, 26), (74, 28), (62, 34), (10, 10), (64, 36), (82, 56), (84, 30), (86, 32),
    (88, 48), (90, 60), (92, 52), (14, 14)]

def optimizedBody214_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56)]

def optimizedBody214_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody214_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody214_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody214_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody214_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 66)]

def optimizedBody214_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody214_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody214_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody214_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 68)]

def optimizedBody214_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody214_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody214_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 74), (4, 72), (6, 84), (8, 86), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 48), (50, 50),
    (52, 52), (54, 4), (56, 6), (58, 46), (60, 60), (62, 12), (64, 58), (66, 2), (68, 0), (70, 70), (72, 62), (74, 10),
    (76, 64), (82, 82), (88, 88), (90, 90), (92, 92), (78, 14)]

def optimizedBody214_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (22, 2), (6, 6), (8, 8), (44, 44), (16, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (18, 58),
    (60, 60), (12, 62), (20, 64), (66, 66), (68, 68), (70, 70), (24, 72), (10, 74), (26, 76), (28, 82), (88, 88),
    (30, 90), (32, 92), (14, 78)]

def optimizedBody214_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (18, 58), (60, 60), (12, 62), (20, 64),
    (66, 66), (68, 68), (70, 70), (24, 72), (10, 74), (26, 76), (28, 82), (88, 88), (30, 90), (32, 92), (14, 78)]

def optimizedBody214_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_87 optimizedBody214_3

def optimizedBody214_89 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_86, 214, 4)) (some 215) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody214_88, 214, 5))

def optimizedBody214_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (16, 16), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (46, 18), (60, 60), (12, 12), (58, 20),
    (66, 66), (68, 68), (70, 70), (72, 4), (74, 22), (62, 24), (10, 10), (64, 26), (82, 28), (84, 6), (86, 8), (88, 88),
    (90, 30), (92, 32), (14, 14)]

def optimizedBody214_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody214_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_90 optimizedBody214_91

def optimizedBody214_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_92

def optimizedBody214_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_89 optimizedBody214_93

def optimizedBody214_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_85 optimizedBody214_94

def optimizedBody214_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_80 optimizedBody214_95

def optimizedBody214_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_79 optimizedBody214_96

def optimizedBody214_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_84 optimizedBody214_97

def optimizedBody214_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_75 optimizedBody214_98

def optimizedBody214_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_74 optimizedBody214_99

def optimizedBody214_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_83 optimizedBody214_100

def optimizedBody214_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_82 optimizedBody214_101

def optimizedBody214_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_81 optimizedBody214_102

def optimizedBody214_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_80 optimizedBody214_103

def optimizedBody214_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_79 optimizedBody214_104

def optimizedBody214_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_78 optimizedBody214_105

def optimizedBody214_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_77 optimizedBody214_106

def optimizedBody214_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_76 optimizedBody214_107

def optimizedBody214_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_75 optimizedBody214_108

def optimizedBody214_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_74 optimizedBody214_109

def optimizedBody214_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_73 optimizedBody214_110

def optimizedBody214_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_72 optimizedBody214_111

def optimizedBody214_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_112

def optimizedBody214_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 2)]

def optimizedBody214_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody214_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_114 optimizedBody214_115

def optimizedBody214_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_116

def optimizedBody214_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody214_113 optimizedBody214_117

def optimizedBody214_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 42), (16, 40), (48, 38), (50, 36), (52, 34), (54, 32), (56, 30), (46, 28), (60, 26), (12, 24), (58, 22),
    (66, 20), (68, 18), (70, 16), (72, 14), (74, 12), (62, 10), (10, 8), (64, 6), (82, 4), (84, 2), (86, 86), (88, 88),
    (90, 90), (92, 0), (14, 44)]

def optimizedBody214_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_119

def optimizedBody214_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_118 optimizedBody214_120

def optimizedBody214_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_10 optimizedBody214_121

def optimizedBody214_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_71 optimizedBody214_122

def optimizedBody214_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_70 optimizedBody214_123

def optimizedBody214_125 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody214_124 (Flapjack.Spt.bn
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

def optimizedBody214_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 16), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (14, 46), (60, 60), (62, 12), (10, 58),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (16, 62), (78, 10), (12, 64), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92), (94, 14)]

def optimizedBody214_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody214_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody214_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody214_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody214_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody214_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody214_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody214_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 16 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody214_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody214_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody214_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 82), (4, 50), (6, 90), (8, 92), (10, 78), (12, 62), (14, 94), (16, 46), (44, 44), (46, 46), (48, 48), (52, 52),
    (54, 54), (56, 56), (50, 0), (60, 60), (62, 62), (58, 2), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (64, 4),
    (78, 78), (76, 6), (84, 84), (86, 86), (88, 88), (94, 94)]

def optimizedBody214_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (52, 52), (0, 54), (18, 56), (14, 50), (60, 60),
    (62, 62), (10, 58), (20, 66), (22, 68), (70, 70), (72, 72), (74, 74), (16, 64), (78, 78), (12, 76), (84, 84),
    (86, 86), (88, 88), (94, 94)]

def optimizedBody214_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (0, 54), (18, 56), (14, 50), (60, 60), (62, 62), (10, 58), (20, 66),
    (22, 68), (70, 70), (72, 72), (74, 74), (16, 64), (78, 78), (12, 76), (84, 84), (86, 86), (88, 88), (94, 94)]

def optimizedBody214_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_143 optimizedBody214_3

def optimizedBody214_145 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_142, 214, 6)) (some 215) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody214_144, 214, 7))

def optimizedBody214_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 0), (56, 18), (14, 14), (60, 60), (62, 62), (10, 10), (66, 20),
    (68, 22), (70, 70), (72, 72), (74, 74), (16, 16), (78, 78), (12, 12), (82, 24), (84, 84), (86, 86), (88, 88),
    (90, 6), (92, 8), (94, 94)]

def optimizedBody214_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_146 optimizedBody214_91

def optimizedBody214_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_147

def optimizedBody214_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_145 optimizedBody214_148

def optimizedBody214_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_141 optimizedBody214_149

def optimizedBody214_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_140 optimizedBody214_150

def optimizedBody214_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_136 optimizedBody214_151

def optimizedBody214_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_139 optimizedBody214_152

def optimizedBody214_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_138 optimizedBody214_153

def optimizedBody214_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_132 optimizedBody214_154

def optimizedBody214_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_137 optimizedBody214_155

def optimizedBody214_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_136 optimizedBody214_156

def optimizedBody214_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_135 optimizedBody214_157

def optimizedBody214_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_134 optimizedBody214_158

def optimizedBody214_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_128 optimizedBody214_159

def optimizedBody214_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_133 optimizedBody214_160

def optimizedBody214_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_132 optimizedBody214_161

def optimizedBody214_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_131 optimizedBody214_162

def optimizedBody214_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_130 optimizedBody214_163

def optimizedBody214_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_7 optimizedBody214_164

def optimizedBody214_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_129 optimizedBody214_165

def optimizedBody214_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_128 optimizedBody214_166

def optimizedBody214_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_167

def optimizedBody214_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody214_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_169 optimizedBody214_115

def optimizedBody214_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_170

def optimizedBody214_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody214_168 optimizedBody214_171

def optimizedBody214_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 42), (46, 40), (48, 38), (50, 36), (52, 34), (54, 32), (56, 30), (14, 28), (60, 26), (62, 24), (10, 22),
    (66, 20), (68, 18), (70, 16), (72, 14), (74, 12), (16, 10), (78, 8), (12, 6), (82, 4), (84, 2), (86, 86), (88, 88),
    (90, 90), (92, 0), (94, 94)]

def optimizedBody214_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_173

def optimizedBody214_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_172 optimizedBody214_174

def optimizedBody214_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_9 optimizedBody214_175

def optimizedBody214_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_127 optimizedBody214_176

def optimizedBody214_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_7 optimizedBody214_177

def optimizedBody214_179 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody214_178 (Flapjack.Spt.bn
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

def optimizedBody214_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (4, 54), (6, 66), (8, 68), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 14), (60, 60), (62, 62), (64, 10), (66, 66), (68, 68), (70, 70), (72, 72),
    (74, 74), (76, 16), (78, 78), (80, 12), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90), (92, 92), (94, 94)]

def optimizedBody214_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (0, 56), (6, 58), (60, 60), (54, 62), (10, 64),
    (14, 66), (8, 68), (70, 70), (58, 72), (62, 74), (16, 76), (66, 78), (12, 80), (68, 82), (74, 84), (78, 86),
    (80, 88), (82, 90), (84, 92), (86, 94)]

def optimizedBody214_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (0, 56), (6, 58), (60, 60), (54, 62), (10, 64),
    (14, 66), (8, 68), (70, 70), (58, 72), (62, 74), (16, 76), (66, 78), (12, 80), (68, 82), (74, 84), (78, 86),
    (80, 88), (82, 90), (84, 92), (86, 94)]

def optimizedBody214_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_182 optimizedBody214_3

def optimizedBody214_184 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_181, 214, 8)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody214_183, 214, 9))

def optimizedBody214_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 14), (8, 8), (10, 10), (12, 12), (14, 6), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (56, 6), (60, 60), (54, 54), (64, 10), (70, 70), (58, 58), (62, 62), (72, 16), (66, 66), (76, 12),
    (68, 68), (74, 74), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86)]

def optimizedBody214_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (32, 2), (6, 6), (8, 8), (44, 44), (24, 46), (48, 48), (12, 50), (50, 52), (56, 56), (60, 60), (20, 54),
    (64, 64), (70, 70), (0, 58), (30, 62), (72, 72), (18, 66), (76, 76), (10, 68), (26, 74), (28, 78), (80, 80),
    (14, 82), (16, 84), (22, 86)]

def optimizedBody214_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (48, 48), (12, 50), (50, 52), (56, 56), (60, 60), (20, 54), (64, 64), (70, 70), (0, 58),
    (30, 62), (72, 72), (18, 66), (76, 76), (10, 68), (26, 74), (28, 78), (80, 80), (14, 82), (16, 84), (22, 86)]

def optimizedBody214_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_187 optimizedBody214_3

def optimizedBody214_189 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_186, 214, 10)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody214_188, 214, 11))

def optimizedBody214_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 30), (4, 0), (6, 26), (8, 28), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 24), (48, 48), (58, 12), (50, 50), (52, 4), (54, 32), (56, 56), (60, 60), (62, 20), (64, 64),
    (66, 6), (68, 8), (70, 70), (72, 72), (74, 18), (76, 76), (78, 10), (80, 80), (82, 14), (84, 16), (86, 22)]

def optimizedBody214_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (26, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (58, 58), (50, 50), (0, 52), (10, 54), (12, 56),
    (14, 60), (16, 62), (18, 64), (20, 66), (22, 68), (24, 70), (28, 72), (30, 74), (32, 76), (34, 78), (36, 80),
    (38, 82), (40, 84), (42, 86)]

def optimizedBody214_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (58, 58), (50, 50), (0, 52), (10, 54), (12, 56), (14, 60), (16, 62), (18, 64),
    (20, 66), (22, 68), (24, 70), (28, 72), (30, 74), (32, 76), (34, 78), (36, 80), (38, 82), (40, 84), (42, 86)]

def optimizedBody214_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_192 optimizedBody214_3

def optimizedBody214_194 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_191, 214, 12)) (some 216) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody214_193, 214, 13))

def optimizedBody214_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (58, 58), (8, 50), (10, 0), (12, 10), (14, 12), (16, 14), (18, 16), (20, 18), (22, 20),
    (24, 22), (26, 24), (28, 4), (30, 26), (32, 28), (34, 30), (36, 32), (38, 34), (40, 6), (42, 8), (0, 36), (2, 38),
    (4, 40), (6, 42)]

def optimizedBody214_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_195

def optimizedBody214_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_194 optimizedBody214_196

def optimizedBody214_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_190 optimizedBody214_197

def optimizedBody214_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_198

def optimizedBody214_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_189 optimizedBody214_199

def optimizedBody214_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_185 optimizedBody214_200

def optimizedBody214_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_201

def optimizedBody214_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 6), (8, 16), (10, 0), (12, 4), (14, 14), (16, 8), (44, 44), (46, 46), (52, 48), (50, 50),
    (54, 52), (56, 4), (58, 0), (62, 60), (48, 54), (68, 14), (70, 8), (72, 70), (60, 58), (64, 62), (66, 66), (74, 68),
    (76, 74), (78, 78), (88, 80), (82, 82), (84, 84), (86, 86)]

def optimizedBody214_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (32, 2), (8, 8), (4, 4), (44, 44), (24, 46), (52, 52), (0, 50), (54, 54), (56, 56), (58, 58), (62, 62),
    (20, 48), (68, 68), (70, 70), (72, 72), (12, 60), (10, 64), (18, 66), (30, 74), (14, 76), (16, 78), (88, 88),
    (26, 82), (28, 84), (22, 86)]

def optimizedBody214_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (52, 52), (0, 50), (54, 54), (56, 56), (58, 58), (62, 62), (20, 48), (68, 68), (70, 70),
    (72, 72), (12, 60), (10, 64), (18, 66), (30, 74), (14, 76), (16, 78), (88, 88), (26, 82), (28, 84), (22, 86)]

def optimizedBody214_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_205 optimizedBody214_3

def optimizedBody214_207 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_204, 214, 14)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody214_206, 214, 15))

def optimizedBody214_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 30), (4, 0), (6, 26), (8, 28), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 24), (52, 52), (54, 54), (56, 56), (58, 58), (60, 6), (62, 62), (64, 20), (66, 32), (68, 68),
    (70, 70), (72, 72), (74, 12), (76, 10), (78, 8), (80, 18), (82, 4), (84, 14), (86, 16), (88, 88), (90, 22)]

def optimizedBody214_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (38, 2), (48, 6), (50, 8), (44, 44), (0, 46), (6, 52), (8, 54), (10, 56), (12, 58), (14, 60), (16, 62),
    (18, 64), (20, 66), (22, 68), (24, 70), (26, 72), (28, 74), (30, 76), (32, 78), (34, 80), (36, 82), (40, 84),
    (42, 86), (46, 88), (52, 90)]

def optimizedBody214_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (6, 52), (8, 54), (10, 56), (12, 58), (14, 60), (16, 62), (18, 64), (20, 66), (22, 68),
    (24, 70), (26, 72), (28, 74), (30, 76), (32, 78), (34, 80), (36, 82), (40, 84), (42, 86), (46, 88), (52, 90)]

def optimizedBody214_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_210 optimizedBody214_3

def optimizedBody214_212 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody214_209, 214, 16)) (some 216) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody214_211, 214, 17))

def optimizedBody214_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 0), (48, 6), (58, 4), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (36, 36), (38, 38), (40, 40), (42, 42), (0, 46),
    (2, 48), (4, 50), (6, 52)]

def optimizedBody214_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_213

def optimizedBody214_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_212 optimizedBody214_214

def optimizedBody214_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_208 optimizedBody214_215

def optimizedBody214_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_216

def optimizedBody214_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_207 optimizedBody214_217

def optimizedBody214_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_203 optimizedBody214_218

def optimizedBody214_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_219

def optimizedBody214_221 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 2) optimizedBody214_202 optimizedBody214_220

def optimizedBody214_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(38, 44), (16, 46), (46, 48), (58, 58), (50, 8), (18, 10), (40, 12), (0, 14), (54, 16), (12, 18), (44, 20), (22, 22),
    (24, 24), (62, 26), (4, 28), (2, 30), (34, 32), (10, 34), (36, 36), (56, 38), (6, 40), (8, 42), (48, 0), (60, 2),
    (52, 4), (14, 6)]

def optimizedBody214_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_222 optimizedBody214_91

def optimizedBody214_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_223

def optimizedBody214_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_221 optimizedBody214_224

def optimizedBody214_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_9 optimizedBody214_225

def optimizedBody214_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_31 optimizedBody214_226

def optimizedBody214_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_227

def optimizedBody214_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_184 optimizedBody214_228

def optimizedBody214_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_180 optimizedBody214_229

def optimizedBody214_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_230

def optimizedBody214_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_179 optimizedBody214_231

def optimizedBody214_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_126 optimizedBody214_232

def optimizedBody214_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_233

def optimizedBody214_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_234

def optimizedBody214_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_125 optimizedBody214_235

def optimizedBody214_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_69 optimizedBody214_236

def optimizedBody214_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_237

def optimizedBody214_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_238

def optimizedBody214_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_68 optimizedBody214_239

def optimizedBody214_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_10 optimizedBody214_240

def optimizedBody214_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_52 optimizedBody214_241

def optimizedBody214_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_51 optimizedBody214_242

def optimizedBody214_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_50 optimizedBody214_243

def optimizedBody214_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_49 optimizedBody214_244

def optimizedBody214_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_245

def optimizedBody214_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_48 optimizedBody214_246

def optimizedBody214_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_33 optimizedBody214_247

def optimizedBody214_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_32 optimizedBody214_248

def optimizedBody214_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_31 optimizedBody214_249

def optimizedBody214_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_30 optimizedBody214_250

def optimizedBody214_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_29 optimizedBody214_251

def optimizedBody214_253 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody214_252 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  Flapjack.Spt.ln)

def optimizedBody214_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_253 optimizedBody214_20

def optimizedBody214_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_28 optimizedBody214_254

def optimizedBody214_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_255

def optimizedBody214_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_27 optimizedBody214_256

def optimizedBody214_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_26 optimizedBody214_257

def optimizedBody214_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_25 optimizedBody214_258

def optimizedBody214_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_24 optimizedBody214_259

def optimizedBody214_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_12 optimizedBody214_260

def optimizedBody214_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_11 optimizedBody214_261

def optimizedBody214_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_10 optimizedBody214_262

def optimizedBody214_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_8 optimizedBody214_263

def optimizedBody214_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_23 optimizedBody214_264

def optimizedBody214_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_265

def optimizedBody214_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_266

def optimizedBody214_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_22 optimizedBody214_267

def optimizedBody214_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_8 optimizedBody214_268

def optimizedBody214_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_7 optimizedBody214_269

def optimizedBody214_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_6 optimizedBody214_270

def optimizedBody214_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_5 optimizedBody214_271

def optimizedBody214_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_0 optimizedBody214_272

def oracle214 : Option (Spt Nat) :=
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
def optimized214 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(214, 9, optimizedBody214_273)
end InitECandidate.Proofs.SmallStages.Oracles214
