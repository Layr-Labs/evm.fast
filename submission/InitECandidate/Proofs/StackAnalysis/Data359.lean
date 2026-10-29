import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody359_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody359_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody359_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody359_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody359_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody359_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody359_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody359_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody359_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_3 optimizedBody359_7

def optimizedBody359_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_6 optimizedBody359_8

def optimizedBody359_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_5 optimizedBody359_9

def optimizedBody359_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_4 optimizedBody359_10

def optimizedBody359_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_3 optimizedBody359_11

def optimizedBody359_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_2 optimizedBody359_12

def optimizedBody359_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody359_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody359_13 optimizedBody359_14

def optimizedBody359_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody359_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody359_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody359_19 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def optimizedBody359_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_18 optimizedBody359_19

def optimizedBody359_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_17 optimizedBody359_20

def optimizedBody359_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_16 optimizedBody359_21

def optimizedBody359_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_2 optimizedBody359_22

def optimizedBody359_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_2 optimizedBody359_23

def optimizedBody359_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_15 optimizedBody359_24

def optimizedBody359_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_1 optimizedBody359_25

def optimizedBody359_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_0 optimizedBody359_26

def optimized359 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(359, 3, optimizedBody359_27)
end InitECandidate.Proofs.StackAnalysis
