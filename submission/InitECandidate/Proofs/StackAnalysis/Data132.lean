import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody132_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody132_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody132_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody132_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody132_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody132_5 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 2, 4, 6, 8]) (none)

def optimizedBody132_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_4 optimizedBody132_5

def optimizedBody132_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_3 optimizedBody132_6

def optimizedBody132_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (2, 2), (6, 6)]

def optimizedBody132_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 12) optimizedBody132_7 optimizedBody132_8

def optimizedBody132_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody132_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody132_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_10 optimizedBody132_11

def optimizedBody132_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_3 optimizedBody132_12

def optimizedBody132_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_3 optimizedBody132_13

def optimizedBody132_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_9 optimizedBody132_14

def optimizedBody132_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_2 optimizedBody132_15

def optimizedBody132_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_1 optimizedBody132_16

def optimizedBody132_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_0 optimizedBody132_17

def optimized132 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(132, 5, optimizedBody132_18)
end InitECandidate.Proofs.StackAnalysis
