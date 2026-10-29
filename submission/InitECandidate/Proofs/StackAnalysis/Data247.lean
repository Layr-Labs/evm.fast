import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody247_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody247_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody247_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody247_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody247_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_2 optimizedBody247_3

def optimizedBody247_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody247_1, 247, 2)) (some 246) ([2]) (some (2, optimizedBody247_4, 247, 3))

def optimizedBody247_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody247_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody247_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody247_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 4)]

def optimizedBody247_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody247_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody247_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_11 optimizedBody247_3

def optimizedBody247_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody247_10, 247, 4)) (some 246) ([2]) (some (2, optimizedBody247_12, 247, 5))

def optimizedBody247_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody247_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 4), (46, 0), (50, 50)]

def optimizedBody247_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody247_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody247_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_17 optimizedBody247_3

def optimizedBody247_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody247_16, 247, 6)) (some 246) ([2]) (some (2, optimizedBody247_18, 247, 7))

def optimizedBody247_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody247_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 48), (50, 50)]

def optimizedBody247_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody247_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody247_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_23 optimizedBody247_3

def optimizedBody247_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody247_22, 247, 8)) (some 246) ([2]) (some (2, optimizedBody247_24, 247, 9))

def optimizedBody247_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody247_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody247_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody247_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody247_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody247_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody247_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody247_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody247_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody247_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody247_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody247_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_35 optimizedBody247_36

def optimizedBody247_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_34 optimizedBody247_37

def optimizedBody247_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_7 optimizedBody247_38

def optimizedBody247_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_33 optimizedBody247_39

def optimizedBody247_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_32 optimizedBody247_40

def optimizedBody247_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_31 optimizedBody247_41

def optimizedBody247_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_30 optimizedBody247_42

def optimizedBody247_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_29 optimizedBody247_43

def optimizedBody247_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_28 optimizedBody247_44

def optimizedBody247_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_27 optimizedBody247_45

def optimizedBody247_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_26 optimizedBody247_46

def optimizedBody247_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_6 optimizedBody247_47

def optimizedBody247_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_25 optimizedBody247_48

def optimizedBody247_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_21 optimizedBody247_49

def optimizedBody247_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_20 optimizedBody247_50

def optimizedBody247_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_7 optimizedBody247_51

def optimizedBody247_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_6 optimizedBody247_52

def optimizedBody247_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_19 optimizedBody247_53

def optimizedBody247_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_15 optimizedBody247_54

def optimizedBody247_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_14 optimizedBody247_55

def optimizedBody247_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_7 optimizedBody247_56

def optimizedBody247_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_6 optimizedBody247_57

def optimizedBody247_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_13 optimizedBody247_58

def optimizedBody247_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_9 optimizedBody247_59

def optimizedBody247_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_8 optimizedBody247_60

def optimizedBody247_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_7 optimizedBody247_61

def optimizedBody247_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_6 optimizedBody247_62

def optimizedBody247_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_5 optimizedBody247_63

def optimizedBody247_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody247_0 optimizedBody247_64

def optimized247 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(247, 2, optimizedBody247_65)
end InitECandidate.Proofs.StackAnalysis
