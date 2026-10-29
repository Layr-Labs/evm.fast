import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody548_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody548_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody548_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody548_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody548_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_2 optimizedBody548_3

def optimizedBody548_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_1, 548, 2)) (some 392) ([2, 4]) (some (2, optimizedBody548_4, 548, 3))

def optimizedBody548_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody548_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody548_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody548_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody548_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody548_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody548_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody548_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody548_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody548_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody548_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody548_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_16 optimizedBody548_3

def optimizedBody548_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_15, 548, 4)) (some 192) ([2, 4, 6]) (some (2, optimizedBody548_17, 548, 5))

def optimizedBody548_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody548_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody548_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody548_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_20 optimizedBody548_21

def optimizedBody548_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_19 optimizedBody548_22

def optimizedBody548_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_23

def optimizedBody548_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_18 optimizedBody548_24

def optimizedBody548_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_14 optimizedBody548_25

def optimizedBody548_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_13 optimizedBody548_26

def optimizedBody548_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_12 optimizedBody548_27

def optimizedBody548_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_11 optimizedBody548_28

def optimizedBody548_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_10 optimizedBody548_29

def optimizedBody548_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_9 optimizedBody548_30

def optimizedBody548_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_8 optimizedBody548_31

def optimizedBody548_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_7 optimizedBody548_32

def optimizedBody548_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_33

def optimizedBody548_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_5 optimizedBody548_34

def optimizedBody548_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_0 optimizedBody548_35

def optimized548 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(548, 3, optimizedBody548_36)
end InitECandidate.Proofs.StackAnalysis
