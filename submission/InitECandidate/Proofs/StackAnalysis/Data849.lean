import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody849_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody849_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody849_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody849_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody849_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_3

def optimizedBody849_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_1, 849, 2)) (some 187) ([2, 4]) (some (2, optimizedBody849_4, 849, 3))

def optimizedBody849_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody849_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody849_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody849_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody849_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody849_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody849_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody849_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody849_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody849_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_13 optimizedBody849_14

def optimizedBody849_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_12 optimizedBody849_15

def optimizedBody849_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_11 optimizedBody849_16

def optimizedBody849_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_10 optimizedBody849_17

def optimizedBody849_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_9 optimizedBody849_18

def optimizedBody849_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_6 optimizedBody849_19

def optimizedBody849_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody849_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody849_20 optimizedBody849_21

def optimizedBody849_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6)]

def optimizedBody849_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody849_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody849_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_25 optimizedBody849_3

def optimizedBody849_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_24, 849, 4)) (some 399) ([2]) (some (2, optimizedBody849_26, 849, 5))

def optimizedBody849_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody849_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody849_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_28 optimizedBody849_29

def optimizedBody849_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_6 optimizedBody849_30

def optimizedBody849_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_27 optimizedBody849_31

def optimizedBody849_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_23 optimizedBody849_32

def optimizedBody849_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_6 optimizedBody849_33

def optimizedBody849_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_6 optimizedBody849_34

def optimizedBody849_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_35

def optimizedBody849_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_8 optimizedBody849_36

def optimizedBody849_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_7 optimizedBody849_37

def optimizedBody849_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_6 optimizedBody849_38

def optimizedBody849_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_5 optimizedBody849_39

def optimizedBody849_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_0 optimizedBody849_40

def optimized849 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(849, 3, optimizedBody849_41)
end InitECandidate.Proofs.StackAnalysis
