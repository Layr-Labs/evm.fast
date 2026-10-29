import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody169_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (48, 4), (46, 2)]

def optimizedBody169_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody169_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody169_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody169_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_2 optimizedBody169_3

def optimizedBody169_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody169_1, 169, 2)) (some 167) ([2, 4]) (some (2, optimizedBody169_4, 169, 3))

def optimizedBody169_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody169_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody169_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody169_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 0)]

def optimizedBody169_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (48, 48), (0, 46), (4, 50)]

def optimizedBody169_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (4, 50)]

def optimizedBody169_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_11 optimizedBody169_3

def optimizedBody169_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody169_10, 169, 4)) (some 68) ([2]) (some (2, optimizedBody169_12, 169, 5))

def optimizedBody169_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody169_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody169_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 10), (46, 8), (48, 48), (6, 6), (0, 0), (4, 4)]

def optimizedBody169_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody169_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody169_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody169_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 10), (48, 46), (50, 48), (52, 6), (54, 0), (56, 4)]

def optimizedBody169_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (18, 44), (10, 46), (8, 48), (16, 50), (12, 52), (0, 54), (4, 56)]

def optimizedBody169_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44), (10, 46), (8, 48), (16, 50), (12, 52), (0, 54), (4, 56)]

def optimizedBody169_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_22 optimizedBody169_3

def optimizedBody169_24 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody169_21, 169, 6)) (some 168) ([2]) (some (2, optimizedBody169_23, 169, 7))

def optimizedBody169_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody169_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 10 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody169_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody169_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody169_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody169_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody169_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody169_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody169_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8), (10, 10)]

def optimizedBody169_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody169_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody169_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody169_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6)]

def optimizedBody169_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody169_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody169_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody169_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 18), (10, 10), (46, 8), (48, 16), (6, 6), (0, 0), (4, 4)]

def optimizedBody169_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody169_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_41 optimizedBody169_42

def optimizedBody169_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_40 optimizedBody169_43

def optimizedBody169_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_39 optimizedBody169_44

def optimizedBody169_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_38 optimizedBody169_45

def optimizedBody169_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_37 optimizedBody169_46

def optimizedBody169_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_36 optimizedBody169_47

def optimizedBody169_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_35 optimizedBody169_48

def optimizedBody169_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_34 optimizedBody169_49

def optimizedBody169_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_33 optimizedBody169_50

def optimizedBody169_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_32 optimizedBody169_51

def optimizedBody169_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_31 optimizedBody169_52

def optimizedBody169_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_30 optimizedBody169_53

def optimizedBody169_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_29 optimizedBody169_54

def optimizedBody169_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_28 optimizedBody169_55

def optimizedBody169_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_27 optimizedBody169_56

def optimizedBody169_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_26 optimizedBody169_57

def optimizedBody169_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_25 optimizedBody169_58

def optimizedBody169_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_59

def optimizedBody169_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_24 optimizedBody169_60

def optimizedBody169_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_20 optimizedBody169_61

def optimizedBody169_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_19 optimizedBody169_62

def optimizedBody169_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_18 optimizedBody169_63

def optimizedBody169_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_64

def optimizedBody169_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody169_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody169_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_66 optimizedBody169_67

def optimizedBody169_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_68

def optimizedBody169_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) optimizedBody169_65 optimizedBody169_69

def optimizedBody169_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (10, 10), (46, 8), (48, 12), (6, 6), (0, 0), (4, 4)]

def optimizedBody169_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_71

def optimizedBody169_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_70 optimizedBody169_72

def optimizedBody169_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_17 optimizedBody169_73

def optimizedBody169_75 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody169_74 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody169_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 4)]

def optimizedBody169_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody169_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_76 optimizedBody169_77

def optimizedBody169_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_78

def optimizedBody169_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_75 optimizedBody169_79

def optimizedBody169_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_16 optimizedBody169_80

def optimizedBody169_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_81

def optimizedBody169_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_15 optimizedBody169_82

def optimizedBody169_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_14 optimizedBody169_83

def optimizedBody169_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_84

def optimizedBody169_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_13 optimizedBody169_85

def optimizedBody169_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_9 optimizedBody169_86

def optimizedBody169_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_8 optimizedBody169_87

def optimizedBody169_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_7 optimizedBody169_88

def optimizedBody169_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_6 optimizedBody169_89

def optimizedBody169_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_5 optimizedBody169_90

def optimizedBody169_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody169_0 optimizedBody169_91

def optimized169 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(169, 3, optimizedBody169_92)
end InitECandidate.Proofs.StackAnalysis
