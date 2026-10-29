import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody298_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody298_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 176#64)

def optimizedBody298_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody298_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody298_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody298_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody298_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_4 optimizedBody298_5

def optimizedBody298_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody298_3, 298, 2)) (some 68) ([2]) (some (2, optimizedBody298_6, 298, 3))

def optimizedBody298_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody298_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody298_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 176#64)

def optimizedBody298_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody298_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody298_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody298_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_13 optimizedBody298_5

def optimizedBody298_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody298_12, 298, 4)) (some 78) ([2, 4]) (some (2, optimizedBody298_14, 298, 5))

def optimizedBody298_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody298_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody298_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody298_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody298_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_9 optimizedBody298_19

def optimizedBody298_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_18 optimizedBody298_20

def optimizedBody298_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_16 optimizedBody298_21

def optimizedBody298_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_17 optimizedBody298_22

def optimizedBody298_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_16 optimizedBody298_23

def optimizedBody298_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_8 optimizedBody298_24

def optimizedBody298_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_15 optimizedBody298_25

def optimizedBody298_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_11 optimizedBody298_26

def optimizedBody298_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_10 optimizedBody298_27

def optimizedBody298_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_9 optimizedBody298_28

def optimizedBody298_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_8 optimizedBody298_29

def optimizedBody298_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_7 optimizedBody298_30

def optimizedBody298_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_2 optimizedBody298_31

def optimizedBody298_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_1 optimizedBody298_32

def optimizedBody298_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody298_0 optimizedBody298_33

def optimized298 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(298, 1, optimizedBody298_34)
end InitECandidate.Proofs.StackAnalysis
