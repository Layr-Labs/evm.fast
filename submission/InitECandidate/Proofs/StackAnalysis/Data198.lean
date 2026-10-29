import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody198_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 0)]

def optimizedBody198_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody198_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 2)]

def optimizedBody198_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody198_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (46, 4), (50, 0)]

def optimizedBody198_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody198_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody198_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody198_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 10), (46, 46), (48, 8), (50, 50)]

def optimizedBody198_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (44, 44), (8, 46), (4, 48), (14, 50)]

def optimizedBody198_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (14, 50)]

def optimizedBody198_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody198_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_10 optimizedBody198_11

def optimizedBody198_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody198_9, 198, 2)) (some 68) ([2]) (some (2, optimizedBody198_12, 198, 3))

def optimizedBody198_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody198_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody198_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody198_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody198_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody198_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 12), (8, 8), (46, 4), (0, 0), (10, 10), (16, 16), (14, 14)]

def optimizedBody198_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody198_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody198_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody198_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody198_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody198_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody198_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 8), (8, 8), (52, 0)]

def optimizedBody198_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 8), (8, 8), (2, 0)]

def optimizedBody198_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (2, 2), (0, 0)]

def optimizedBody198_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody198_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (0, 0)]

def optimizedBody198_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody198_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 8), (44, 44), (46, 12), (48, 8), (50, 46), (52, 52), (54, 10), (56, 16), (58, 14)]

def optimizedBody198_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (12, 46), (8, 48), (6, 50), (0, 52), (10, 54), (16, 56), (14, 58)]

def optimizedBody198_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (12, 46), (8, 48), (6, 50), (0, 52), (10, 54), (16, 56), (14, 58)]

def optimizedBody198_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_34 optimizedBody198_11

def optimizedBody198_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody198_33, 198, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody198_35, 198, 5))

def optimizedBody198_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody198_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (12, 12), (8, 8), (46, 6), (0, 0), (10, 10), (16, 16), (14, 14)]

def optimizedBody198_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody198_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_38 optimizedBody198_39

def optimizedBody198_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_37 optimizedBody198_40

def optimizedBody198_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_21 optimizedBody198_41

def optimizedBody198_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_42

def optimizedBody198_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_36 optimizedBody198_43

def optimizedBody198_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_32 optimizedBody198_44

def optimizedBody198_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_31 optimizedBody198_45

def optimizedBody198_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_30 optimizedBody198_46

def optimizedBody198_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_29 optimizedBody198_47

def optimizedBody198_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_28 optimizedBody198_48

def optimizedBody198_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_5 optimizedBody198_49

def optimizedBody198_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_27 optimizedBody198_50

def optimizedBody198_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_5 optimizedBody198_51

def optimizedBody198_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_26 optimizedBody198_52

def optimizedBody198_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_25 optimizedBody198_53

def optimizedBody198_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_24 optimizedBody198_54

def optimizedBody198_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_23 optimizedBody198_55

def optimizedBody198_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_22 optimizedBody198_56

def optimizedBody198_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_21 optimizedBody198_57

def optimizedBody198_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_58

def optimizedBody198_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody198_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody198_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_60 optimizedBody198_61

def optimizedBody198_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_62

def optimizedBody198_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 14) optimizedBody198_59 optimizedBody198_63

def optimizedBody198_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (12, 12), (8, 8), (46, 4), (0, 0), (10, 10), (16, 16), (14, 14)]

def optimizedBody198_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_65

def optimizedBody198_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_64 optimizedBody198_66

def optimizedBody198_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_20 optimizedBody198_67

def optimizedBody198_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody198_68 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody198_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 14)]

def optimizedBody198_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody198_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_70 optimizedBody198_71

def optimizedBody198_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_72

def optimizedBody198_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_69 optimizedBody198_73

def optimizedBody198_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_19 optimizedBody198_74

def optimizedBody198_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_75

def optimizedBody198_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_18 optimizedBody198_76

def optimizedBody198_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_17 optimizedBody198_77

def optimizedBody198_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_15 optimizedBody198_78

def optimizedBody198_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_16 optimizedBody198_79

def optimizedBody198_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_15 optimizedBody198_80

def optimizedBody198_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_14 optimizedBody198_81

def optimizedBody198_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_13 optimizedBody198_82

def optimizedBody198_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_8 optimizedBody198_83

def optimizedBody198_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_7 optimizedBody198_84

def optimizedBody198_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_6 optimizedBody198_85

def optimizedBody198_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_5 optimizedBody198_86

def optimizedBody198_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_4 optimizedBody198_87

def optimizedBody198_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_3 optimizedBody198_88

def optimizedBody198_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_2 optimizedBody198_89

def optimizedBody198_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_1 optimizedBody198_90

def optimizedBody198_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody198_0 optimizedBody198_91

def optimized198 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(198, 2, optimizedBody198_92)
end InitECandidate.Proofs.StackAnalysis
