import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody437_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 0), (4, 4)]

def optimizedBody437_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody437_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 2)]

def optimizedBody437_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody437_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody437_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody437_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 4), (4, 0), (46, 0), (48, 4)]

def optimizedBody437_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody437_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody437_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody437_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 12), (46, 46), (48, 48), (50, 10), (52, 8)]

def optimizedBody437_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (46, 46), (0, 48), (4, 50), (10, 52)]

def optimizedBody437_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (10, 52)]

def optimizedBody437_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody437_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_12 optimizedBody437_13

def optimizedBody437_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody437_11, 437, 2)) (some 68) ([2]) (some (2, optimizedBody437_14, 437, 3))

def optimizedBody437_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (50, 4), (48, 0)]

def optimizedBody437_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (8, 8), (6, 0)]

def optimizedBody437_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody437_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 10), (54, 8)]

def optimizedBody437_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 44), (0, 46), (4, 48), (10, 50), (8, 52), (6, 54)]

def optimizedBody437_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46), (4, 48), (10, 50), (8, 52), (6, 54)]

def optimizedBody437_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_21 optimizedBody437_13

def optimizedBody437_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody437_20, 437, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody437_22, 437, 5))

def optimizedBody437_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody437_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody437_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody437_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody437_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody437_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody437_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody437_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody437_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (4, 4), (10, 10), (8, 8)]

def optimizedBody437_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_31 optimizedBody437_32

def optimizedBody437_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_30 optimizedBody437_33

def optimizedBody437_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_29 optimizedBody437_34

def optimizedBody437_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_28 optimizedBody437_35

def optimizedBody437_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_27 optimizedBody437_36

def optimizedBody437_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_26 optimizedBody437_37

def optimizedBody437_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_25 optimizedBody437_38

def optimizedBody437_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_24 optimizedBody437_39

def optimizedBody437_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_5 optimizedBody437_40

def optimizedBody437_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_23 optimizedBody437_41

def optimizedBody437_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_19 optimizedBody437_42

def optimizedBody437_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_18 optimizedBody437_43

def optimizedBody437_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_17 optimizedBody437_44

def optimizedBody437_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_7 optimizedBody437_45

def optimizedBody437_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_16 optimizedBody437_46

def optimizedBody437_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_5 optimizedBody437_47

def optimizedBody437_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_15 optimizedBody437_48

def optimizedBody437_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_10 optimizedBody437_49

def optimizedBody437_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_9 optimizedBody437_50

def optimizedBody437_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_8 optimizedBody437_51

def optimizedBody437_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_7 optimizedBody437_52

def optimizedBody437_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_6 optimizedBody437_53

def optimizedBody437_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_5 optimizedBody437_54

def optimizedBody437_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_5 optimizedBody437_32

def optimizedBody437_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 0) optimizedBody437_55 optimizedBody437_56

def optimizedBody437_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody437_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 10)]

def optimizedBody437_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody437_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody437_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody437_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody437_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody437_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody437_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody437_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody437_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody437_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_67 optimizedBody437_68

def optimizedBody437_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_66 optimizedBody437_69

def optimizedBody437_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_65 optimizedBody437_70

def optimizedBody437_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_64 optimizedBody437_71

def optimizedBody437_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_7 optimizedBody437_72

def optimizedBody437_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_63 optimizedBody437_73

def optimizedBody437_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_62 optimizedBody437_74

def optimizedBody437_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_61 optimizedBody437_75

def optimizedBody437_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_60 optimizedBody437_76

def optimizedBody437_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_59 optimizedBody437_77

def optimizedBody437_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_58 optimizedBody437_78

def optimizedBody437_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_26 optimizedBody437_79

def optimizedBody437_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_5 optimizedBody437_80

def optimizedBody437_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_57 optimizedBody437_81

def optimizedBody437_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_4 optimizedBody437_82

def optimizedBody437_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_3 optimizedBody437_83

def optimizedBody437_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_2 optimizedBody437_84

def optimizedBody437_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_1 optimizedBody437_85

def optimizedBody437_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody437_0 optimizedBody437_86

def optimized437 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(437, 3, optimizedBody437_87)
end InitECandidate.Proofs.StackAnalysis
