import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source850
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles850
def optimizedBody850_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (52, 6)]

def optimizedBody850_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody850_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody850_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody850_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_2 optimizedBody850_3

def optimizedBody850_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody850_1, 850, 2)) (some 69) ([]) (some (2, optimizedBody850_4, 850, 3))

def optimizedBody850_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody850_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody850_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody850_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody850_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody850_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_10 optimizedBody850_3

def optimizedBody850_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody850_9, 850, 4)) (some 68) ([2]) (some (2, optimizedBody850_11, 850, 5))

def optimizedBody850_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 4), (54, 6)]

def optimizedBody850_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (4, 48), (8, 50), (16, 52), (6, 54)]

def optimizedBody850_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (4, 48), (8, 50), (16, 52), (6, 54)]

def optimizedBody850_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_15 optimizedBody850_3

def optimizedBody850_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody850_14, 850, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody850_16, 850, 7))

def optimizedBody850_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody850_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (14, 14), (4, 4), (2, 8), (16, 16), (6, 6)]

def optimizedBody850_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody850_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 6#64)

def optimizedBody850_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody850_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody850_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody850_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (0, 0)]

def optimizedBody850_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody850_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody850_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody850_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody850_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody850_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 2047#64)))

def optimizedBody850_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 2047#64)

def optimizedBody850_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody850_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody850_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody850_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody850_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7#64)

def optimizedBody850_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody850_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody850_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody850_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody850_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody850_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody850_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody850_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (4, 4)]

def optimizedBody850_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody850_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody850_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody850_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody850_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody850_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_49 optimizedBody850_50

def optimizedBody850_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_48 optimizedBody850_51

def optimizedBody850_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_20 optimizedBody850_52

def optimizedBody850_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_47 optimizedBody850_53

def optimizedBody850_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_46 optimizedBody850_54

def optimizedBody850_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_45 optimizedBody850_55

def optimizedBody850_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_44 optimizedBody850_56

def optimizedBody850_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_43 optimizedBody850_57

def optimizedBody850_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_42 optimizedBody850_58

def optimizedBody850_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_41 optimizedBody850_59

def optimizedBody850_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_40 optimizedBody850_60

def optimizedBody850_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_39 optimizedBody850_61

def optimizedBody850_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_38 optimizedBody850_62

def optimizedBody850_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_33 optimizedBody850_63

def optimizedBody850_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_37 optimizedBody850_64

def optimizedBody850_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_36 optimizedBody850_65

def optimizedBody850_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_35 optimizedBody850_66

def optimizedBody850_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_33 optimizedBody850_67

def optimizedBody850_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_34 optimizedBody850_68

def optimizedBody850_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_33 optimizedBody850_69

def optimizedBody850_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_32 optimizedBody850_70

def optimizedBody850_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_31 optimizedBody850_71

def optimizedBody850_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_30 optimizedBody850_72

def optimizedBody850_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_29 optimizedBody850_73

def optimizedBody850_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_28 optimizedBody850_74

def optimizedBody850_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_27 optimizedBody850_75

def optimizedBody850_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_26 optimizedBody850_76

def optimizedBody850_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_25 optimizedBody850_77

def optimizedBody850_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_24 optimizedBody850_78

def optimizedBody850_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_23 optimizedBody850_79

def optimizedBody850_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_22 optimizedBody850_80

def optimizedBody850_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_81

def optimizedBody850_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody850_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_83

def optimizedBody850_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody850_82 optimizedBody850_84

def optimizedBody850_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_49

def optimizedBody850_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_85 optimizedBody850_86

def optimizedBody850_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_21 optimizedBody850_87

def optimizedBody850_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_20 optimizedBody850_88

def optimizedBody850_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody850_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody850_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody850_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody850_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody850_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_93 optimizedBody850_3

def optimizedBody850_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody850_92, 850, 8)) (some 70) ([2]) (some (2, optimizedBody850_94, 850, 9))

def optimizedBody850_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody850_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody850_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody850_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_97 optimizedBody850_98

def optimizedBody850_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_96 optimizedBody850_99

def optimizedBody850_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_100

def optimizedBody850_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_95 optimizedBody850_101

def optimizedBody850_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_91 optimizedBody850_102

def optimizedBody850_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_103

def optimizedBody850_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_90 optimizedBody850_104

def optimizedBody850_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_19 optimizedBody850_105

def optimizedBody850_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_106

def optimizedBody850_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_18 optimizedBody850_107

def optimizedBody850_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_108

def optimizedBody850_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_17 optimizedBody850_109

def optimizedBody850_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_13 optimizedBody850_110

def optimizedBody850_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_111

def optimizedBody850_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_12 optimizedBody850_112

def optimizedBody850_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_8 optimizedBody850_113

def optimizedBody850_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_7 optimizedBody850_114

def optimizedBody850_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_6 optimizedBody850_115

def optimizedBody850_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_5 optimizedBody850_116

def optimizedBody850_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody850_0 optimizedBody850_117

def oracle850 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 5)) 26
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 5)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 7)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.ls 26)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 (Flapjack.Spt.ls 25))))))))
def optimized850 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(850, 4, optimizedBody850_118)
end InitECandidate.Proofs.SmallStages.Oracles850
