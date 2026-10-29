import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles701
def optimizedBody701_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0), (10, 4), (6, 6), (8, 8)]

def optimizedBody701_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody701_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (50, 10), (48, 4), (52, 6)]

def optimizedBody701_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (50, 50), (4, 48), (48, 52)]

def optimizedBody701_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (4, 48), (48, 52)]

def optimizedBody701_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody701_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_4 optimizedBody701_5

def optimizedBody701_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_3, 701, 2)) (some 686) ([2, 4]) (some (2, optimizedBody701_6, 701, 3))

def optimizedBody701_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody701_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody701_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody701_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody701_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 6), (50, 50), (4, 4), (10, 10), (48, 48), (0, 0)]

def optimizedBody701_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody701_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody701_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody701_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (56, 0)]

def optimizedBody701_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody701_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (50, 50), (48, 4), (52, 10), (54, 48), (56, 56)]

def optimizedBody701_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 50), (4, 48), (10, 52), (12, 54), (0, 56)]

def optimizedBody701_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 50), (4, 48), (10, 52), (12, 54), (0, 56)]

def optimizedBody701_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_20 optimizedBody701_5

def optimizedBody701_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody701_19, 701, 4)) (some 676) ([2, 4]) (some (2, optimizedBody701_21, 701, 5))

def optimizedBody701_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def optimizedBody701_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_23

def optimizedBody701_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_22 optimizedBody701_24

def optimizedBody701_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_18 optimizedBody701_25

def optimizedBody701_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_26

def optimizedBody701_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (6, 50), (4, 4), (10, 10), (12, 48), (0, 56)]

def optimizedBody701_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_28

def optimizedBody701_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody701_27 optimizedBody701_29

def optimizedBody701_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody701_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody701_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody701_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody701_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody701_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody701_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody701_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody701_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody701_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody701_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody701_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 4), (52, 12), (54, 0)]

def optimizedBody701_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (14, 46), (6, 48), (4, 50), (12, 52), (0, 54)]

def optimizedBody701_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (14, 46), (6, 48), (4, 50), (12, 52), (0, 54)]

def optimizedBody701_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_44 optimizedBody701_5

def optimizedBody701_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody701_43, 701, 6)) (some 675) ([2, 4, 6]) (some (2, optimizedBody701_45, 701, 7))

def optimizedBody701_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody701_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (14, 14), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def optimizedBody701_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_47 optimizedBody701_48

def optimizedBody701_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_49

def optimizedBody701_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_46 optimizedBody701_50

def optimizedBody701_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_42 optimizedBody701_51

def optimizedBody701_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_52

def optimizedBody701_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (14, 46), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def optimizedBody701_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_54

def optimizedBody701_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody701_53 optimizedBody701_55

def optimizedBody701_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 14), (50, 6), (4, 4), (10, 10), (48, 12), (0, 0)]

def optimizedBody701_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody701_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_57 optimizedBody701_58

def optimizedBody701_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_59

def optimizedBody701_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_56 optimizedBody701_60

def optimizedBody701_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_41 optimizedBody701_61

def optimizedBody701_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_40 optimizedBody701_62

def optimizedBody701_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_39 optimizedBody701_63

def optimizedBody701_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_38 optimizedBody701_64

def optimizedBody701_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_37 optimizedBody701_65

def optimizedBody701_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_36 optimizedBody701_66

def optimizedBody701_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_14 optimizedBody701_67

def optimizedBody701_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_35 optimizedBody701_68

def optimizedBody701_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_34 optimizedBody701_69

def optimizedBody701_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_33 optimizedBody701_70

def optimizedBody701_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_32 optimizedBody701_71

def optimizedBody701_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_31 optimizedBody701_72

def optimizedBody701_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_14 optimizedBody701_73

def optimizedBody701_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_74

def optimizedBody701_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_30 optimizedBody701_75

def optimizedBody701_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_17 optimizedBody701_76

def optimizedBody701_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_16 optimizedBody701_77

def optimizedBody701_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_15 optimizedBody701_78

def optimizedBody701_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_14 optimizedBody701_79

def optimizedBody701_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_80

def optimizedBody701_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody701_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_82

def optimizedBody701_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody701_81 optimizedBody701_83

def optimizedBody701_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 6), (50, 8), (4, 4), (10, 10), (48, 12), (0, 0)]

def optimizedBody701_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_85

def optimizedBody701_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_84 optimizedBody701_86

def optimizedBody701_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_14 optimizedBody701_87

def optimizedBody701_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_88

def optimizedBody701_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody701_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody701_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody701_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_40 optimizedBody701_91

def optimizedBody701_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_92

def optimizedBody701_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_93

def optimizedBody701_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_90 optimizedBody701_94

def optimizedBody701_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_12 optimizedBody701_95

def optimizedBody701_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_96

def optimizedBody701_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_11 optimizedBody701_97

def optimizedBody701_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_10 optimizedBody701_98

def optimizedBody701_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_9 optimizedBody701_99

def optimizedBody701_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_8 optimizedBody701_100

def optimizedBody701_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_7 optimizedBody701_101

def optimizedBody701_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_2 optimizedBody701_102

def optimizedBody701_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_1 optimizedBody701_103

def optimizedBody701_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_0 optimizedBody701_104

def oracle701 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25 (Flapjack.Spt.ls 0)))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              4
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                24 (Flapjack.Spt.ls 0))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 (Flapjack.Spt.ls 1)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))))
              1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 23))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 25)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 22)))))))
def optimized701 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(701, 5, optimizedBody701_105)
end InitECandidate.Proofs.SmallStages.Oracles701
