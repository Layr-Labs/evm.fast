import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody562_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody562_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody562_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody562_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody562_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody562_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody562_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_4 optimizedBody562_5

def optimizedBody562_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody562_3, 562, 2)) (some 470) ([2]) (some (2, optimizedBody562_6, 562, 3))

def optimizedBody562_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody562_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody562_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody562_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody562_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody562_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody562_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody562_3, 562, 4)) (some 477) ([2]) (some (2, optimizedBody562_6, 562, 5))

def optimizedBody562_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody562_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody562_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody562_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_17 optimizedBody562_5

def optimizedBody562_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody562_16, 562, 6)) (some 490) ([2]) (some (2, optimizedBody562_18, 562, 7))

def optimizedBody562_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody562_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody562_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody562_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_21 optimizedBody562_22

def optimizedBody562_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_20 optimizedBody562_23

def optimizedBody562_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_8 optimizedBody562_24

def optimizedBody562_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_19 optimizedBody562_25

def optimizedBody562_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_4 optimizedBody562_26

def optimizedBody562_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_15 optimizedBody562_27

def optimizedBody562_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_8 optimizedBody562_28

def optimizedBody562_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_14 optimizedBody562_29

def optimizedBody562_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_4 optimizedBody562_30

def optimizedBody562_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_13 optimizedBody562_31

def optimizedBody562_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_12 optimizedBody562_32

def optimizedBody562_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_11 optimizedBody562_33

def optimizedBody562_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_10 optimizedBody562_34

def optimizedBody562_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_9 optimizedBody562_35

def optimizedBody562_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_8 optimizedBody562_36

def optimizedBody562_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_7 optimizedBody562_37

def optimizedBody562_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_2 optimizedBody562_38

def optimizedBody562_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_1 optimizedBody562_39

def optimizedBody562_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody562_0 optimizedBody562_40

def optimized562 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(562, 1, optimizedBody562_41)
end InitECandidate.Proofs.StackAnalysis
