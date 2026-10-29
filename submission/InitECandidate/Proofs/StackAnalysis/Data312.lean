import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody312_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody312_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (8, 48), (4, 50), (48, 52), (10, 54), (50, 56), (6, 58), (52, 60)]

def optimizedBody312_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (8, 48), (4, 50), (48, 52), (10, 54), (50, 56), (6, 58), (52, 60)]

def optimizedBody312_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody312_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_2 optimizedBody312_3

def optimizedBody312_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody312_1, 312, 2)) (some 298) ([]) (some (2, optimizedBody312_4, 312, 3))

def optimizedBody312_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody312_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody312_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody312_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody312_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody312_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody312_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody312_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody312_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody312_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody312_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 46), (46, 0), (0, 48), (14, 50), (6, 52)]

def optimizedBody312_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_15 optimizedBody312_16

def optimizedBody312_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_14 optimizedBody312_17

def optimizedBody312_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_13 optimizedBody312_18

def optimizedBody312_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_9 optimizedBody312_19

def optimizedBody312_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_12 optimizedBody312_20

def optimizedBody312_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_11 optimizedBody312_21

def optimizedBody312_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_10 optimizedBody312_22

def optimizedBody312_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_9 optimizedBody312_23

def optimizedBody312_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_24

def optimizedBody312_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody312_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody312_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody312_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 0), (50, 48), (52, 10), (54, 50), (56, 52)]

def optimizedBody312_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (4, 48), (0, 50), (12, 52), (14, 54), (6, 56)]

def optimizedBody312_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (0, 50), (12, 52), (14, 54), (6, 56)]

def optimizedBody312_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_31 optimizedBody312_3

def optimizedBody312_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody312_30, 312, 4)) (some 296) ([2, 4, 6, 8]) (some (2, optimizedBody312_32, 312, 5))

def optimizedBody312_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody312_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody312_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody312_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody312_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody312_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody312_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody312_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody312_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 8), (46, 4), (0, 0), (14, 14), (6, 6)]

def optimizedBody312_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_41 optimizedBody312_42

def optimizedBody312_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_40 optimizedBody312_43

def optimizedBody312_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_39 optimizedBody312_44

def optimizedBody312_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_38 optimizedBody312_45

def optimizedBody312_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_7 optimizedBody312_46

def optimizedBody312_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_37 optimizedBody312_47

def optimizedBody312_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_36 optimizedBody312_48

def optimizedBody312_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_35 optimizedBody312_49

def optimizedBody312_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_34 optimizedBody312_50

def optimizedBody312_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_51

def optimizedBody312_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_33 optimizedBody312_52

def optimizedBody312_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_29 optimizedBody312_53

def optimizedBody312_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_28 optimizedBody312_54

def optimizedBody312_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_7 optimizedBody312_55

def optimizedBody312_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_27 optimizedBody312_56

def optimizedBody312_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_26 optimizedBody312_57

def optimizedBody312_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_58

def optimizedBody312_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody312_25 optimizedBody312_59

def optimizedBody312_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 46)]

def optimizedBody312_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody312_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody312_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody312_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody312_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody312_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody312_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody312_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_67 optimizedBody312_68

def optimizedBody312_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_66 optimizedBody312_69

def optimizedBody312_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_65 optimizedBody312_70

def optimizedBody312_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_7 optimizedBody312_71

def optimizedBody312_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_64 optimizedBody312_72

def optimizedBody312_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_63 optimizedBody312_73

def optimizedBody312_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_62 optimizedBody312_74

def optimizedBody312_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_61 optimizedBody312_75

def optimizedBody312_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_76

def optimizedBody312_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody312_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody312_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody312_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 14)]

def optimizedBody312_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 44), (4, 46), (8, 48)]

def optimizedBody312_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (8, 48)]

def optimizedBody312_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_83 optimizedBody312_3

def optimizedBody312_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody312_82, 312, 6)) (some 296) ([2, 4, 6, 8]) (some (2, optimizedBody312_84, 312, 7))

def optimizedBody312_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody312_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody312_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody312_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_12 optimizedBody312_88

def optimizedBody312_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_11 optimizedBody312_89

def optimizedBody312_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_39 optimizedBody312_90

def optimizedBody312_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_38 optimizedBody312_91

def optimizedBody312_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_7 optimizedBody312_92

def optimizedBody312_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_37 optimizedBody312_93

def optimizedBody312_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_36 optimizedBody312_94

def optimizedBody312_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_87 optimizedBody312_95

def optimizedBody312_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_86 optimizedBody312_96

def optimizedBody312_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_97

def optimizedBody312_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_85 optimizedBody312_98

def optimizedBody312_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_81 optimizedBody312_99

def optimizedBody312_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_80 optimizedBody312_100

def optimizedBody312_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_9 optimizedBody312_101

def optimizedBody312_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_79 optimizedBody312_102

def optimizedBody312_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_78 optimizedBody312_103

def optimizedBody312_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_104

def optimizedBody312_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody312_77 optimizedBody312_105

def optimizedBody312_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody312_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody312_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_107 optimizedBody312_108

def optimizedBody312_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_109

def optimizedBody312_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_106 optimizedBody312_110

def optimizedBody312_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_8 optimizedBody312_111

def optimizedBody312_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_9 optimizedBody312_112

def optimizedBody312_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_113

def optimizedBody312_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_60 optimizedBody312_114

def optimizedBody312_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_8 optimizedBody312_115

def optimizedBody312_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_7 optimizedBody312_116

def optimizedBody312_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_6 optimizedBody312_117

def optimizedBody312_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_5 optimizedBody312_118

def optimizedBody312_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody312_0 optimizedBody312_119

def optimized312 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(312, 9, optimizedBody312_120)
end InitECandidate.Proofs.StackAnalysis
