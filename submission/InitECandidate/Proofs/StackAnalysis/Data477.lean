import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody477_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody477_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody477_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody477_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody477_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0)]

def optimizedBody477_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody477_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody477_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody477_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_6 optimizedBody477_7

def optimizedBody477_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody477_5, 477, 2)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody477_8, 477, 3))

def optimizedBody477_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody477_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody477_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody477_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody477_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_12 optimizedBody477_13

def optimizedBody477_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_11 optimizedBody477_14

def optimizedBody477_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_10 optimizedBody477_15

def optimizedBody477_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_9 optimizedBody477_16

def optimizedBody477_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_4 optimizedBody477_17

def optimizedBody477_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_3 optimizedBody477_18

def optimizedBody477_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_2 optimizedBody477_19

def optimizedBody477_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_1 optimizedBody477_20

def optimizedBody477_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody477_0 optimizedBody477_21

def optimized477 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(477, 2, optimizedBody477_22)
end InitECandidate.Proofs.StackAnalysis
