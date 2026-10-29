import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody419_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2), (6, 4)]

def optimizedBody419_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody419_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody419_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody419_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody419_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody419_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody419_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody419_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody419_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody419_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_8 optimizedBody419_9

def optimizedBody419_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody419_7, 419, 2)) (some 388) ([2, 4, 6]) (some (2, optimizedBody419_10, 419, 3))

def optimizedBody419_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody419_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody419_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody419_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody419_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_14 optimizedBody419_15

def optimizedBody419_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_13 optimizedBody419_16

def optimizedBody419_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_12 optimizedBody419_17

def optimizedBody419_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_11 optimizedBody419_18

def optimizedBody419_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_6 optimizedBody419_19

def optimizedBody419_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_5 optimizedBody419_20

def optimizedBody419_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_4 optimizedBody419_21

def optimizedBody419_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_3 optimizedBody419_22

def optimizedBody419_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_2 optimizedBody419_23

def optimizedBody419_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_1 optimizedBody419_24

def optimizedBody419_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_0 optimizedBody419_25

def optimized419 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(419, 3, optimizedBody419_26)
end InitECandidate.Proofs.StackAnalysis
