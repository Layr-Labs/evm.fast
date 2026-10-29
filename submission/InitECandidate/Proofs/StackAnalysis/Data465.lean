import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody465_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody465_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody465_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody465_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody465_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_2 optimizedBody465_3

def optimizedBody465_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody465_1, 465, 2)) (some 464) ([2]) (some (2, optimizedBody465_4, 465, 3))

def optimizedBody465_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody465_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody465_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody465_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody465_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody465_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_9 optimizedBody465_10

def optimizedBody465_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_8 optimizedBody465_11

def optimizedBody465_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_7 optimizedBody465_12

def optimizedBody465_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_6 optimizedBody465_13

def optimizedBody465_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_5 optimizedBody465_14

def optimizedBody465_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody465_0 optimizedBody465_15

def optimized465 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(465, 2, optimizedBody465_16)
end InitECandidate.Proofs.StackAnalysis
