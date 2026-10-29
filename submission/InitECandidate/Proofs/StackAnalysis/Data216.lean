import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody216_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody216_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 18446744073709551615#64)

def optimizedBody216_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 18446744073709551614#64)

def optimizedBody216_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 13451932020343611451#64)

def optimizedBody216_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 13822214165235122497#64)

def optimizedBody216_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody216_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 135) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody216_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody216_5 optimizedBody216_6

def optimizedBody216_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody216_4 optimizedBody216_7

def optimizedBody216_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody216_3 optimizedBody216_8

def optimizedBody216_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody216_2 optimizedBody216_9

def optimizedBody216_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody216_1 optimizedBody216_10

def optimizedBody216_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody216_0 optimizedBody216_11

def optimized216 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(216, 9, optimizedBody216_12)
end InitECandidate.Proofs.StackAnalysis
