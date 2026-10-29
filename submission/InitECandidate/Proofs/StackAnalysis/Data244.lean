import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody244_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (0, 0), (6, 2)]

def optimizedBody244_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody244_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 6)]

def optimizedBody244_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody244_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody244_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody244_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_4 optimizedBody244_5

def optimizedBody244_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody244_3, 244, 2)) (some 78) ([2, 4]) (some (2, optimizedBody244_6, 244, 3))

def optimizedBody244_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody244_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody244_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody244_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody244_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody244_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody244_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_13 optimizedBody244_5

def optimizedBody244_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody244_12, 244, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody244_14, 244, 5))

def optimizedBody244_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody244_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody244_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody244_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_17 optimizedBody244_18

def optimizedBody244_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_16 optimizedBody244_19

def optimizedBody244_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_8 optimizedBody244_20

def optimizedBody244_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_15 optimizedBody244_21

def optimizedBody244_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_11 optimizedBody244_22

def optimizedBody244_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_10 optimizedBody244_23

def optimizedBody244_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_9 optimizedBody244_24

def optimizedBody244_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_8 optimizedBody244_25

def optimizedBody244_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_7 optimizedBody244_26

def optimizedBody244_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_2 optimizedBody244_27

def optimizedBody244_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_1 optimizedBody244_28

def optimizedBody244_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody244_0 optimizedBody244_29

def optimized244 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(244, 3, optimizedBody244_30)
end InitECandidate.Proofs.StackAnalysis
