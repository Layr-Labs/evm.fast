import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody369_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0), (6, 4)]

def optimizedBody369_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 384#64))

def optimizedBody369_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody369_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 392#64))

def optimizedBody369_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody369_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody369_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody369_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody369_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_7

def optimizedBody369_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_5, 369, 2)) (some 158) ([2, 4, 6]) (some (2, optimizedBody369_8, 369, 3))

def optimizedBody369_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody369_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody369_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody369_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody369_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_12 optimizedBody369_13

def optimizedBody369_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_11 optimizedBody369_14

def optimizedBody369_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_10 optimizedBody369_15

def optimizedBody369_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_9 optimizedBody369_16

def optimizedBody369_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_4 optimizedBody369_17

def optimizedBody369_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_3 optimizedBody369_18

def optimizedBody369_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_2 optimizedBody369_19

def optimizedBody369_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_1 optimizedBody369_20

def optimizedBody369_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_0 optimizedBody369_21

def optimized369 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(369, 3, optimizedBody369_22)
end InitECandidate.Proofs.StackAnalysis
