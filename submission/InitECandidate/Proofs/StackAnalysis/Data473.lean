import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody473_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody473_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody473_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody473_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 192#64))

def optimizedBody473_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody473_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody473_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody473_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody473_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody473_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody473_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_2 optimizedBody473_9

def optimizedBody473_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_8 optimizedBody473_10

def optimizedBody473_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_7 optimizedBody473_11

def optimizedBody473_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_6 optimizedBody473_12

def optimizedBody473_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_2 optimizedBody473_13

def optimizedBody473_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_5 optimizedBody473_14

def optimizedBody473_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_4 optimizedBody473_15

def optimizedBody473_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_3 optimizedBody473_16

def optimizedBody473_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_2 optimizedBody473_17

def optimizedBody473_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_1 optimizedBody473_18

def optimizedBody473_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_0 optimizedBody473_19

def optimized473 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(473, 2, optimizedBody473_20)
end InitECandidate.Proofs.StackAnalysis
