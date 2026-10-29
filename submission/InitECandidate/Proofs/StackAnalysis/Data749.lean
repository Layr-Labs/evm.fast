import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody749_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4), (48, 2), (50, 6)]

def optimizedBody749_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (10, 50)]

def optimizedBody749_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (10, 50)]

def optimizedBody749_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody749_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_2 optimizedBody749_3

def optimizedBody749_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody749_1, 749, 2)) (some 734) ([2, 4, 6]) (some (2, optimizedBody749_4, 749, 3))

def optimizedBody749_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody749_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody749_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody749_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody749_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody749_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody749_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody749_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody749_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody749_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody749_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_15 optimizedBody749_3

def optimizedBody749_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody749_14, 749, 4)) (some 734) ([2, 4, 6]) (some (2, optimizedBody749_16, 749, 5))

def optimizedBody749_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody749_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody749_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody749_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody749_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody749_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody749_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody749_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody749_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_25 optimizedBody749_3

def optimizedBody749_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody749_24, 749, 6)) (some 734) ([2, 4, 6]) (some (2, optimizedBody749_26, 749, 7))

def optimizedBody749_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody749_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody749_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody749_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_29 optimizedBody749_30

def optimizedBody749_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_28 optimizedBody749_31

def optimizedBody749_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_6 optimizedBody749_32

def optimizedBody749_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_27 optimizedBody749_33

def optimizedBody749_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_23 optimizedBody749_34

def optimizedBody749_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_22 optimizedBody749_35

def optimizedBody749_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_9 optimizedBody749_36

def optimizedBody749_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_21 optimizedBody749_37

def optimizedBody749_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_20 optimizedBody749_38

def optimizedBody749_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_19 optimizedBody749_39

def optimizedBody749_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_18 optimizedBody749_40

def optimizedBody749_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_6 optimizedBody749_41

def optimizedBody749_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_17 optimizedBody749_42

def optimizedBody749_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_13 optimizedBody749_43

def optimizedBody749_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_12 optimizedBody749_44

def optimizedBody749_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_11 optimizedBody749_45

def optimizedBody749_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_10 optimizedBody749_46

def optimizedBody749_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_9 optimizedBody749_47

def optimizedBody749_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_8 optimizedBody749_48

def optimizedBody749_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_7 optimizedBody749_49

def optimizedBody749_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_6 optimizedBody749_50

def optimizedBody749_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_5 optimizedBody749_51

def optimizedBody749_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_0 optimizedBody749_52

def optimized749 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(749, 4, optimizedBody749_53)
end InitECandidate.Proofs.StackAnalysis
