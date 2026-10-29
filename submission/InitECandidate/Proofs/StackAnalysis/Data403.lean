import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody403_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody403_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody403_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody403_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody403_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_2 optimizedBody403_3

def optimizedBody403_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_1, 403, 2)) (some 399) ([2]) (some (2, optimizedBody403_4, 403, 3))

def optimizedBody403_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody403_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody403_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody403_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody403_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody403_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody403_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody403_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody403_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody403_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody403_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_15 optimizedBody403_3

def optimizedBody403_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_14, 403, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody403_16, 403, 5))

def optimizedBody403_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody403_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody403_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody403_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody403_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_20 optimizedBody403_21

def optimizedBody403_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_19 optimizedBody403_22

def optimizedBody403_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_23

def optimizedBody403_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody403_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody403_24 optimizedBody403_25

def optimizedBody403_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody403_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_27 optimizedBody403_22

def optimizedBody403_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_28

def optimizedBody403_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_29

def optimizedBody403_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_26 optimizedBody403_30

def optimizedBody403_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_19 optimizedBody403_31

def optimizedBody403_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_18 optimizedBody403_32

def optimizedBody403_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_33

def optimizedBody403_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_17 optimizedBody403_34

def optimizedBody403_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_13 optimizedBody403_35

def optimizedBody403_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_12 optimizedBody403_36

def optimizedBody403_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_11 optimizedBody403_37

def optimizedBody403_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_10 optimizedBody403_38

def optimizedBody403_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_9 optimizedBody403_39

def optimizedBody403_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_8 optimizedBody403_40

def optimizedBody403_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_7 optimizedBody403_41

def optimizedBody403_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_42

def optimizedBody403_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_5 optimizedBody403_43

def optimizedBody403_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_0 optimizedBody403_44

def optimized403 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(403, 2, optimizedBody403_45)
end InitECandidate.Proofs.StackAnalysis
