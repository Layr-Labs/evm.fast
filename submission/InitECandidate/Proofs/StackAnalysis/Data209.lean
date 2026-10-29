import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody209_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody209_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody209_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody209_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody209_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744069414583341#64)

def optimizedBody209_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody209_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 208) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody209_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody209_5 optimizedBody209_6

def optimizedBody209_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody209_4 optimizedBody209_7

def optimizedBody209_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody209_3 optimizedBody209_8

def optimizedBody209_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody209_2 optimizedBody209_9

def optimizedBody209_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody209_1 optimizedBody209_10

def optimizedBody209_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody209_0 optimizedBody209_11

def optimized209 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(209, 5, optimizedBody209_12)
end InitECandidate.Proofs.StackAnalysis
