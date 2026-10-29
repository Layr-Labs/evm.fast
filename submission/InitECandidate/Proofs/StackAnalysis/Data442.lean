import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody442_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody442_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody442_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody442_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody442_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_2 optimizedBody442_3

def optimizedBody442_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody442_1, 442, 2)) (some 439) ([2]) (some (2, optimizedBody442_4, 442, 3))

def optimizedBody442_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody442_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody442_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody442_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody442_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody442_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody442_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody442_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody442_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_13 optimizedBody442_3

def optimizedBody442_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody442_12, 442, 4)) (some 192) ([2, 4, 6]) (some (2, optimizedBody442_14, 442, 5))

def optimizedBody442_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody442_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody442_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody442_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_17 optimizedBody442_18

def optimizedBody442_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_16 optimizedBody442_19

def optimizedBody442_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_6 optimizedBody442_20

def optimizedBody442_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_15 optimizedBody442_21

def optimizedBody442_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_11 optimizedBody442_22

def optimizedBody442_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_10 optimizedBody442_23

def optimizedBody442_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_9 optimizedBody442_24

def optimizedBody442_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_8 optimizedBody442_25

def optimizedBody442_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_7 optimizedBody442_26

def optimizedBody442_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_6 optimizedBody442_27

def optimizedBody442_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_5 optimizedBody442_28

def optimizedBody442_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody442_0 optimizedBody442_29

def optimized442 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(442, 3, optimizedBody442_30)
end InitECandidate.Proofs.StackAnalysis
