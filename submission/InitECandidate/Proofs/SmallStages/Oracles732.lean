import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source732
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles732
def optimizedBody732_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody732_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 1#64)

def optimizedBody732_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 0#64)

def optimizedBody732_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def optimizedBody732_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody732_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody732_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody732_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def optimizedBody732_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody732_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 16 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody732_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody732_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (54, 16), (48, 8), (2, 20), (8, 22), (58, 4), (12, 24), (6, 26), (50, 12), (56, 2), (18, 18), (52, 10),
    (32, 32), (60, 6), (46, 14), (10, 28), (4, 30)]

def optimizedBody732_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody732_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody732_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody732_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32), (62, 0)]

def optimizedBody732_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody732_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 2), (16, 4), (18, 6), (20, 8), (22, 10), (24, 12), (44, 44),
    (46, 54), (48, 48), (58, 58), (50, 50), (56, 56), (52, 62), (54, 52), (60, 32), (62, 60), (64, 46)]

def optimizedBody732_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (30, 8), (34, 12), (28, 6), (6, 10), (0, 4), (44, 44), (46, 46), (18, 48), (22, 58), (14, 50), (20, 56),
    (10, 52), (16, 54), (32, 60), (4, 62), (12, 64)]

def optimizedBody732_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (18, 48), (22, 58), (14, 50), (20, 56), (10, 52), (16, 54), (32, 60), (4, 62), (12, 64)]

def optimizedBody732_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody732_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_19 optimizedBody732_20

def optimizedBody732_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody732_18, 732, 2)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody732_21, 732, 3))

def optimizedBody732_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (18, 18), (24, 24), (30, 30), (22, 22), (34, 34), (28, 28), (14, 14), (20, 20), (10, 10),
    (16, 16), (32, 32), (4, 4), (12, 12), (6, 6), (0, 0)]

def optimizedBody732_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_23

def optimizedBody732_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_22 optimizedBody732_24

def optimizedBody732_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_17 optimizedBody732_25

def optimizedBody732_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_26

def optimizedBody732_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 54), (18, 48), (24, 2), (30, 8), (22, 58), (34, 12), (28, 6), (14, 50), (20, 56), (10, 62), (16, 52),
    (32, 32), (4, 60), (12, 46), (6, 10), (0, 4)]

def optimizedBody732_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_28

def optimizedBody732_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 0) optimizedBody732_27 optimizedBody732_29

def optimizedBody732_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody732_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody732_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody732_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody732_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody732_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody732_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody732_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody732_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody732_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody732_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody732_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody732_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 0), (6, 28), (8, 30), (10, 6), (12, 34), (14, 20), (16, 22), (18, 4), (20, 18), (22, 16), (24, 14),
    (44, 44), (46, 46), (48, 18), (50, 22), (52, 14), (54, 20), (56, 10), (58, 16), (60, 4), (62, 12)]

def optimizedBody732_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (30, 8), (34, 12), (28, 6), (6, 10), (0, 4), (8, 44), (26, 46), (18, 48), (22, 50), (14, 52), (20, 54),
    (10, 56), (16, 58), (4, 60), (12, 62)]

def optimizedBody732_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (8, 44), (26, 46), (18, 48), (22, 50), (14, 52), (20, 54), (10, 56), (16, 58), (4, 60), (12, 62)]

def optimizedBody732_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_45 optimizedBody732_20

def optimizedBody732_47 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody732_44, 732, 4)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody732_46, 732, 5))

def optimizedBody732_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 1#64)

def optimizedBody732_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (26, 26), (18, 18), (24, 24), (30, 30), (22, 22), (34, 34), (28, 28), (14, 14), (20, 20), (10, 10), (16, 16),
    (32, 32), (4, 4), (12, 12), (6, 6), (0, 0)]

def optimizedBody732_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_48 optimizedBody732_49

def optimizedBody732_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_50

def optimizedBody732_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_47 optimizedBody732_51

def optimizedBody732_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_43 optimizedBody732_52

def optimizedBody732_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_53

def optimizedBody732_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 44), (26, 46), (18, 18), (24, 24), (30, 30), (22, 22), (34, 34), (28, 28), (14, 14), (20, 20), (10, 10),
    (16, 16), (32, 32), (4, 4), (12, 12), (6, 6), (0, 0)]

def optimizedBody732_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_55

def optimizedBody732_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody732_54 optimizedBody732_56

def optimizedBody732_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 8), (54, 26), (48, 18), (2, 24), (8, 30), (58, 22), (12, 34), (6, 28), (50, 14), (56, 20), (18, 10), (52, 16),
    (32, 32), (60, 4), (46, 12), (10, 6), (4, 0)]

def optimizedBody732_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody732_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_58 optimizedBody732_59

def optimizedBody732_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_60

def optimizedBody732_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_57 optimizedBody732_61

def optimizedBody732_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_42 optimizedBody732_62

def optimizedBody732_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_41 optimizedBody732_63

def optimizedBody732_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_40 optimizedBody732_64

def optimizedBody732_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_39 optimizedBody732_65

def optimizedBody732_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_38 optimizedBody732_66

def optimizedBody732_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_37 optimizedBody732_67

def optimizedBody732_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_31 optimizedBody732_68

def optimizedBody732_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_36 optimizedBody732_69

def optimizedBody732_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_35 optimizedBody732_70

def optimizedBody732_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_34 optimizedBody732_71

def optimizedBody732_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_33 optimizedBody732_72

def optimizedBody732_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_32 optimizedBody732_73

def optimizedBody732_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_31 optimizedBody732_74

def optimizedBody732_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_75

def optimizedBody732_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_30 optimizedBody732_76

def optimizedBody732_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_16 optimizedBody732_77

def optimizedBody732_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_15 optimizedBody732_78

def optimizedBody732_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_14 optimizedBody732_79

def optimizedBody732_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_13 optimizedBody732_80

def optimizedBody732_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_81

def optimizedBody732_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody732_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_83

def optimizedBody732_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 18) optimizedBody732_82 optimizedBody732_84

def optimizedBody732_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (54, 14), (48, 16), (2, 2), (8, 8), (58, 20), (12, 12), (6, 6), (50, 22), (56, 24), (18, 18), (52, 26),
    (32, 32), (60, 28), (46, 30), (10, 10), (4, 4)]

def optimizedBody732_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_86

def optimizedBody732_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_85 optimizedBody732_87

def optimizedBody732_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_13 optimizedBody732_88

def optimizedBody732_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_12 optimizedBody732_89

def optimizedBody732_91 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody732_90 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody732_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody732_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6, 8, 10, 12]

def optimizedBody732_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_92 optimizedBody732_93

def optimizedBody732_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_94

def optimizedBody732_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_91 optimizedBody732_95

def optimizedBody732_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_11 optimizedBody732_96

def optimizedBody732_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_97

def optimizedBody732_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_9 optimizedBody732_98

def optimizedBody732_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_8 optimizedBody732_99

def optimizedBody732_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_7 optimizedBody732_100

def optimizedBody732_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_6 optimizedBody732_101

def optimizedBody732_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_5 optimizedBody732_102

def optimizedBody732_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_4 optimizedBody732_103

def optimizedBody732_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_3 optimizedBody732_104

def optimizedBody732_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_105

def optimizedBody732_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_1 optimizedBody732_106

def optimizedBody732_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_0 optimizedBody732_107

def oracle732 : Option (Spt Nat) :=
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
def optimized732 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(732, 9, optimizedBody732_108)
end InitECandidate.Proofs.SmallStages.Oracles732
