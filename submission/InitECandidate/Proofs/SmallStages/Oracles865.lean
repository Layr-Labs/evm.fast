import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source865
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles865
def optimizedBody865_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2)]

def optimizedBody865_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody865_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody865_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody865_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_2 optimizedBody865_3

def optimizedBody865_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_1, 865, 2)) (some 69) ([]) (some (2, optimizedBody865_4, 865, 3))

def optimizedBody865_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody865_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (64, 0), (48, 4)]

def optimizedBody865_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (44, 44), (46, 46), (64, 64), (0, 48)]

def optimizedBody865_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (64, 64), (0, 48)]

def optimizedBody865_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_9 optimizedBody865_3

def optimizedBody865_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_8, 865, 4)) (some 278) ([2]) (some (2, optimizedBody865_10, 865, 5))

def optimizedBody865_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4), (64, 64), (58, 0), (52, 6)]

def optimizedBody865_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (64, 64), (58, 58), (52, 52)]

def optimizedBody865_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (64, 64), (58, 58), (52, 52)]

def optimizedBody865_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_14 optimizedBody865_3

def optimizedBody865_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_13, 865, 6)) (some 70) ([2]) (some (2, optimizedBody865_15, 865, 7))

def optimizedBody865_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 48)]

def optimizedBody865_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody865_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody865_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody865_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody865_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody865_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 0), (50, 2), (60, 6), (46, 4), (54, 48), (64, 64), (58, 58), (48, 48), (52, 52), (56, 8)]

def optimizedBody865_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 50), (0, 0)]

def optimizedBody865_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody865_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody865_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 60)]

def optimizedBody865_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody865_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody865_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody865_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody865_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (60, 10), (50, 0)]

def optimizedBody865_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody865_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody865_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (60, 60), (2, 2)]

def optimizedBody865_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_34 optimizedBody865_35

def optimizedBody865_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_33 optimizedBody865_36

def optimizedBody865_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_32 optimizedBody865_37

def optimizedBody865_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_38

def optimizedBody865_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 0), (60, 10), (2, 2)]

def optimizedBody865_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_40

def optimizedBody865_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 12) optimizedBody865_39 optimizedBody865_41

def optimizedBody865_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody865_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody865_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_43 optimizedBody865_44

def optimizedBody865_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody865_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_46 optimizedBody865_44

def optimizedBody865_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody865_45 optimizedBody865_47

def optimizedBody865_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody865_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 192#64)

def optimizedBody865_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody865_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody865_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_51 optimizedBody865_52

def optimizedBody865_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_22 optimizedBody865_52

def optimizedBody865_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody865_53 optimizedBody865_54

def optimizedBody865_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody865_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody865_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody865_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 50), (50, 8), (60, 60), (48, 46), (54, 54), (64, 64), (58, 58), (52, 48), (56, 52),
    (62, 56)]

def optimizedBody865_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (0, 46), (50, 50), (60, 60), (46, 48), (54, 54), (64, 64), (58, 58), (48, 52), (52, 56), (6, 62)]

def optimizedBody865_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (50, 50), (60, 60), (46, 48), (54, 54), (64, 64), (58, 58), (48, 52), (52, 56), (6, 62)]

def optimizedBody865_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_61 optimizedBody865_3

def optimizedBody865_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody865_60, 865, 8)) (some 179) ([2, 4]) (some (2, optimizedBody865_62, 865, 9))

def optimizedBody865_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (4, 4), (0, 0), (50, 50), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (6, 6)]

def optimizedBody865_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_64

def optimizedBody865_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_63 optimizedBody865_65

def optimizedBody865_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_59 optimizedBody865_66

def optimizedBody865_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_67

def optimizedBody865_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (4, 4), (0, 50), (50, 8), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (6, 56)]

def optimizedBody865_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_69

def optimizedBody865_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 0) optimizedBody865_68 optimizedBody865_70

def optimizedBody865_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody865_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody865_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody865_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody865_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (0, 0), (50, 50), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (56, 2)]

def optimizedBody865_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody865_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_76 optimizedBody865_77

def optimizedBody865_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_75 optimizedBody865_78

def optimizedBody865_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_74 optimizedBody865_79

def optimizedBody865_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_73 optimizedBody865_80

def optimizedBody865_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_72 optimizedBody865_81

def optimizedBody865_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_82

def optimizedBody865_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_71 optimizedBody865_83

def optimizedBody865_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_58 optimizedBody865_84

def optimizedBody865_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_57 optimizedBody865_85

def optimizedBody865_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_56 optimizedBody865_86

def optimizedBody865_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_87

def optimizedBody865_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_55 optimizedBody865_88

def optimizedBody865_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_50 optimizedBody865_89

def optimizedBody865_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_49 optimizedBody865_90

def optimizedBody865_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_91

def optimizedBody865_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_48 optimizedBody865_92

def optimizedBody865_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_22 optimizedBody865_93

def optimizedBody865_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_94

def optimizedBody865_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_95

def optimizedBody865_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_42 optimizedBody865_96

def optimizedBody865_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_31 optimizedBody865_97

def optimizedBody865_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_98

def optimizedBody865_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_30 optimizedBody865_99

def optimizedBody865_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_29 optimizedBody865_100

def optimizedBody865_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_28 optimizedBody865_101

def optimizedBody865_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_27 optimizedBody865_102

def optimizedBody865_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_26 optimizedBody865_103

def optimizedBody865_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_25 optimizedBody865_104

def optimizedBody865_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_105

def optimizedBody865_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 8)]

def optimizedBody865_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody865_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_107 optimizedBody865_108

def optimizedBody865_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_109

def optimizedBody865_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody865_106 optimizedBody865_110

def optimizedBody865_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (0, 0), (50, 4), (60, 6), (46, 8), (54, 10), (64, 12), (58, 14), (48, 16), (52, 18), (56, 20)]

def optimizedBody865_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_112

def optimizedBody865_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_111 optimizedBody865_113

def optimizedBody865_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_24 optimizedBody865_114

def optimizedBody865_116 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody865_115 (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody865_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (44, 44), (50, 50), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (56, 56)]

def optimizedBody865_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (50, 50), (60, 60), (10, 46), (54, 54), (64, 64), (58, 58), (6, 48), (52, 52), (0, 56)]

def optimizedBody865_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (60, 60), (10, 46), (54, 54), (64, 64), (58, 58), (6, 48), (52, 52), (0, 56)]

def optimizedBody865_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_119 optimizedBody865_3

def optimizedBody865_121 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_118, 865, 10)) (some 180) ([2]) (some (2, optimizedBody865_120, 865, 11))

def optimizedBody865_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody865_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody865_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody865_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody865_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody865_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (48, 2)]

def optimizedBody865_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 56#64))

def optimizedBody865_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 2), (12, 12), (50, 50), (60, 60), (10, 10), (8, 8), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52),
    (62, 0), (56, 4)]

def optimizedBody865_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody865_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody865_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 44#64)

def optimizedBody865_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 12), (4, 4)]

def optimizedBody865_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody865_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody865_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 48#64))

def optimizedBody865_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody865_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 12), (50, 50), (60, 60), (52, 10), (54, 8), (56, 54), (64, 64), (58, 58), (62, 48),
    (66, 52), (68, 62), (70, 56)]

def optimizedBody865_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (6, 46), (4, 48), (14, 50), (16, 60), (10, 52), (8, 54), (18, 56), (20, 64), (22, 58), (48, 62),
    (24, 66), (26, 68), (28, 70)]

def optimizedBody865_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (4, 48), (14, 50), (16, 60), (10, 52), (8, 54), (18, 56), (20, 64), (22, 58), (48, 62),
    (24, 66), (26, 68), (28, 70)]

def optimizedBody865_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_140 optimizedBody865_3

def optimizedBody865_142 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody865_139, 865, 12)) (some 856) ([2]) (some (2, optimizedBody865_141, 865, 13))

def optimizedBody865_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody865_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody865_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 0), (12, 12), (50, 14), (60, 16), (10, 10), (8, 8), (54, 18), (64, 20), (58, 22), (48, 48), (52, 24),
    (62, 26), (56, 28)]

def optimizedBody865_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_145 optimizedBody865_77

def optimizedBody865_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_144 optimizedBody865_146

def optimizedBody865_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_122 optimizedBody865_147

def optimizedBody865_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_143 optimizedBody865_148

def optimizedBody865_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_57 optimizedBody865_149

def optimizedBody865_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_150

def optimizedBody865_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_142 optimizedBody865_151

def optimizedBody865_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_138 optimizedBody865_152

def optimizedBody865_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_137 optimizedBody865_153

def optimizedBody865_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_136 optimizedBody865_154

def optimizedBody865_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_135 optimizedBody865_155

def optimizedBody865_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_134 optimizedBody865_156

def optimizedBody865_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_133 optimizedBody865_157

def optimizedBody865_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_132 optimizedBody865_158

def optimizedBody865_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_131 optimizedBody865_159

def optimizedBody865_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_160

def optimizedBody865_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_108

def optimizedBody865_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 8) optimizedBody865_161 optimizedBody865_162

def optimizedBody865_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (12, 12), (50, 4), (60, 6), (10, 10), (8, 8), (54, 14), (64, 16), (58, 18), (48, 20), (52, 22),
    (62, 24), (56, 26)]

def optimizedBody865_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_164

def optimizedBody865_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_163 optimizedBody865_165

def optimizedBody865_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_130 optimizedBody865_166

def optimizedBody865_168 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody865_167 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody865_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (44, 44), (46, 46), (48, 48)]

def optimizedBody865_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody865_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody865_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_171 optimizedBody865_3

def optimizedBody865_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_170, 865, 14)) (some 180) ([2]) (some (2, optimizedBody865_172, 865, 15))

def optimizedBody865_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody865_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2)]

def optimizedBody865_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody865_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody865_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_177 optimizedBody865_3

def optimizedBody865_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_176, 865, 16)) (some 180) ([2]) (some (2, optimizedBody865_178, 865, 17))

def optimizedBody865_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody865_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_49 optimizedBody865_180

def optimizedBody865_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_123 optimizedBody865_181

def optimizedBody865_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_122 optimizedBody865_182

def optimizedBody865_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_183

def optimizedBody865_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_179 optimizedBody865_184

def optimizedBody865_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_175 optimizedBody865_185

def optimizedBody865_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_174 optimizedBody865_186

def optimizedBody865_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_25 optimizedBody865_187

def optimizedBody865_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_73 optimizedBody865_188

def optimizedBody865_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_72 optimizedBody865_189

def optimizedBody865_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_190

def optimizedBody865_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_173 optimizedBody865_191

def optimizedBody865_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_169 optimizedBody865_192

def optimizedBody865_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_193

def optimizedBody865_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_168 optimizedBody865_194

def optimizedBody865_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_129 optimizedBody865_195

def optimizedBody865_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_196

def optimizedBody865_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_31 optimizedBody865_197

def optimizedBody865_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_30 optimizedBody865_198

def optimizedBody865_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_128 optimizedBody865_199

def optimizedBody865_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_127 optimizedBody865_200

def optimizedBody865_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_126 optimizedBody865_201

def optimizedBody865_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_49 optimizedBody865_202

def optimizedBody865_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_125 optimizedBody865_203

def optimizedBody865_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_124 optimizedBody865_204

def optimizedBody865_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_123 optimizedBody865_205

def optimizedBody865_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_122 optimizedBody865_206

def optimizedBody865_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_207

def optimizedBody865_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_121 optimizedBody865_208

def optimizedBody865_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_117 optimizedBody865_209

def optimizedBody865_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_210

def optimizedBody865_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_116 optimizedBody865_211

def optimizedBody865_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_23 optimizedBody865_212

def optimizedBody865_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_213

def optimizedBody865_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_22 optimizedBody865_214

def optimizedBody865_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_21 optimizedBody865_215

def optimizedBody865_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_20 optimizedBody865_216

def optimizedBody865_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_217

def optimizedBody865_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_18 optimizedBody865_218

def optimizedBody865_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_17 optimizedBody865_219

def optimizedBody865_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_220

def optimizedBody865_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_16 optimizedBody865_221

def optimizedBody865_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_12 optimizedBody865_222

def optimizedBody865_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_223

def optimizedBody865_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_11 optimizedBody865_224

def optimizedBody865_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_7 optimizedBody865_225

def optimizedBody865_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_226

def optimizedBody865_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_5 optimizedBody865_227

def optimizedBody865_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_0 optimizedBody865_228

def oracle865 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 10)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)) 26 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                  2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 27)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 11)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 2
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 28 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 32
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.ls 6))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 29)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 13)) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 29
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)) 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))
                  22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 32)) 32
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 12)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 5))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 10)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 24)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                24 (Flapjack.Spt.ls 32))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                23 (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                32 (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                22 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  Flapjack.Spt.ln))))))))
def optimized865 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(865, 3, optimizedBody865_229)
end InitECandidate.Proofs.SmallStages.Oracles865
