import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody160_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody160_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody160_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody160_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody160_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody160_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody160_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_4 optimizedBody160_5

def optimizedBody160_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_6

def optimizedBody160_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody160_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_8 optimizedBody160_5

def optimizedBody160_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_9

def optimizedBody160_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody160_7 optimizedBody160_10

def optimizedBody160_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2)]

def optimizedBody160_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody160_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody160_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody160_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody160_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody160_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_16 optimizedBody160_17

def optimizedBody160_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_18

def optimizedBody160_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody160_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_20 optimizedBody160_17

def optimizedBody160_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_21

def optimizedBody160_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody160_19 optimizedBody160_22

def optimizedBody160_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody160_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody160_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody160_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody160_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (6, 48)]

def optimizedBody160_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody160_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody160_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_29 optimizedBody160_30

def optimizedBody160_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody160_28, 160, 2)) (some 159) ([2]) (some (2, optimizedBody160_31, 160, 3))

def optimizedBody160_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody160_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_33

def optimizedBody160_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_32 optimizedBody160_34

def optimizedBody160_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_27 optimizedBody160_35

def optimizedBody160_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_26 optimizedBody160_36

def optimizedBody160_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (4, 4), (6, 6)]

def optimizedBody160_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody160_37 optimizedBody160_38

def optimizedBody160_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (6, 6), (8, 8), (2, 2)]

def optimizedBody160_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody160_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody160_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody160_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody160_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody160_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody160_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody160_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody160_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (8, 8), (2, 2)]

def optimizedBody160_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody160_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_49 optimizedBody160_50

def optimizedBody160_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_48 optimizedBody160_51

def optimizedBody160_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_24 optimizedBody160_52

def optimizedBody160_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_47 optimizedBody160_53

def optimizedBody160_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_46 optimizedBody160_54

def optimizedBody160_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_45 optimizedBody160_55

def optimizedBody160_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_44 optimizedBody160_56

def optimizedBody160_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_43 optimizedBody160_57

def optimizedBody160_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_42 optimizedBody160_58

def optimizedBody160_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_59

def optimizedBody160_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody160_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_61

def optimizedBody160_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody160_60 optimizedBody160_62

def optimizedBody160_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_49

def optimizedBody160_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_63 optimizedBody160_64

def optimizedBody160_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_41 optimizedBody160_65

def optimizedBody160_67 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody160_66 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def optimizedBody160_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody160_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_14 optimizedBody160_68

def optimizedBody160_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_69

def optimizedBody160_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_67 optimizedBody160_70

def optimizedBody160_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_40 optimizedBody160_71

def optimizedBody160_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_72

def optimizedBody160_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_8 optimizedBody160_73

def optimizedBody160_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_20 optimizedBody160_74

def optimizedBody160_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_75

def optimizedBody160_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_39 optimizedBody160_76

def optimizedBody160_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_25 optimizedBody160_77

def optimizedBody160_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_24 optimizedBody160_78

def optimizedBody160_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_79

def optimizedBody160_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_23 optimizedBody160_80

def optimizedBody160_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_15 optimizedBody160_81

def optimizedBody160_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_14 optimizedBody160_82

def optimizedBody160_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_13 optimizedBody160_83

def optimizedBody160_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_12 optimizedBody160_84

def optimizedBody160_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_3 optimizedBody160_85

def optimizedBody160_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_11 optimizedBody160_86

def optimizedBody160_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_2 optimizedBody160_87

def optimizedBody160_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_1 optimizedBody160_88

def optimizedBody160_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody160_0 optimizedBody160_89

def optimized160 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(160, 3, optimizedBody160_90)
end InitECandidate.Proofs.StackAnalysis
