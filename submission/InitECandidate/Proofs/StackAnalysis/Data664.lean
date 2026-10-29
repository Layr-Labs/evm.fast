import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody664_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody664_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3486998266802970665#64)

def optimizedBody664_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13281191951274694749#64)

def optimizedBody664_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10917124144477883021#64)

def optimizedBody664_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4332616871279656263#64)

def optimizedBody664_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody664_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (8, 8), (4, 4), (6, 6), (0, 44)]

def optimizedBody664_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody664_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody664_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_7 optimizedBody664_8

def optimizedBody664_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody664_6, 664, 2)) (some 210) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody664_9, 664, 3))

def optimizedBody664_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody664_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody664_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2377177743836652868#64)

def optimizedBody664_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 17257524443456604923#64)

def optimizedBody664_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 7129779742913871286#64)

def optimizedBody664_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 12812017116984455391#64)

def optimizedBody664_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody664_18 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 661) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody664_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_17 optimizedBody664_18

def optimizedBody664_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_16 optimizedBody664_19

def optimizedBody664_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_15 optimizedBody664_20

def optimizedBody664_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_14 optimizedBody664_21

def optimizedBody664_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_13 optimizedBody664_22

def optimizedBody664_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_12 optimizedBody664_23

def optimizedBody664_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_11 optimizedBody664_24

def optimizedBody664_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_10 optimizedBody664_25

def optimizedBody664_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_5 optimizedBody664_26

def optimizedBody664_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_4 optimizedBody664_27

def optimizedBody664_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_3 optimizedBody664_28

def optimizedBody664_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_2 optimizedBody664_29

def optimizedBody664_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_1 optimizedBody664_30

def optimizedBody664_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody664_0 optimizedBody664_31

def optimized664 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(664, 5, optimizedBody664_32)
end InitECandidate.Proofs.StackAnalysis
