import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody717_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody717_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody717_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody717_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody717_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody717_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody717_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def optimizedBody717_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody717_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody717_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_7 optimizedBody717_8

def optimizedBody717_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_6 optimizedBody717_9

def optimizedBody717_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_5 optimizedBody717_10

def optimizedBody717_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_4 optimizedBody717_11

def optimizedBody717_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_3 optimizedBody717_12

def optimizedBody717_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_2 optimizedBody717_13

def optimizedBody717_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_1 optimizedBody717_14

def optimizedBody717_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_0 optimizedBody717_15

def optimized717 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(717, 7, optimizedBody717_16)
end InitECandidate.Proofs.StackAnalysis
