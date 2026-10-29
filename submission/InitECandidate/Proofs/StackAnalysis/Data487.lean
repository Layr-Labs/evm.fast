import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody487_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody487_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 176#64)

def optimizedBody487_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody487_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody487_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody487_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody487_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_4 optimizedBody487_5

def optimizedBody487_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody487_3, 487, 2)) (some 68) ([2]) (some (2, optimizedBody487_6, 487, 3))

def optimizedBody487_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody487_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody487_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 176#64)

def optimizedBody487_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody487_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody487_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody487_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_13 optimizedBody487_5

def optimizedBody487_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody487_12, 487, 4)) (some 78) ([2, 4]) (some (2, optimizedBody487_14, 487, 5))

def optimizedBody487_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody487_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody487_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_16 optimizedBody487_17

def optimizedBody487_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_8 optimizedBody487_18

def optimizedBody487_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_15 optimizedBody487_19

def optimizedBody487_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_11 optimizedBody487_20

def optimizedBody487_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_10 optimizedBody487_21

def optimizedBody487_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_9 optimizedBody487_22

def optimizedBody487_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_8 optimizedBody487_23

def optimizedBody487_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_7 optimizedBody487_24

def optimizedBody487_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_2 optimizedBody487_25

def optimizedBody487_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_1 optimizedBody487_26

def optimizedBody487_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody487_0 optimizedBody487_27

def optimized487 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(487, 1, optimizedBody487_28)
end InitECandidate.Proofs.StackAnalysis
