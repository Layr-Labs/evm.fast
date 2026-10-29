import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody563_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody563_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody563_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody563_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody563_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody563_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody563_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody563_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody563_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody563_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody563_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody563_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody563_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody563_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_11 optimizedBody563_12

def optimizedBody563_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody563_10, 563, 2)) (some 560) ([2, 4, 6]) (some (2, optimizedBody563_13, 563, 3))

def optimizedBody563_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody563_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody563_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody563_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody563_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_17 optimizedBody563_18

def optimizedBody563_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_16 optimizedBody563_19

def optimizedBody563_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_15 optimizedBody563_20

def optimizedBody563_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_14 optimizedBody563_21

def optimizedBody563_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_9 optimizedBody563_22

def optimizedBody563_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_8 optimizedBody563_23

def optimizedBody563_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_7 optimizedBody563_24

def optimizedBody563_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_6 optimizedBody563_25

def optimizedBody563_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_5 optimizedBody563_26

def optimizedBody563_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_4 optimizedBody563_27

def optimizedBody563_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_3 optimizedBody563_28

def optimizedBody563_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_2 optimizedBody563_29

def optimizedBody563_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_1 optimizedBody563_30

def optimizedBody563_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody563_0 optimizedBody563_31

def optimized563 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(563, 1, optimizedBody563_32)
end InitECandidate.Proofs.StackAnalysis
