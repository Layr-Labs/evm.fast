import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody663_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody663_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody663_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody663_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody663_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody663_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody663_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 661) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody663_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody663_5 optimizedBody663_6

def optimizedBody663_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody663_4 optimizedBody663_7

def optimizedBody663_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody663_3 optimizedBody663_8

def optimizedBody663_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody663_2 optimizedBody663_9

def optimizedBody663_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody663_1 optimizedBody663_10

def optimizedBody663_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody663_0 optimizedBody663_11

def optimized663 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(663, 5, optimizedBody663_12)
end InitECandidate.Proofs.StackAnalysis
