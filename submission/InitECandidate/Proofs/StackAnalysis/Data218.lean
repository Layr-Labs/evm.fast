import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody218_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody218_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody218_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551614#64)

def optimizedBody218_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13451932020343611451#64)

def optimizedBody218_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13822214165235122495#64)

def optimizedBody218_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody218_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 217) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody218_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody218_5 optimizedBody218_6

def optimizedBody218_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody218_4 optimizedBody218_7

def optimizedBody218_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody218_3 optimizedBody218_8

def optimizedBody218_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody218_2 optimizedBody218_9

def optimizedBody218_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody218_1 optimizedBody218_10

def optimizedBody218_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody218_0 optimizedBody218_11

def optimized218 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(218, 5, optimizedBody218_12)
end InitECandidate.Proofs.StackAnalysis
