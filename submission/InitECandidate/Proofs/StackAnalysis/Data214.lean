import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody214_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody214_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 4611686018427387903#64)

def optimizedBody214_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody214_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody214_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744072635809548#64)

def optimizedBody214_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody214_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 208) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody214_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_5 optimizedBody214_6

def optimizedBody214_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_4 optimizedBody214_7

def optimizedBody214_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_3 optimizedBody214_8

def optimizedBody214_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_2 optimizedBody214_9

def optimizedBody214_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_1 optimizedBody214_10

def optimizedBody214_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody214_0 optimizedBody214_11

def optimized214 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(214, 5, optimizedBody214_12)
end InitECandidate.Proofs.StackAnalysis
