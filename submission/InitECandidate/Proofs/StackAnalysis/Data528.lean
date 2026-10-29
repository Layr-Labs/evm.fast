import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody528_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody528_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody528_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody528_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody528_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody528_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody528_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_4 optimizedBody528_5

def optimizedBody528_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_3, 528, 2)) (some 470) ([2]) (some (2, optimizedBody528_6, 528, 3))

def optimizedBody528_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody528_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody528_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody528_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody528_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody528_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody528_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_3, 528, 4)) (some 477) ([2]) (some (2, optimizedBody528_6, 528, 5))

def optimizedBody528_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody528_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody528_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody528_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_17 optimizedBody528_5

def optimizedBody528_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_16, 528, 6)) (some 490) ([2]) (some (2, optimizedBody528_18, 528, 7))

def optimizedBody528_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody528_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody528_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody528_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_21 optimizedBody528_22

def optimizedBody528_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_20 optimizedBody528_23

def optimizedBody528_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_8 optimizedBody528_24

def optimizedBody528_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_19 optimizedBody528_25

def optimizedBody528_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_4 optimizedBody528_26

def optimizedBody528_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_15 optimizedBody528_27

def optimizedBody528_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_8 optimizedBody528_28

def optimizedBody528_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_14 optimizedBody528_29

def optimizedBody528_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_4 optimizedBody528_30

def optimizedBody528_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_13 optimizedBody528_31

def optimizedBody528_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_12 optimizedBody528_32

def optimizedBody528_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_11 optimizedBody528_33

def optimizedBody528_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_10 optimizedBody528_34

def optimizedBody528_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_9 optimizedBody528_35

def optimizedBody528_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_8 optimizedBody528_36

def optimizedBody528_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_7 optimizedBody528_37

def optimizedBody528_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_2 optimizedBody528_38

def optimizedBody528_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_1 optimizedBody528_39

def optimizedBody528_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_0 optimizedBody528_40

def optimized528 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(528, 1, optimizedBody528_41)
end InitECandidate.Proofs.StackAnalysis
