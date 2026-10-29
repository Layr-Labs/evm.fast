import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody716_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody716_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1267921511277847466#64)

def optimizedBody716_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 11130996698012816685#64)

def optimizedBody716_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7488229067341005760#64)

def optimizedBody716_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 10224657059481499349#64)

def optimizedBody716_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 754043588434789617#64)

def optimizedBody716_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 17644856173732828998#64)

def optimizedBody716_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody716_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody716_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_7 optimizedBody716_8

def optimizedBody716_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_6 optimizedBody716_9

def optimizedBody716_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_5 optimizedBody716_10

def optimizedBody716_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_4 optimizedBody716_11

def optimizedBody716_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_3 optimizedBody716_12

def optimizedBody716_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_2 optimizedBody716_13

def optimizedBody716_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_14

def optimizedBody716_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_0 optimizedBody716_15

def optimized716 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(716, 7, optimizedBody716_16)
end InitECandidate.Proofs.StackAnalysis
