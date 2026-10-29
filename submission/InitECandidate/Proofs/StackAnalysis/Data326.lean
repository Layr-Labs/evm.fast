import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody326_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody326_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody326_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody326_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody326_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody326_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody326_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody326_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody326_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_7

def optimizedBody326_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_5 optimizedBody326_8

def optimizedBody326_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_4 optimizedBody326_9

def optimizedBody326_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_4 optimizedBody326_7

def optimizedBody326_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody326_10 optimizedBody326_11

def optimizedBody326_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody326_14 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 179) ([0, 2, 4]) (none)

def optimizedBody326_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_13 optimizedBody326_14

def optimizedBody326_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_4 optimizedBody326_15

def optimizedBody326_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_12 optimizedBody326_16

def optimizedBody326_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_3 optimizedBody326_17

def optimizedBody326_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_2 optimizedBody326_18

def optimizedBody326_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_1 optimizedBody326_19

def optimizedBody326_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_0 optimizedBody326_20

def optimized326 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(326, 3, optimizedBody326_21)
end InitECandidate.Proofs.StackAnalysis
