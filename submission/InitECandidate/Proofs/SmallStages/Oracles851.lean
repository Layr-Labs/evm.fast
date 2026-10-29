import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source851
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles851
def optimizedBody851_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (0, 0), (6, 2)]

def optimizedBody851_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 256#64)

def optimizedBody851_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 6)]

def optimizedBody851_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody851_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody851_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody851_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_4 optimizedBody851_5

def optimizedBody851_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody851_3, 851, 2)) (some 78) ([2, 4]) (some (2, optimizedBody851_6, 851, 3))

def optimizedBody851_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody851_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody851_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody851_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody851_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody851_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 10), (0, 0), (14, 14), (46, 4), (8, 8)]

def optimizedBody851_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody851_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody851_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody851_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody851_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody851_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody851_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 0)]

def optimizedBody851_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody851_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody851_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 10), (48, 2), (50, 14), (52, 46), (54, 8), (56, 12)]

def optimizedBody851_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (12, 56)]

def optimizedBody851_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (12, 56)]

def optimizedBody851_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_25 optimizedBody851_5

def optimizedBody851_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody851_24, 851, 4)) (some 850) ([2, 4, 6]) (some (2, optimizedBody851_26, 851, 5))

def optimizedBody851_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody851_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody851_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody851_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 8), (0, 0), (48, 48), (50, 50), (52, 52), (10, 10), (12, 12)]

def optimizedBody851_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody851_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 0)]

def optimizedBody851_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody851_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody851_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody851_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody851_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 8), (50, 2), (52, 48), (54, 50), (56, 52), (58, 10), (60, 12)]

def optimizedBody851_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (14, 46), (8, 48), (0, 50), (16, 52), (18, 54), (20, 56), (4, 58), (12, 60)]

def optimizedBody851_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (6, 44), (14, 46), (8, 48), (0, 50), (16, 52), (18, 54), (20, 56), (4, 58), (12, 60)]

def optimizedBody851_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_40 optimizedBody851_5

def optimizedBody851_42 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody851_39, 851, 6)) (some 850) ([2, 4, 6]) (some (2, optimizedBody851_41, 851, 7))

def optimizedBody851_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody851_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (46, 14), (8, 8), (0, 0), (48, 16), (50, 18), (52, 20), (10, 10), (12, 12)]

def optimizedBody851_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody851_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_44 optimizedBody851_45

def optimizedBody851_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_43 optimizedBody851_46

def optimizedBody851_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_9 optimizedBody851_47

def optimizedBody851_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_48

def optimizedBody851_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_42 optimizedBody851_49

def optimizedBody851_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_38 optimizedBody851_50

def optimizedBody851_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_37 optimizedBody851_51

def optimizedBody851_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_36 optimizedBody851_52

def optimizedBody851_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_35 optimizedBody851_53

def optimizedBody851_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_28 optimizedBody851_54

def optimizedBody851_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_34 optimizedBody851_55

def optimizedBody851_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_33 optimizedBody851_56

def optimizedBody851_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_57

def optimizedBody851_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody851_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_59

def optimizedBody851_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 8) optimizedBody851_58 optimizedBody851_60

def optimizedBody851_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 4), (8, 8), (0, 0), (48, 6), (50, 14), (52, 16), (10, 10), (12, 12)]

def optimizedBody851_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_62

def optimizedBody851_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_61 optimizedBody851_63

def optimizedBody851_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_32 optimizedBody851_64

def optimizedBody851_66 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody851_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody851_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 52)]

def optimizedBody851_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody851_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 46), (0, 0), (14, 48), (46, 50), (8, 8)]

def optimizedBody851_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_69 optimizedBody851_45

def optimizedBody851_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_68 optimizedBody851_70

def optimizedBody851_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_67 optimizedBody851_71

def optimizedBody851_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_72

def optimizedBody851_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_66 optimizedBody851_73

def optimizedBody851_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_31 optimizedBody851_74

def optimizedBody851_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_75

def optimizedBody851_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_30 optimizedBody851_76

def optimizedBody851_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_29 optimizedBody851_77

def optimizedBody851_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_28 optimizedBody851_78

def optimizedBody851_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_79

def optimizedBody851_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_27 optimizedBody851_80

def optimizedBody851_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_23 optimizedBody851_81

def optimizedBody851_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_22 optimizedBody851_82

def optimizedBody851_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_21 optimizedBody851_83

def optimizedBody851_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_20 optimizedBody851_84

def optimizedBody851_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_19 optimizedBody851_85

def optimizedBody851_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_18 optimizedBody851_86

def optimizedBody851_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_17 optimizedBody851_87

def optimizedBody851_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_16 optimizedBody851_88

def optimizedBody851_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_15 optimizedBody851_89

def optimizedBody851_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_90

def optimizedBody851_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 14) optimizedBody851_91 optimizedBody851_60

def optimizedBody851_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (10, 10), (0, 0), (14, 14), (46, 4), (8, 8)]

def optimizedBody851_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_93

def optimizedBody851_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_92 optimizedBody851_94

def optimizedBody851_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_14 optimizedBody851_95

def optimizedBody851_97 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody851_96 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody851_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody851_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody851_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody851_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_99 optimizedBody851_100

def optimizedBody851_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_98 optimizedBody851_101

def optimizedBody851_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_102

def optimizedBody851_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_97 optimizedBody851_103

def optimizedBody851_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_13 optimizedBody851_104

def optimizedBody851_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_105

def optimizedBody851_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_12 optimizedBody851_106

def optimizedBody851_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_11 optimizedBody851_107

def optimizedBody851_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_9 optimizedBody851_108

def optimizedBody851_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_10 optimizedBody851_109

def optimizedBody851_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_9 optimizedBody851_110

def optimizedBody851_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_111

def optimizedBody851_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_7 optimizedBody851_112

def optimizedBody851_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_2 optimizedBody851_113

def optimizedBody851_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_1 optimizedBody851_114

def optimizedBody851_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_0 optimizedBody851_115

def oracle851 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 24 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 25 (Flapjack.Spt.ls 3)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)))
                0 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 24)))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 23
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))
def optimized851 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(851, 3, optimizedBody851_116)
end InitECandidate.Proofs.SmallStages.Oracles851
