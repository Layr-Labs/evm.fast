import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody213_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody213_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody213_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody213_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody213_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744069414583343#64)

def optimizedBody213_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody213_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 210) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody213_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody213_5 optimizedBody213_6

def optimizedBody213_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody213_4 optimizedBody213_7

def optimizedBody213_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody213_3 optimizedBody213_8

def optimizedBody213_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody213_2 optimizedBody213_9

def optimizedBody213_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody213_1 optimizedBody213_10

def optimizedBody213_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody213_0 optimizedBody213_11

def optimized213 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(213, 5, optimizedBody213_12)
end InitECandidate.Proofs.StackAnalysis
