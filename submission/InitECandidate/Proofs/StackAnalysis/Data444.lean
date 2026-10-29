import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody444_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2), (50, 6)]

def optimizedBody444_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (0, 44), (6, 46), (16, 48), (10, 50)]

def optimizedBody444_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (16, 48), (10, 50)]

def optimizedBody444_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody444_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_2 optimizedBody444_3

def optimizedBody444_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody444_1, 444, 2)) (some 439) ([2]) (some (2, optimizedBody444_4, 444, 3))

def optimizedBody444_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody444_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody444_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody444_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody444_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody444_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody444_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody444_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (12, 12), (2, 2), (46, 6), (8, 8), (16, 16), (14, 14), (48, 10)]

def optimizedBody444_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody444_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody444_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 12 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody444_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody444_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody444_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody444_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 46)]

def optimizedBody444_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody444_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody444_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 48)]

def optimizedBody444_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody444_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody444_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody444_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_25 optimizedBody444_26

def optimizedBody444_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_24 optimizedBody444_27

def optimizedBody444_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_21 optimizedBody444_28

def optimizedBody444_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_29

def optimizedBody444_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody444_30 optimizedBody444_6

def optimizedBody444_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody444_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody444_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_17 optimizedBody444_33

def optimizedBody444_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_32 optimizedBody444_34

def optimizedBody444_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_35

def optimizedBody444_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_31 optimizedBody444_36

def optimizedBody444_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_23 optimizedBody444_37

def optimizedBody444_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_22 optimizedBody444_38

def optimizedBody444_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_21 optimizedBody444_39

def optimizedBody444_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_40

def optimizedBody444_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 12), (18, 2), (44, 48)]

def optimizedBody444_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 20) optimizedBody444_41 optimizedBody444_42

def optimizedBody444_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody444_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody444_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 12), (2, 18), (46, 20), (48, 44)]

def optimizedBody444_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody444_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_46 optimizedBody444_47

def optimizedBody444_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_45 optimizedBody444_48

def optimizedBody444_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_44 optimizedBody444_49

def optimizedBody444_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_50

def optimizedBody444_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_51

def optimizedBody444_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_43 optimizedBody444_52

def optimizedBody444_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_20 optimizedBody444_53

def optimizedBody444_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_19 optimizedBody444_54

def optimizedBody444_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_18 optimizedBody444_55

def optimizedBody444_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_17 optimizedBody444_56

def optimizedBody444_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_16 optimizedBody444_57

def optimizedBody444_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_15 optimizedBody444_58

def optimizedBody444_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_59

def optimizedBody444_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody444_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_61

def optimizedBody444_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 4) optimizedBody444_60 optimizedBody444_62

def optimizedBody444_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 12), (2, 2), (46, 6), (48, 10)]

def optimizedBody444_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_64

def optimizedBody444_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_63 optimizedBody444_65

def optimizedBody444_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_14 optimizedBody444_66

def optimizedBody444_68 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody444_67 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody444_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8)]

def optimizedBody444_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody444_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 46), (48, 48)]

def optimizedBody444_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (6, 46), (0, 48)]

def optimizedBody444_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (0, 48)]

def optimizedBody444_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_73 optimizedBody444_3

def optimizedBody444_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody444_72, 444, 4)) (some 437) ([2, 4]) (some (2, optimizedBody444_74, 444, 5))

def optimizedBody444_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody444_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody444_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody444_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody444_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody444_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody444_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody444_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_17 optimizedBody444_82

def optimizedBody444_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_32 optimizedBody444_83

def optimizedBody444_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_81 optimizedBody444_84

def optimizedBody444_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_80 optimizedBody444_85

def optimizedBody444_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_79 optimizedBody444_86

def optimizedBody444_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_78 optimizedBody444_87

def optimizedBody444_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_77 optimizedBody444_88

def optimizedBody444_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_76 optimizedBody444_89

def optimizedBody444_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_90

def optimizedBody444_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_75 optimizedBody444_91

def optimizedBody444_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_71 optimizedBody444_92

def optimizedBody444_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_70 optimizedBody444_93

def optimizedBody444_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_69 optimizedBody444_94

def optimizedBody444_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_95

def optimizedBody444_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_68 optimizedBody444_96

def optimizedBody444_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_13 optimizedBody444_97

def optimizedBody444_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_98

def optimizedBody444_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_12 optimizedBody444_99

def optimizedBody444_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_11 optimizedBody444_100

def optimizedBody444_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_9 optimizedBody444_101

def optimizedBody444_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_10 optimizedBody444_102

def optimizedBody444_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_9 optimizedBody444_103

def optimizedBody444_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_8 optimizedBody444_104

def optimizedBody444_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_7 optimizedBody444_105

def optimizedBody444_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_6 optimizedBody444_106

def optimizedBody444_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_5 optimizedBody444_107

def optimizedBody444_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody444_0 optimizedBody444_108

def optimized444 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(444, 4, optimizedBody444_109)
end InitECandidate.Proofs.StackAnalysis
