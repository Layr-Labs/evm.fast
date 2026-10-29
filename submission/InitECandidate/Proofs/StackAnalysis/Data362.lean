import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody362_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 6), (8, 0), (2, 2), (10, 4)]

def optimizedBody362_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody362_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 12), (4, 4)]

def optimizedBody362_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody362_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 10), (48, 2), (50, 12)]

def optimizedBody362_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48), (8, 50)]

def optimizedBody362_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50)]

def optimizedBody362_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody362_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_6 optimizedBody362_7

def optimizedBody362_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody362_5, 362, 2)) (some 178) ([2, 4]) (some (2, optimizedBody362_8, 362, 3))

def optimizedBody362_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody362_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody362_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody362_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody362_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (46, 6), (2, 2), (4, 4), (8, 8), (10, 10)]

def optimizedBody362_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody362_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody362_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody362_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody362_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody362_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody362_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 46), (50, 2), (52, 8), (54, 10)]

def optimizedBody362_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (12, 44), (0, 46), (14, 48), (10, 50), (8, 52), (6, 54)]

def optimizedBody362_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46), (14, 48), (10, 50), (8, 52), (6, 54)]

def optimizedBody362_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_23 optimizedBody362_7

def optimizedBody362_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody362_22, 362, 4)) (some 176) ([2, 4, 6]) (some (2, optimizedBody362_24, 362, 5))

def optimizedBody362_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody362_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody362_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody362_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody362_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 12), (0, 0), (46, 14), (2, 2), (4, 4), (8, 8), (10, 10)]

def optimizedBody362_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody362_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_30 optimizedBody362_31

def optimizedBody362_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_29 optimizedBody362_32

def optimizedBody362_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_28 optimizedBody362_33

def optimizedBody362_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_27 optimizedBody362_34

def optimizedBody362_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_26 optimizedBody362_35

def optimizedBody362_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_36

def optimizedBody362_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_25 optimizedBody362_37

def optimizedBody362_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_21 optimizedBody362_38

def optimizedBody362_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_20 optimizedBody362_39

def optimizedBody362_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_19 optimizedBody362_40

def optimizedBody362_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_18 optimizedBody362_41

def optimizedBody362_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_17 optimizedBody362_42

def optimizedBody362_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_16 optimizedBody362_43

def optimizedBody362_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_44

def optimizedBody362_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody362_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_46

def optimizedBody362_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) optimizedBody362_45 optimizedBody362_47

def optimizedBody362_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (0, 0), (46, 12), (2, 2), (4, 4), (8, 8), (10, 10)]

def optimizedBody362_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_49

def optimizedBody362_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_48 optimizedBody362_50

def optimizedBody362_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_15 optimizedBody362_51

def optimizedBody362_53 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody362_52 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody362_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (2, 2)]

def optimizedBody362_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody362_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody362_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody362_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_56 optimizedBody362_57

def optimizedBody362_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_55 optimizedBody362_58

def optimizedBody362_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_54 optimizedBody362_59

def optimizedBody362_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_60

def optimizedBody362_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_53 optimizedBody362_61

def optimizedBody362_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_14 optimizedBody362_62

def optimizedBody362_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_63

def optimizedBody362_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_13 optimizedBody362_64

def optimizedBody362_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_12 optimizedBody362_65

def optimizedBody362_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_11 optimizedBody362_66

def optimizedBody362_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_10 optimizedBody362_67

def optimizedBody362_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_9 optimizedBody362_68

def optimizedBody362_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_4 optimizedBody362_69

def optimizedBody362_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_3 optimizedBody362_70

def optimizedBody362_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_2 optimizedBody362_71

def optimizedBody362_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_1 optimizedBody362_72

def optimizedBody362_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody362_0 optimizedBody362_73

def optimized362 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(362, 4, optimizedBody362_74)
end InitECandidate.Proofs.StackAnalysis
