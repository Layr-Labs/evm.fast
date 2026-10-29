import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody767_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0)]

def optimizedBody767_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 96#64))

def optimizedBody767_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody767_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 104#64))

def optimizedBody767_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 112#64))

def optimizedBody767_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 120#64))

def optimizedBody767_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 128#64))

def optimizedBody767_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 136#64))

def optimizedBody767_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody767_9 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 705) ([0, 2, 4, 6, 8, 10, 12]) (none)

def optimizedBody767_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_8 optimizedBody767_9

def optimizedBody767_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_7 optimizedBody767_10

def optimizedBody767_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_2 optimizedBody767_11

def optimizedBody767_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_6 optimizedBody767_12

def optimizedBody767_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_2 optimizedBody767_13

def optimizedBody767_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_5 optimizedBody767_14

def optimizedBody767_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_2 optimizedBody767_15

def optimizedBody767_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_4 optimizedBody767_16

def optimizedBody767_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_2 optimizedBody767_17

def optimizedBody767_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_3 optimizedBody767_18

def optimizedBody767_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_2 optimizedBody767_19

def optimizedBody767_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_1 optimizedBody767_20

def optimizedBody767_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody767_0 optimizedBody767_21

def optimized767 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(767, 2, optimizedBody767_22)
end InitECandidate.Proofs.StackAnalysis
