import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody647_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody647_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744069414584321#64)

def optimizedBody647_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody647_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4294967295#64)

def optimizedBody647_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744073709551615#64)

def optimizedBody647_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody647_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 210) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody647_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody647_5 optimizedBody647_6

def optimizedBody647_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody647_4 optimizedBody647_7

def optimizedBody647_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody647_3 optimizedBody647_8

def optimizedBody647_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody647_2 optimizedBody647_9

def optimizedBody647_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody647_1 optimizedBody647_10

def optimizedBody647_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody647_0 optimizedBody647_11

def optimized647 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(647, 5, optimizedBody647_12)
end InitECandidate.Proofs.StackAnalysis
