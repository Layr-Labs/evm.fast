import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles365
def optimizedBody365_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (0, 0)]

def optimizedBody365_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody365_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody365_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody365_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody365_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody365_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 10)]

def optimizedBody365_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody365_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody365_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody365_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_8 optimizedBody365_9

def optimizedBody365_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody365_7, 365, 2)) (some 360) ([2, 4, 6, 8]) (some (2, optimizedBody365_10, 365, 3))

def optimizedBody365_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody365_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody365_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody365_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 4), (46, 0)]

def optimizedBody365_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody365_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody365_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_17 optimizedBody365_9

def optimizedBody365_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody365_16, 365, 4)) (some 181) ([2]) (some (2, optimizedBody365_18, 365, 5))

def optimizedBody365_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody365_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 0), (50, 4)]

def optimizedBody365_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody365_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody365_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_23 optimizedBody365_9

def optimizedBody365_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody365_22, 365, 6)) (some 181) ([2]) (some (2, optimizedBody365_24, 365, 7))

def optimizedBody365_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody365_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody365_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody365_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody365_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 0), (50, 50), (52, 10)]

def optimizedBody365_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (0, 46), (50, 50), (52, 52)]

def optimizedBody365_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50), (52, 52)]

def optimizedBody365_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_32 optimizedBody365_9

def optimizedBody365_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody365_31, 365, 8)) (some 360) ([2, 4, 6, 8]) (some (2, optimizedBody365_33, 365, 9))

def optimizedBody365_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody365_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody365_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody365_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody365_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 10), (48, 48), (50, 50), (52, 52)]

def optimizedBody365_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (12, 44), (10, 46), (0, 48), (4, 50), (6, 52)]

def optimizedBody365_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (10, 46), (0, 48), (4, 50), (6, 52)]

def optimizedBody365_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_41 optimizedBody365_9

def optimizedBody365_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody365_40, 365, 10)) (some 360) ([2, 4, 6, 8]) (some (2, optimizedBody365_42, 365, 11))

def optimizedBody365_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody365_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody365_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody365_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody365_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody365_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody365_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody365_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody365_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody365_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody365_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_52 optimizedBody365_53

def optimizedBody365_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_51 optimizedBody365_54

def optimizedBody365_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_50 optimizedBody365_55

def optimizedBody365_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_56

def optimizedBody365_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_49 optimizedBody365_57

def optimizedBody365_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_48 optimizedBody365_58

def optimizedBody365_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_47 optimizedBody365_59

def optimizedBody365_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_46 optimizedBody365_60

def optimizedBody365_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_45 optimizedBody365_61

def optimizedBody365_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_44 optimizedBody365_62

def optimizedBody365_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_12 optimizedBody365_63

def optimizedBody365_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_43 optimizedBody365_64

def optimizedBody365_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_39 optimizedBody365_65

def optimizedBody365_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_38 optimizedBody365_66

def optimizedBody365_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_67

def optimizedBody365_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_37 optimizedBody365_68

def optimizedBody365_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_69

def optimizedBody365_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_36 optimizedBody365_70

def optimizedBody365_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_71

def optimizedBody365_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_35 optimizedBody365_72

def optimizedBody365_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_73

def optimizedBody365_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_12 optimizedBody365_74

def optimizedBody365_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_34 optimizedBody365_75

def optimizedBody365_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_30 optimizedBody365_76

def optimizedBody365_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_29 optimizedBody365_77

def optimizedBody365_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_78

def optimizedBody365_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_28 optimizedBody365_79

def optimizedBody365_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_80

def optimizedBody365_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_27 optimizedBody365_81

def optimizedBody365_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_82

def optimizedBody365_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_26 optimizedBody365_83

def optimizedBody365_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_84

def optimizedBody365_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_12 optimizedBody365_85

def optimizedBody365_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_25 optimizedBody365_86

def optimizedBody365_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_21 optimizedBody365_87

def optimizedBody365_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_20 optimizedBody365_88

def optimizedBody365_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_89

def optimizedBody365_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_12 optimizedBody365_90

def optimizedBody365_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_19 optimizedBody365_91

def optimizedBody365_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_15 optimizedBody365_92

def optimizedBody365_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_14 optimizedBody365_93

def optimizedBody365_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_13 optimizedBody365_94

def optimizedBody365_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_12 optimizedBody365_95

def optimizedBody365_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_11 optimizedBody365_96

def optimizedBody365_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_6 optimizedBody365_97

def optimizedBody365_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_5 optimizedBody365_98

def optimizedBody365_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_2 optimizedBody365_99

def optimizedBody365_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_4 optimizedBody365_100

def optimizedBody365_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_2 optimizedBody365_101

def optimizedBody365_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_3 optimizedBody365_102

def optimizedBody365_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_2 optimizedBody365_103

def optimizedBody365_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_1 optimizedBody365_104

def optimizedBody365_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody365_0 optimizedBody365_105

def oracle365 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 26))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))
              3 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))
              5 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 25))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              5 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
              5 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 5
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 24))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))))
def optimized365 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(365, 2, optimizedBody365_106)
end InitECandidate.Proofs.SmallStages.Oracles365
