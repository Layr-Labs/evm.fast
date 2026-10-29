import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody678_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 4), (0, 0)]

def optimizedBody678_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody678_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 0)]

def optimizedBody678_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody678_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody678_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody678_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_4 optimizedBody678_5

def optimizedBody678_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody678_3, 678, 2)) (some 78) ([2, 4]) (some (2, optimizedBody678_6, 678, 3))

def optimizedBody678_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody678_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody678_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody678_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody678_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_10 optimizedBody678_11

def optimizedBody678_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_9 optimizedBody678_12

def optimizedBody678_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_8 optimizedBody678_13

def optimizedBody678_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_7 optimizedBody678_14

def optimizedBody678_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_2 optimizedBody678_15

def optimizedBody678_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_1 optimizedBody678_16

def optimizedBody678_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody678_0 optimizedBody678_17

def optimized678 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(678, 3, optimizedBody678_18)
end InitECandidate.Proofs.StackAnalysis
