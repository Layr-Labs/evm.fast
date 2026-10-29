import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody855_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody855_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody855_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody855_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody855_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody855_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody855_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody855_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_5 optimizedBody855_6

def optimizedBody855_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_4 optimizedBody855_7

def optimizedBody855_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_3 optimizedBody855_8

def optimizedBody855_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody855_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody855_9 optimizedBody855_10

def optimizedBody855_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody855_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_12 optimizedBody855_7

def optimizedBody855_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_3 optimizedBody855_13

def optimizedBody855_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_3 optimizedBody855_14

def optimizedBody855_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_11 optimizedBody855_15

def optimizedBody855_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_2 optimizedBody855_16

def optimizedBody855_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_1 optimizedBody855_17

def optimizedBody855_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody855_0 optimizedBody855_18

def optimized855 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(855, 2, optimizedBody855_19)
end InitECandidate.Proofs.StackAnalysis
