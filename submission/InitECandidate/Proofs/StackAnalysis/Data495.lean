import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody495_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody495_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody495_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody495_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody495_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_2 optimizedBody495_3

def optimizedBody495_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody495_1, 495, 2)) (some 493) ([2]) (some (2, optimizedBody495_4, 495, 3))

def optimizedBody495_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody495_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody495_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody495_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody495_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody495_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody495_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_10 optimizedBody495_11

def optimizedBody495_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_9 optimizedBody495_12

def optimizedBody495_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_6 optimizedBody495_13

def optimizedBody495_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody495_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody495_14 optimizedBody495_15

def optimizedBody495_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody495_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_17 optimizedBody495_12

def optimizedBody495_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_6 optimizedBody495_18

def optimizedBody495_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_6 optimizedBody495_19

def optimizedBody495_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_16 optimizedBody495_20

def optimizedBody495_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_8 optimizedBody495_21

def optimizedBody495_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_7 optimizedBody495_22

def optimizedBody495_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_6 optimizedBody495_23

def optimizedBody495_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_5 optimizedBody495_24

def optimizedBody495_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody495_0 optimizedBody495_25

def optimized495 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(495, 2, optimizedBody495_26)
end InitECandidate.Proofs.StackAnalysis
