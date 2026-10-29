import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody211_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody211_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 26 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody211_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody211_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody211_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody211_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody211_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody211_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 26 (Flapjack.WordRegImm.reg 2)))

def optimizedBody211_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody211_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 6 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody211_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 26 (Flapjack.WordRegImm.reg 4)))

def optimizedBody211_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody211_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody211_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 26 (Flapjack.WordRegImm.reg 6)))

def optimizedBody211_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody211_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody211_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody211_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_18 optimizedBody211_19

def optimizedBody211_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_17 optimizedBody211_20

def optimizedBody211_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_13 optimizedBody211_21

def optimizedBody211_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_16 optimizedBody211_22

def optimizedBody211_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_15 optimizedBody211_23

def optimizedBody211_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_9 optimizedBody211_24

def optimizedBody211_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_14 optimizedBody211_25

def optimizedBody211_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_13 optimizedBody211_26

def optimizedBody211_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_12 optimizedBody211_27

def optimizedBody211_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_11 optimizedBody211_28

def optimizedBody211_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_4 optimizedBody211_29

def optimizedBody211_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_10 optimizedBody211_30

def optimizedBody211_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_9 optimizedBody211_31

def optimizedBody211_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_8 optimizedBody211_32

def optimizedBody211_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_7 optimizedBody211_33

def optimizedBody211_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_6 optimizedBody211_34

def optimizedBody211_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_5 optimizedBody211_35

def optimizedBody211_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_4 optimizedBody211_36

def optimizedBody211_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_3 optimizedBody211_37

def optimizedBody211_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(18, 8), (22, 4), (24, 2), (20, 6)]

def optimizedBody211_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 28) optimizedBody211_38 optimizedBody211_39

def optimizedBody211_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 24), (4, 22), (6, 20), (8, 18), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody211_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (10, 10), (4, 4), (8, 8), (12, 44)]

def optimizedBody211_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44)]

def optimizedBody211_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody211_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_43 optimizedBody211_44

def optimizedBody211_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody211_42, 211, 2)) (some 115) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody211_45, 211, 3))

def optimizedBody211_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody211_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody211_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody211_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody211_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody211_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody211_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody211_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody211_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody211_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_18 optimizedBody211_58

def optimizedBody211_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_57 optimizedBody211_59

def optimizedBody211_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_17 optimizedBody211_60

def optimizedBody211_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_13 optimizedBody211_61

def optimizedBody211_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_56 optimizedBody211_62

def optimizedBody211_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_55 optimizedBody211_63

def optimizedBody211_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_54 optimizedBody211_64

def optimizedBody211_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_15 optimizedBody211_65

def optimizedBody211_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_9 optimizedBody211_66

def optimizedBody211_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_53 optimizedBody211_67

def optimizedBody211_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_13 optimizedBody211_68

def optimizedBody211_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_52 optimizedBody211_69

def optimizedBody211_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_11 optimizedBody211_70

def optimizedBody211_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_4 optimizedBody211_71

def optimizedBody211_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_51 optimizedBody211_72

def optimizedBody211_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_9 optimizedBody211_73

def optimizedBody211_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_50 optimizedBody211_74

def optimizedBody211_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_49 optimizedBody211_75

def optimizedBody211_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_48 optimizedBody211_76

def optimizedBody211_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_47 optimizedBody211_77

def optimizedBody211_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_4 optimizedBody211_78

def optimizedBody211_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_3 optimizedBody211_79

def optimizedBody211_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_46 optimizedBody211_80

def optimizedBody211_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_41 optimizedBody211_81

def optimizedBody211_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_3 optimizedBody211_82

def optimizedBody211_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_3 optimizedBody211_83

def optimizedBody211_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_40 optimizedBody211_84

def optimizedBody211_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_2 optimizedBody211_85

def optimizedBody211_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_1 optimizedBody211_86

def optimizedBody211_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody211_0 optimizedBody211_87

def optimized211 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(211, 9, optimizedBody211_88)
end InitECandidate.Proofs.StackAnalysis
