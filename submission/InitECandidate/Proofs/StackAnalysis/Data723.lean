import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody723_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0)]

def optimizedBody723_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody723_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody723_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody723_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_2 optimizedBody723_3

def optimizedBody723_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody723_1, 723, 2)) (some 717) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody723_4, 723, 3))

def optimizedBody723_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody723_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody723_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody723_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody723_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody723_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_9 optimizedBody723_10

def optimizedBody723_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_8 optimizedBody723_11

def optimizedBody723_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_7 optimizedBody723_12

def optimizedBody723_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_13

def optimizedBody723_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_5 optimizedBody723_14

def optimizedBody723_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_0 optimizedBody723_15

def optimized723 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(723, 7, optimizedBody723_16)
end InitECandidate.Proofs.StackAnalysis
