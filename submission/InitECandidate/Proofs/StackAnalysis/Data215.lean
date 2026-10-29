import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody215_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody215_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 18446744073709551615#64)

def optimizedBody215_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 18446744073709551614#64)

def optimizedBody215_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 13451932020343611451#64)

def optimizedBody215_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 13822214165235122497#64)

def optimizedBody215_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody215_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 136) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody215_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_5 optimizedBody215_6

def optimizedBody215_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_4 optimizedBody215_7

def optimizedBody215_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_3 optimizedBody215_8

def optimizedBody215_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_2 optimizedBody215_9

def optimizedBody215_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_1 optimizedBody215_10

def optimizedBody215_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_0 optimizedBody215_11

def optimized215 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(215, 9, optimizedBody215_12)
end InitECandidate.Proofs.StackAnalysis
