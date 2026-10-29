import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source609
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles609
def optimizedBody609_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2)]

def optimizedBody609_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 120#64))

def optimizedBody609_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody609_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 128#64))

def optimizedBody609_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody609_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody609_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody609_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody609_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody609_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 239#64)

def optimizedBody609_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def optimizedBody609_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody609_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody609_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody609_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody609_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_13 optimizedBody609_14

def optimizedBody609_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_12 optimizedBody609_15

def optimizedBody609_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_11 optimizedBody609_16

def optimizedBody609_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_8 optimizedBody609_17

def optimizedBody609_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_10 optimizedBody609_18

def optimizedBody609_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_19

def optimizedBody609_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody609_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody609_20 optimizedBody609_21

def optimizedBody609_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 6)]

def optimizedBody609_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_23

def optimizedBody609_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_24

def optimizedBody609_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_22 optimizedBody609_25

def optimizedBody609_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_9 optimizedBody609_26

def optimizedBody609_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_8 optimizedBody609_27

def optimizedBody609_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_7 optimizedBody609_28

def optimizedBody609_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_6 optimizedBody609_29

def optimizedBody609_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_30

def optimizedBody609_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody609_31 optimizedBody609_24

def optimizedBody609_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 65536#64)

def optimizedBody609_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody609_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_34 optimizedBody609_18

def optimizedBody609_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_35

def optimizedBody609_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody609_36 optimizedBody609_21

def optimizedBody609_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (50, 8), (48, 48)]

def optimizedBody609_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (48, 48)]

def optimizedBody609_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48)]

def optimizedBody609_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_40 optimizedBody609_14

def optimizedBody609_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody609_39, 609, 2)) (some 467) ([2]) (some (2, optimizedBody609_41, 609, 3))

def optimizedBody609_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody609_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6#64)

def optimizedBody609_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody609_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody609_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (50, 50), (48, 48)]

def optimizedBody609_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (50, 50), (48, 48)]

def optimizedBody609_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (50, 50), (48, 48)]

def optimizedBody609_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_49 optimizedBody609_14

def optimizedBody609_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody609_48, 609, 4)) (some 472) ([2]) (some (2, optimizedBody609_50, 609, 5))

def optimizedBody609_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody609_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1530#64)

def optimizedBody609_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody609_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (50, 50), (48, 48)]

def optimizedBody609_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (50, 50), (48, 48)]

def optimizedBody609_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (48, 48)]

def optimizedBody609_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_57 optimizedBody609_14

def optimizedBody609_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody609_56, 609, 6)) (some 473) ([2]) (some (2, optimizedBody609_58, 609, 7))

def optimizedBody609_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody609_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody609_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (50, 50), (4, 48)]

def optimizedBody609_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (4, 48)]

def optimizedBody609_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_63 optimizedBody609_14

def optimizedBody609_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody609_62, 609, 8)) (some 68) ([2]) (some (2, optimizedBody609_64, 609, 9))

def optimizedBody609_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 6), (48, 0), (50, 50)]

def optimizedBody609_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody609_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody609_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_68 optimizedBody609_14

def optimizedBody609_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody609_67, 609, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody609_69, 609, 11))

def optimizedBody609_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody609_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody609_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody609_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody609_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_74 optimizedBody609_14

def optimizedBody609_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody609_73, 609, 12)) (some 433) ([2, 4, 6]) (some (2, optimizedBody609_75, 609, 13))

def optimizedBody609_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody609_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_8 optimizedBody609_77

def optimizedBody609_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_4 optimizedBody609_78

def optimizedBody609_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_79

def optimizedBody609_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_76 optimizedBody609_80

def optimizedBody609_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_72 optimizedBody609_81

def optimizedBody609_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_71 optimizedBody609_82

def optimizedBody609_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_43 optimizedBody609_83

def optimizedBody609_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_84

def optimizedBody609_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_70 optimizedBody609_85

def optimizedBody609_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_66 optimizedBody609_86

def optimizedBody609_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_87

def optimizedBody609_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_65 optimizedBody609_88

def optimizedBody609_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_61 optimizedBody609_89

def optimizedBody609_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_60 optimizedBody609_90

def optimizedBody609_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_43 optimizedBody609_91

def optimizedBody609_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_92

def optimizedBody609_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_59 optimizedBody609_93

def optimizedBody609_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_55 optimizedBody609_94

def optimizedBody609_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_46 optimizedBody609_95

def optimizedBody609_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_54 optimizedBody609_96

def optimizedBody609_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_53 optimizedBody609_97

def optimizedBody609_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_52 optimizedBody609_98

def optimizedBody609_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_99

def optimizedBody609_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_51 optimizedBody609_100

def optimizedBody609_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_47 optimizedBody609_101

def optimizedBody609_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_46 optimizedBody609_102

def optimizedBody609_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_45 optimizedBody609_103

def optimizedBody609_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_44 optimizedBody609_104

def optimizedBody609_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_43 optimizedBody609_105

def optimizedBody609_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_106

def optimizedBody609_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_42 optimizedBody609_107

def optimizedBody609_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_38 optimizedBody609_108

def optimizedBody609_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_109

def optimizedBody609_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_110

def optimizedBody609_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_37 optimizedBody609_111

def optimizedBody609_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_2 optimizedBody609_112

def optimizedBody609_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_33 optimizedBody609_113

def optimizedBody609_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_114

def optimizedBody609_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_32 optimizedBody609_115

def optimizedBody609_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_2 optimizedBody609_116

def optimizedBody609_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_4 optimizedBody609_117

def optimizedBody609_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_3 optimizedBody609_118

def optimizedBody609_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_2 optimizedBody609_119

def optimizedBody609_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_1 optimizedBody609_120

def optimizedBody609_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_0 optimizedBody609_121

def oracle609 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            4
            (Flapjack.Spt.bs Flapjack.Spt.ln 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
def optimized609 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(609, 3, optimizedBody609_122)
end InitECandidate.Proofs.SmallStages.Oracles609
