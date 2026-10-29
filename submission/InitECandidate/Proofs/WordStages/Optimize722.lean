import InitECandidate.Proofs.WordStages.Optimize706
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source722
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody722_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody722_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 8505329371266088957#64)

def optimizedBody722_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 17002214543764226050#64)

def optimizedBody722_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 6865905132761471162#64)

def optimizedBody722_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 8632934651105793861#64)

def optimizedBody722_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 6631298214892334189#64)

def optimizedBody722_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1582556514881692819#64)

def optimizedBody722_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def optimizedBody722_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody722_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 16 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody722_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody722_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (54, 16), (48, 8), (2, 20), (8, 22), (58, 4), (12, 24), (6, 26), (50, 12), (56, 2), (18, 18), (52, 10),
    (32, 32), (60, 6), (46, 14), (10, 28), (4, 30)]

def optimizedBody722_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody722_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody722_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody722_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32), (62, 0)]

def optimizedBody722_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody722_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 2), (16, 4), (18, 6), (20, 8), (22, 10), (24, 12), (44, 44),
    (46, 54), (48, 48), (58, 58), (50, 50), (56, 56), (52, 62), (54, 52), (60, 32), (62, 60), (64, 46)]

def optimizedBody722_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (30, 8), (34, 12), (28, 6), (6, 10), (0, 4), (44, 44), (46, 46), (18, 48), (22, 58), (14, 50), (20, 56),
    (10, 52), (16, 54), (32, 60), (4, 62), (12, 64)]

def optimizedBody722_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (18, 48), (22, 58), (14, 50), (20, 56), (10, 52), (16, 54), (32, 60), (4, 62), (12, 64)]

def optimizedBody722_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody722_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_19 optimizedBody722_20

def optimizedBody722_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody722_18, 722, 2)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody722_21, 722, 3))

def optimizedBody722_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (18, 18), (24, 24), (30, 30), (22, 22), (34, 34), (28, 28), (14, 14), (20, 20), (10, 10),
    (16, 16), (32, 32), (4, 4), (12, 12), (6, 6), (0, 0)]

def optimizedBody722_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_23

def optimizedBody722_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_22 optimizedBody722_24

def optimizedBody722_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_17 optimizedBody722_25

def optimizedBody722_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_26

def optimizedBody722_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 54), (18, 48), (24, 2), (30, 8), (22, 58), (34, 12), (28, 6), (14, 50), (20, 56), (10, 62), (16, 52),
    (32, 32), (4, 60), (12, 46), (6, 10), (0, 4)]

def optimizedBody722_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_28

def optimizedBody722_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 0) optimizedBody722_27 optimizedBody722_29

def optimizedBody722_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody722_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody722_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody722_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody722_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody722_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody722_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody722_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody722_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody722_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody722_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody722_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody722_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 0), (6, 28), (8, 30), (10, 6), (12, 34), (14, 20), (16, 22), (18, 4), (20, 18), (22, 16), (24, 14),
    (44, 44), (46, 46), (48, 18), (50, 22), (52, 14), (54, 20), (56, 10), (58, 16), (60, 4), (62, 12)]

def optimizedBody722_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (30, 8), (34, 12), (28, 6), (6, 10), (0, 4), (8, 44), (26, 46), (18, 48), (22, 50), (14, 52), (20, 54),
    (10, 56), (16, 58), (4, 60), (12, 62)]

def optimizedBody722_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (8, 44), (26, 46), (18, 48), (22, 50), (14, 52), (20, 54), (10, 56), (16, 58), (4, 60), (12, 62)]

def optimizedBody722_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_45 optimizedBody722_20

def optimizedBody722_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody722_44, 722, 4)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody722_46, 722, 5))

def optimizedBody722_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 1#64)

def optimizedBody722_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (26, 26), (18, 18), (24, 24), (30, 30), (22, 22), (34, 34), (28, 28), (14, 14), (20, 20), (10, 10), (16, 16),
    (32, 32), (4, 4), (12, 12), (6, 6), (0, 0)]

def optimizedBody722_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_48 optimizedBody722_49

def optimizedBody722_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_50

def optimizedBody722_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_47 optimizedBody722_51

def optimizedBody722_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_43 optimizedBody722_52

def optimizedBody722_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_53

def optimizedBody722_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 44), (26, 46), (18, 18), (24, 24), (30, 30), (22, 22), (34, 34), (28, 28), (14, 14), (20, 20), (10, 10),
    (16, 16), (32, 32), (4, 4), (12, 12), (6, 6), (0, 0)]

def optimizedBody722_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_55

def optimizedBody722_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody722_54 optimizedBody722_56

def optimizedBody722_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 8), (54, 26), (48, 18), (2, 24), (8, 30), (58, 22), (12, 34), (6, 28), (50, 14), (56, 20), (18, 10), (52, 16),
    (32, 32), (60, 4), (46, 12), (10, 6), (4, 0)]

def optimizedBody722_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody722_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_58 optimizedBody722_59

def optimizedBody722_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_60

def optimizedBody722_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_57 optimizedBody722_61

def optimizedBody722_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_42 optimizedBody722_62

def optimizedBody722_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_41 optimizedBody722_63

def optimizedBody722_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_40 optimizedBody722_64

def optimizedBody722_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_39 optimizedBody722_65

def optimizedBody722_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_38 optimizedBody722_66

def optimizedBody722_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_37 optimizedBody722_67

def optimizedBody722_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_31 optimizedBody722_68

def optimizedBody722_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_36 optimizedBody722_69

def optimizedBody722_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_35 optimizedBody722_70

def optimizedBody722_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_34 optimizedBody722_71

def optimizedBody722_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_33 optimizedBody722_72

def optimizedBody722_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_32 optimizedBody722_73

def optimizedBody722_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_31 optimizedBody722_74

def optimizedBody722_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_75

def optimizedBody722_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_30 optimizedBody722_76

def optimizedBody722_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_16 optimizedBody722_77

def optimizedBody722_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_15 optimizedBody722_78

def optimizedBody722_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_14 optimizedBody722_79

def optimizedBody722_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_13 optimizedBody722_80

def optimizedBody722_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_81

def optimizedBody722_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody722_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_83

def optimizedBody722_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 18) optimizedBody722_82 optimizedBody722_84

def optimizedBody722_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (54, 14), (48, 16), (2, 2), (8, 8), (58, 20), (12, 12), (6, 6), (50, 22), (56, 24), (18, 18), (52, 26),
    (32, 32), (60, 28), (46, 30), (10, 10), (4, 4)]

def optimizedBody722_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_86

def optimizedBody722_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_85 optimizedBody722_87

def optimizedBody722_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_13 optimizedBody722_88

def optimizedBody722_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_12 optimizedBody722_89

def optimizedBody722_91 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  Flapjack.Spt.ln) optimizedBody722_90 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody722_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody722_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6, 8, 10, 12]

def optimizedBody722_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_92 optimizedBody722_93

def optimizedBody722_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_94

def optimizedBody722_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_91 optimizedBody722_95

def optimizedBody722_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_11 optimizedBody722_96

def optimizedBody722_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_10 optimizedBody722_97

def optimizedBody722_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_9 optimizedBody722_98

def optimizedBody722_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_8 optimizedBody722_99

def optimizedBody722_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_7 optimizedBody722_100

def optimizedBody722_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_6 optimizedBody722_101

def optimizedBody722_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_5 optimizedBody722_102

def optimizedBody722_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_4 optimizedBody722_103

def optimizedBody722_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_3 optimizedBody722_104

def optimizedBody722_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_2 optimizedBody722_105

def optimizedBody722_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_1 optimizedBody722_106

def optimizedBody722_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_0 optimizedBody722_107

def oracle722 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 2)) 16
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 11)) 30
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 9 (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 23 Flapjack.Spt.ln)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 0 (Flapjack.Spt.ls 10)) 13
                (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.ls 8)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 8)) 14
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 15 (Flapjack.Spt.ls 13)) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
                5 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 31 (Flapjack.Spt.ls 11)) 10
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 10)) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 9
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 16)) 12
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 12 (Flapjack.Spt.ls 9)) 16
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 22 Flapjack.Spt.ln)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 16) Flapjack.Spt.ln) 4 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 16 (Flapjack.Spt.ls 7)) 15
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.ls 5)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 4)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 5)) 11
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 17 (Flapjack.Spt.ls 4)) 9
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 9
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln))
                4 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 16) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 Flapjack.Spt.ln)) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 7)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8 (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 9))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)))))))
def optimized722 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(722, 9, optimizedBody722_108)
theorem optimize722_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source722, oracle722) = optimized722 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize722_eq
end InitECandidate.Proofs.WordStages
