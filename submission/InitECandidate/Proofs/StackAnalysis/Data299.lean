import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody299_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody299_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody299_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody299_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody299_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody299_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody299_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody299_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody299_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody299_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody299_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody299_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody299_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_5 optimizedBody299_11

def optimizedBody299_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_10 optimizedBody299_12

def optimizedBody299_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_9 optimizedBody299_13

def optimizedBody299_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_5 optimizedBody299_14

def optimizedBody299_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_8 optimizedBody299_15

def optimizedBody299_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_7 optimizedBody299_16

def optimizedBody299_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_5 optimizedBody299_17

def optimizedBody299_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_4 optimizedBody299_18

def optimizedBody299_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_3 optimizedBody299_19

def optimizedBody299_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_2 optimizedBody299_20

def optimizedBody299_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_6 optimizedBody299_21

def optimizedBody299_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_5 optimizedBody299_22

def optimizedBody299_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_4 optimizedBody299_23

def optimizedBody299_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_3 optimizedBody299_24

def optimizedBody299_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_2 optimizedBody299_25

def optimizedBody299_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_1 optimizedBody299_26

def optimizedBody299_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody299_0 optimizedBody299_27

def optimized299 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(299, 2, optimizedBody299_28)
end InitECandidate.Proofs.StackAnalysis
