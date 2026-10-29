import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody392_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2), (8, 4)]

def optimizedBody392_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody392_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody392_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody392_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551424#64))

def optimizedBody392_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody392_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody392_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8)]

def optimizedBody392_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody392_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody392_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody392_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_9 optimizedBody392_10

def optimizedBody392_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody392_8, 392, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody392_11, 392, 3))

def optimizedBody392_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody392_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody392_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody392_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody392_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551424#64))

def optimizedBody392_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody392_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody392_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody392_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody392_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody392_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_22 optimizedBody392_10

def optimizedBody392_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody392_21, 392, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody392_23, 392, 5))

def optimizedBody392_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody392_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody392_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_25 optimizedBody392_26

def optimizedBody392_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_4 optimizedBody392_27

def optimizedBody392_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_3 optimizedBody392_28

def optimizedBody392_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_2 optimizedBody392_29

def optimizedBody392_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_1 optimizedBody392_30

def optimizedBody392_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_13 optimizedBody392_31

def optimizedBody392_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_24 optimizedBody392_32

def optimizedBody392_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_20 optimizedBody392_33

def optimizedBody392_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_19 optimizedBody392_34

def optimizedBody392_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_5 optimizedBody392_35

def optimizedBody392_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_18 optimizedBody392_36

def optimizedBody392_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_17 optimizedBody392_37

def optimizedBody392_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_16 optimizedBody392_38

def optimizedBody392_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_15 optimizedBody392_39

def optimizedBody392_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_14 optimizedBody392_40

def optimizedBody392_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_13 optimizedBody392_41

def optimizedBody392_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_12 optimizedBody392_42

def optimizedBody392_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_7 optimizedBody392_43

def optimizedBody392_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_6 optimizedBody392_44

def optimizedBody392_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_5 optimizedBody392_45

def optimizedBody392_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_4 optimizedBody392_46

def optimizedBody392_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_3 optimizedBody392_47

def optimizedBody392_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_2 optimizedBody392_48

def optimizedBody392_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_1 optimizedBody392_49

def optimizedBody392_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody392_0 optimizedBody392_50

def optimized392 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(392, 3, optimizedBody392_51)
end InitECandidate.Proofs.StackAnalysis
