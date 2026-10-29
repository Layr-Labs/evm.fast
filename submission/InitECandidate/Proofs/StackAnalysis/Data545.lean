import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody545_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody545_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody545_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody545_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody545_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody545_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody545_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody545_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_5 optimizedBody545_6

def optimizedBody545_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody545_4, 545, 2)) (some 437) ([2, 4]) (some (2, optimizedBody545_7, 545, 3))

def optimizedBody545_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody545_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody545_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody545_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody545_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody545_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody545_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_13 optimizedBody545_14

def optimizedBody545_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_12 optimizedBody545_15

def optimizedBody545_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_11 optimizedBody545_16

def optimizedBody545_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_10 optimizedBody545_17

def optimizedBody545_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_9 optimizedBody545_18

def optimizedBody545_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_19

def optimizedBody545_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_3 optimizedBody545_20

def optimizedBody545_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_2 optimizedBody545_21

def optimizedBody545_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_1 optimizedBody545_22

def optimizedBody545_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_0 optimizedBody545_23

def optimized545 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(545, 3, optimizedBody545_24)
end InitECandidate.Proofs.StackAnalysis
