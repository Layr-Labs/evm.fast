import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody856_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody856_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody856_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody856_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody856_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody856_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody856_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody856_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_6

def optimizedBody856_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_4 optimizedBody856_7

def optimizedBody856_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_3 optimizedBody856_8

def optimizedBody856_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody856_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody856_9 optimizedBody856_10

def optimizedBody856_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody856_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_12 optimizedBody856_7

def optimizedBody856_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_3 optimizedBody856_13

def optimizedBody856_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_3 optimizedBody856_14

def optimizedBody856_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_11 optimizedBody856_15

def optimizedBody856_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_2 optimizedBody856_16

def optimizedBody856_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_1 optimizedBody856_17

def optimizedBody856_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_0 optimizedBody856_18

def optimized856 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(856, 2, optimizedBody856_19)
end InitECandidate.Proofs.StackAnalysis
