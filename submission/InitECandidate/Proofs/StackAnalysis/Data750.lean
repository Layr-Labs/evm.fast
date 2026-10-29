import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody750_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4), (48, 2), (50, 6)]

def optimizedBody750_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (10, 50)]

def optimizedBody750_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (10, 50)]

def optimizedBody750_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody750_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_2 optimizedBody750_3

def optimizedBody750_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_1, 750, 2)) (some 735) ([2, 4, 6]) (some (2, optimizedBody750_4, 750, 3))

def optimizedBody750_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody750_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody750_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody750_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody750_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody750_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody750_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody750_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody750_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody750_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody750_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_15 optimizedBody750_3

def optimizedBody750_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_14, 750, 4)) (some 735) ([2, 4, 6]) (some (2, optimizedBody750_16, 750, 5))

def optimizedBody750_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody750_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody750_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody750_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody750_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody750_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody750_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody750_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody750_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_25 optimizedBody750_3

def optimizedBody750_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_24, 750, 6)) (some 735) ([2, 4, 6]) (some (2, optimizedBody750_26, 750, 7))

def optimizedBody750_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody750_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody750_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody750_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_29 optimizedBody750_30

def optimizedBody750_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_28 optimizedBody750_31

def optimizedBody750_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_32

def optimizedBody750_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_27 optimizedBody750_33

def optimizedBody750_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_23 optimizedBody750_34

def optimizedBody750_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_22 optimizedBody750_35

def optimizedBody750_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_9 optimizedBody750_36

def optimizedBody750_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_21 optimizedBody750_37

def optimizedBody750_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_20 optimizedBody750_38

def optimizedBody750_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_19 optimizedBody750_39

def optimizedBody750_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_18 optimizedBody750_40

def optimizedBody750_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_41

def optimizedBody750_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_17 optimizedBody750_42

def optimizedBody750_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_13 optimizedBody750_43

def optimizedBody750_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_12 optimizedBody750_44

def optimizedBody750_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_11 optimizedBody750_45

def optimizedBody750_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_10 optimizedBody750_46

def optimizedBody750_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_9 optimizedBody750_47

def optimizedBody750_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_8 optimizedBody750_48

def optimizedBody750_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_7 optimizedBody750_49

def optimizedBody750_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_50

def optimizedBody750_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_5 optimizedBody750_51

def optimizedBody750_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_0 optimizedBody750_52

def optimized750 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(750, 4, optimizedBody750_53)
end InitECandidate.Proofs.StackAnalysis
