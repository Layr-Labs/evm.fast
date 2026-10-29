import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody316_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody316_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody316_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody316_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody316_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody316_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (8, 8), (6, 6), (4, 2), (52, 4)]

def optimizedBody316_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody316_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody316_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody316_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody316_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody316_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody316_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody316_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody316_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody316_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (52, 8)]

def optimizedBody316_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_14 optimizedBody316_15

def optimizedBody316_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_13 optimizedBody316_16

def optimizedBody316_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_17

def optimizedBody316_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (52, 52)]

def optimizedBody316_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_19

def optimizedBody316_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody316_18 optimizedBody316_20

def optimizedBody316_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody316_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (52, 52)]

def optimizedBody316_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody316_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_23 optimizedBody316_24

def optimizedBody316_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_22 optimizedBody316_25

def optimizedBody316_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_26

def optimizedBody316_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_27

def optimizedBody316_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_21 optimizedBody316_28

def optimizedBody316_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_12 optimizedBody316_29

def optimizedBody316_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_11 optimizedBody316_30

def optimizedBody316_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_10 optimizedBody316_31

def optimizedBody316_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_9 optimizedBody316_32

def optimizedBody316_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_8 optimizedBody316_33

def optimizedBody316_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_34

def optimizedBody316_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_35

def optimizedBody316_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody316_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_37

def optimizedBody316_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody316_36 optimizedBody316_38

def optimizedBody316_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (52, 0)]

def optimizedBody316_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_40

def optimizedBody316_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_39 optimizedBody316_41

def optimizedBody316_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_7 optimizedBody316_42

def optimizedBody316_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_43

def optimizedBody316_45 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln) optimizedBody316_44 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody316_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 168#64))

def optimizedBody316_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody316_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody316_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 6), (46, 4), (48, 8), (52, 52)]

def optimizedBody316_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (8, 48)]

def optimizedBody316_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (8, 48)]

def optimizedBody316_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody316_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_51 optimizedBody316_52

def optimizedBody316_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody316_50, 316, 2)) (some 286) ([2]) (some (2, optimizedBody316_53, 316, 3))

def optimizedBody316_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (8, 8)]

def optimizedBody316_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_55

def optimizedBody316_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_54 optimizedBody316_56

def optimizedBody316_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_49 optimizedBody316_57

def optimizedBody316_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_48 optimizedBody316_58

def optimizedBody316_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_59

def optimizedBody316_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4), (8, 8)]

def optimizedBody316_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_61

def optimizedBody316_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody316_60 optimizedBody316_62

def optimizedBody316_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody316_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody316_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody316_67 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 296) ([0, 2, 4, 6, 8]) (none)

def optimizedBody316_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_66 optimizedBody316_67

def optimizedBody316_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_2 optimizedBody316_68

def optimizedBody316_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_69

def optimizedBody316_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_65 optimizedBody316_70

def optimizedBody316_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_64 optimizedBody316_71

def optimizedBody316_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_72

def optimizedBody316_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_63 optimizedBody316_73

def optimizedBody316_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_47 optimizedBody316_74

def optimizedBody316_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_75

def optimizedBody316_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_76

def optimizedBody316_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 44), (6, 6), (4, 4), (8, 8), (10, 52)]

def optimizedBody316_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody316_77 optimizedBody316_78

def optimizedBody316_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody316_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody316_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody316_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_81 optimizedBody316_82

def optimizedBody316_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_83

def optimizedBody316_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_12 optimizedBody316_82

def optimizedBody316_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_85

def optimizedBody316_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody316_84 optimizedBody316_86

def optimizedBody316_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody316_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_80 optimizedBody316_88

def optimizedBody316_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_89

def optimizedBody316_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_47 optimizedBody316_88

def optimizedBody316_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_91

def optimizedBody316_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody316_90 optimizedBody316_92

def optimizedBody316_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody316_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody316_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody316_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody316_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody316_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody316_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody316_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody316_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 4), (46, 0), (48, 6), (52, 10)]

def optimizedBody316_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (46, 46), (48, 48), (52, 52)]

def optimizedBody316_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (48, 48), (52, 52)]

def optimizedBody316_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_104 optimizedBody316_52

def optimizedBody316_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody316_103, 316, 4)) (some 286) ([2]) (some (2, optimizedBody316_105, 316, 5))

def optimizedBody316_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (50, 50), (46, 46), (48, 48), (52, 52)]

def optimizedBody316_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_107

def optimizedBody316_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_106 optimizedBody316_108

def optimizedBody316_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_102 optimizedBody316_109

def optimizedBody316_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_101 optimizedBody316_110

def optimizedBody316_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_111

def optimizedBody316_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (50, 4), (46, 0), (48, 6), (52, 10)]

def optimizedBody316_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_113

def optimizedBody316_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody316_112 optimizedBody316_114

def optimizedBody316_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody316_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 44), (50, 50), (10, 46), (12, 48), (4, 52)]

def optimizedBody316_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (50, 50), (10, 46), (12, 48), (4, 52)]

def optimizedBody316_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_118 optimizedBody316_52

def optimizedBody316_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody316_117, 316, 6)) (some 68) ([2]) (some (2, optimizedBody316_119, 316, 7))

def optimizedBody316_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody316_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody316_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody316_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 12), (2, 2)]

def optimizedBody316_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody316_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody316_127 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 2, 4, 6]) (none)

def optimizedBody316_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_126 optimizedBody316_127

def optimizedBody316_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_125 optimizedBody316_128

def optimizedBody316_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_124 optimizedBody316_129

def optimizedBody316_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_130

def optimizedBody316_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (2, 2)]

def optimizedBody316_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) optimizedBody316_131 optimizedBody316_132

def optimizedBody316_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody316_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody316_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody316_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody316_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (50, 50), (46, 10), (48, 12)]

def optimizedBody316_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (6, 46), (8, 48)]

def optimizedBody316_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (8, 48)]

def optimizedBody316_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_140 optimizedBody316_52

def optimizedBody316_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody316_139, 316, 8)) (some 292) ([2, 4, 6, 8]) (some (2, optimizedBody316_141, 316, 9))

def optimizedBody316_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 4)]

def optimizedBody316_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody316_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody316_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody316_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 56#64))

def optimizedBody316_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_147 optimizedBody316_68

def optimizedBody316_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_148

def optimizedBody316_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_146 optimizedBody316_149

def optimizedBody316_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_150

def optimizedBody316_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_145 optimizedBody316_151

def optimizedBody316_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_144 optimizedBody316_152

def optimizedBody316_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_143 optimizedBody316_153

def optimizedBody316_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_154

def optimizedBody316_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (8, 8)]

def optimizedBody316_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody316_155 optimizedBody316_156

def optimizedBody316_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_146 optimizedBody316_128

def optimizedBody316_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_158

def optimizedBody316_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_145 optimizedBody316_159

def optimizedBody316_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_144 optimizedBody316_160

def optimizedBody316_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_143 optimizedBody316_161

def optimizedBody316_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_162

def optimizedBody316_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_163

def optimizedBody316_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_157 optimizedBody316_164

def optimizedBody316_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_81 optimizedBody316_165

def optimizedBody316_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_13 optimizedBody316_166

def optimizedBody316_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_167

def optimizedBody316_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_142 optimizedBody316_168

def optimizedBody316_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_138 optimizedBody316_169

def optimizedBody316_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_125 optimizedBody316_170

def optimizedBody316_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_137 optimizedBody316_171

def optimizedBody316_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_136 optimizedBody316_172

def optimizedBody316_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_135 optimizedBody316_173

def optimizedBody316_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_134 optimizedBody316_174

def optimizedBody316_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_175

def optimizedBody316_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_176

def optimizedBody316_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_133 optimizedBody316_177

def optimizedBody316_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_123 optimizedBody316_178

def optimizedBody316_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_96 optimizedBody316_179

def optimizedBody316_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_122 optimizedBody316_180

def optimizedBody316_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_121 optimizedBody316_181

def optimizedBody316_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_182

def optimizedBody316_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_120 optimizedBody316_183

def optimizedBody316_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_104 optimizedBody316_184

def optimizedBody316_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_116 optimizedBody316_185

def optimizedBody316_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_186

def optimizedBody316_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_115 optimizedBody316_187

def optimizedBody316_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_12 optimizedBody316_188

def optimizedBody316_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_100 optimizedBody316_189

def optimizedBody316_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_99 optimizedBody316_190

def optimizedBody316_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_13 optimizedBody316_191

def optimizedBody316_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_98 optimizedBody316_192

def optimizedBody316_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_10 optimizedBody316_193

def optimizedBody316_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_9 optimizedBody316_194

def optimizedBody316_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_97 optimizedBody316_195

def optimizedBody316_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_96 optimizedBody316_196

def optimizedBody316_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 44), (4, 4)]

def optimizedBody316_199 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody316_197 optimizedBody316_198

def optimizedBody316_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody316_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_64 optimizedBody316_200

def optimizedBody316_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_201

def optimizedBody316_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_199 optimizedBody316_202

def optimizedBody316_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_95 optimizedBody316_203

def optimizedBody316_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_94 optimizedBody316_204

def optimizedBody316_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_205

def optimizedBody316_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_93 optimizedBody316_206

def optimizedBody316_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_47 optimizedBody316_207

def optimizedBody316_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_6 optimizedBody316_208

def optimizedBody316_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_209

def optimizedBody316_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_87 optimizedBody316_210

def optimizedBody316_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_80 optimizedBody316_211

def optimizedBody316_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_13 optimizedBody316_212

def optimizedBody316_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_213

def optimizedBody316_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_214

def optimizedBody316_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_79 optimizedBody316_215

def optimizedBody316_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_47 optimizedBody316_216

def optimizedBody316_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_13 optimizedBody316_217

def optimizedBody316_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_46 optimizedBody316_218

def optimizedBody316_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_9 optimizedBody316_219

def optimizedBody316_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_220

def optimizedBody316_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_45 optimizedBody316_221

def optimizedBody316_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_5 optimizedBody316_222

def optimizedBody316_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_4 optimizedBody316_223

def optimizedBody316_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_3 optimizedBody316_224

def optimizedBody316_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_2 optimizedBody316_225

def optimizedBody316_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_1 optimizedBody316_226

def optimizedBody316_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody316_0 optimizedBody316_227

def optimized316 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(316, 2, optimizedBody316_228)
end InitECandidate.Proofs.StackAnalysis
