import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody219_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody219_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody219_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551614#64)

def optimizedBody219_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13451932020343611451#64)

def optimizedBody219_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13822214165235122497#64)

def optimizedBody219_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody219_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 210) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody219_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody219_5 optimizedBody219_6

def optimizedBody219_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody219_4 optimizedBody219_7

def optimizedBody219_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody219_3 optimizedBody219_8

def optimizedBody219_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody219_2 optimizedBody219_9

def optimizedBody219_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody219_1 optimizedBody219_10

def optimizedBody219_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody219_0 optimizedBody219_11

def optimized219 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(219, 5, optimizedBody219_12)
end InitECandidate.Proofs.StackAnalysis
