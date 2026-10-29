import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody149_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody149_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody149_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody149_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody149_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody149_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody149_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_4 optimizedBody149_5

def optimizedBody149_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody149_3, 149, 2)) (some 68) ([2]) (some (2, optimizedBody149_6, 149, 3))

def optimizedBody149_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody149_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody149_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody149_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody149_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551568#64)))

def optimizedBody149_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody149_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody149_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody149_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody149_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody149_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_17 optimizedBody149_5

def optimizedBody149_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody149_16, 149, 4)) (some 68) ([2]) (some (2, optimizedBody149_18, 149, 5))

def optimizedBody149_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551560#64)))

def optimizedBody149_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody149_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody149_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody149_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_22 optimizedBody149_23

def optimizedBody149_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_21 optimizedBody149_24

def optimizedBody149_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_14 optimizedBody149_25

def optimizedBody149_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_13 optimizedBody149_26

def optimizedBody149_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_20 optimizedBody149_27

def optimizedBody149_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_11 optimizedBody149_28

def optimizedBody149_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_10 optimizedBody149_29

def optimizedBody149_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_9 optimizedBody149_30

def optimizedBody149_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_8 optimizedBody149_31

def optimizedBody149_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_19 optimizedBody149_32

def optimizedBody149_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_4 optimizedBody149_33

def optimizedBody149_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_15 optimizedBody149_34

def optimizedBody149_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_14 optimizedBody149_35

def optimizedBody149_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_13 optimizedBody149_36

def optimizedBody149_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_12 optimizedBody149_37

def optimizedBody149_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_11 optimizedBody149_38

def optimizedBody149_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_10 optimizedBody149_39

def optimizedBody149_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_9 optimizedBody149_40

def optimizedBody149_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_8 optimizedBody149_41

def optimizedBody149_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_7 optimizedBody149_42

def optimizedBody149_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_2 optimizedBody149_43

def optimizedBody149_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_1 optimizedBody149_44

def optimizedBody149_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody149_0 optimizedBody149_45

def optimized149 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(149, 1, optimizedBody149_46)
end InitECandidate.Proofs.StackAnalysis
