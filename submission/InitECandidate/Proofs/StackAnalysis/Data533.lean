import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody533_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody533_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody533_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody533_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody533_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody533_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody533_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_4 optimizedBody533_5

def optimizedBody533_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody533_3, 533, 2)) (some 470) ([2]) (some (2, optimizedBody533_6, 533, 3))

def optimizedBody533_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody533_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody533_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody533_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody533_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody533_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody533_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody533_3, 533, 4)) (some 477) ([2]) (some (2, optimizedBody533_6, 533, 5))

def optimizedBody533_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody533_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody533_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody533_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_17 optimizedBody533_5

def optimizedBody533_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody533_16, 533, 6)) (some 490) ([2]) (some (2, optimizedBody533_18, 533, 7))

def optimizedBody533_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody533_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody533_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody533_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_21 optimizedBody533_22

def optimizedBody533_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_20 optimizedBody533_23

def optimizedBody533_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_8 optimizedBody533_24

def optimizedBody533_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_19 optimizedBody533_25

def optimizedBody533_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_4 optimizedBody533_26

def optimizedBody533_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_15 optimizedBody533_27

def optimizedBody533_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_8 optimizedBody533_28

def optimizedBody533_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_14 optimizedBody533_29

def optimizedBody533_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_4 optimizedBody533_30

def optimizedBody533_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_13 optimizedBody533_31

def optimizedBody533_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_12 optimizedBody533_32

def optimizedBody533_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_11 optimizedBody533_33

def optimizedBody533_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_10 optimizedBody533_34

def optimizedBody533_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_9 optimizedBody533_35

def optimizedBody533_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_8 optimizedBody533_36

def optimizedBody533_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_7 optimizedBody533_37

def optimizedBody533_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_2 optimizedBody533_38

def optimizedBody533_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_1 optimizedBody533_39

def optimizedBody533_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody533_0 optimizedBody533_40

def optimized533 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(533, 1, optimizedBody533_41)
end InitECandidate.Proofs.StackAnalysis
