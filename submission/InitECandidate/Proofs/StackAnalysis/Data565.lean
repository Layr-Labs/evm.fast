import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody565_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody565_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody565_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody565_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody565_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_2 optimizedBody565_3

def optimizedBody565_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody565_1, 565, 2)) (some 407) ([2]) (some (2, optimizedBody565_4, 565, 3))

def optimizedBody565_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody565_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody565_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody565_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody565_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (0, 44)]

def optimizedBody565_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody565_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_11 optimizedBody565_3

def optimizedBody565_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody565_10, 565, 4)) (some 408) ([2, 4]) (some (2, optimizedBody565_12, 565, 5))

def optimizedBody565_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody565_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody565_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_14 optimizedBody565_15

def optimizedBody565_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_6 optimizedBody565_16

def optimizedBody565_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_13 optimizedBody565_17

def optimizedBody565_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_9 optimizedBody565_18

def optimizedBody565_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_8 optimizedBody565_19

def optimizedBody565_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_7 optimizedBody565_20

def optimizedBody565_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_6 optimizedBody565_21

def optimizedBody565_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_5 optimizedBody565_22

def optimizedBody565_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody565_0 optimizedBody565_23

def optimized565 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(565, 2, optimizedBody565_24)
end InitECandidate.Proofs.StackAnalysis
