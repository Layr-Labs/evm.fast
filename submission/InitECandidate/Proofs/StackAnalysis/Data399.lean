import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody399_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody399_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody399_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody399_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody399_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_2 optimizedBody399_3

def optimizedBody399_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody399_1, 399, 2)) (some 398) ([2]) (some (2, optimizedBody399_4, 399, 3))

def optimizedBody399_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody399_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody399_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody399_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody399_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody399_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody399_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551488#64))

def optimizedBody399_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody399_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody399_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_13 optimizedBody399_14

def optimizedBody399_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_12 optimizedBody399_15

def optimizedBody399_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_11 optimizedBody399_16

def optimizedBody399_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_10 optimizedBody399_17

def optimizedBody399_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_9 optimizedBody399_18

def optimizedBody399_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_6 optimizedBody399_19

def optimizedBody399_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody399_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody399_20 optimizedBody399_21

def optimizedBody399_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody399_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_23 optimizedBody399_15

def optimizedBody399_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_7 optimizedBody399_24

def optimizedBody399_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_6 optimizedBody399_25

def optimizedBody399_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_6 optimizedBody399_26

def optimizedBody399_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_22 optimizedBody399_27

def optimizedBody399_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_8 optimizedBody399_28

def optimizedBody399_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_7 optimizedBody399_29

def optimizedBody399_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_6 optimizedBody399_30

def optimizedBody399_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_5 optimizedBody399_31

def optimizedBody399_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody399_0 optimizedBody399_32

def optimized399 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(399, 2, optimizedBody399_33)
end InitECandidate.Proofs.StackAnalysis
