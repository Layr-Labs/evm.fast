import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody292_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (0, 0), (10, 2), (6, 6)]

def optimizedBody292_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody292_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (48, 8), (46, 4), (50, 10), (52, 6)]

def optimizedBody292_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (6, 46), (4, 50), (52, 52)]

def optimizedBody292_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (6, 46), (4, 50), (52, 52)]

def optimizedBody292_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody292_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_4 optimizedBody292_5

def optimizedBody292_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody292_3, 292, 2)) (some 68) ([2]) (some (2, optimizedBody292_6, 292, 3))

def optimizedBody292_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody292_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 6), (52, 52)]

def optimizedBody292_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody292_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody292_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_11 optimizedBody292_5

def optimizedBody292_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody292_10, 292, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody292_12, 292, 5))

def optimizedBody292_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody292_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody292_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def optimizedBody292_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody292_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody292_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_18 optimizedBody292_5

def optimizedBody292_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody292_17, 292, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody292_19, 292, 7))

def optimizedBody292_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody292_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody292_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_21 optimizedBody292_22

def optimizedBody292_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_8 optimizedBody292_23

def optimizedBody292_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_20 optimizedBody292_24

def optimizedBody292_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_16 optimizedBody292_25

def optimizedBody292_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_15 optimizedBody292_26

def optimizedBody292_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_14 optimizedBody292_27

def optimizedBody292_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_8 optimizedBody292_28

def optimizedBody292_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_13 optimizedBody292_29

def optimizedBody292_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_9 optimizedBody292_30

def optimizedBody292_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_8 optimizedBody292_31

def optimizedBody292_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_7 optimizedBody292_32

def optimizedBody292_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_2 optimizedBody292_33

def optimizedBody292_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_1 optimizedBody292_34

def optimizedBody292_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody292_0 optimizedBody292_35

def optimized292 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(292, 5, optimizedBody292_36)
end InitECandidate.Proofs.StackAnalysis
