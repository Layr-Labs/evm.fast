import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody284_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody284_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody284_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody284_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody284_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551496#64))

def optimizedBody284_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody284_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody284_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody284_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody284_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody284_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_8 optimizedBody284_9

def optimizedBody284_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_7 optimizedBody284_10

def optimizedBody284_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_6 optimizedBody284_11

def optimizedBody284_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody284_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody284_12 optimizedBody284_13

def optimizedBody284_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody284_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody284_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody284_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody284_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody284_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_18 optimizedBody284_19

def optimizedBody284_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody284_17, 284, 2)) (some 68) ([2]) (some (2, optimizedBody284_20, 284, 3))

def optimizedBody284_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody284_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody284_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody284_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551496#64)))

def optimizedBody284_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody284_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody284_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551496#64))

def optimizedBody284_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody284_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody284_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody284_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody284_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_32 optimizedBody284_19

def optimizedBody284_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody284_31, 284, 4)) (some 78) ([2, 4]) (some (2, optimizedBody284_33, 284, 5))

def optimizedBody284_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_34 optimizedBody284_12

def optimizedBody284_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_30 optimizedBody284_35

def optimizedBody284_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_29 optimizedBody284_36

def optimizedBody284_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_28 optimizedBody284_37

def optimizedBody284_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_0 optimizedBody284_38

def optimizedBody284_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_27 optimizedBody284_39

def optimizedBody284_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_26 optimizedBody284_40

def optimizedBody284_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_25 optimizedBody284_41

def optimizedBody284_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_24 optimizedBody284_42

def optimizedBody284_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_23 optimizedBody284_43

def optimizedBody284_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_22 optimizedBody284_44

def optimizedBody284_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_6 optimizedBody284_45

def optimizedBody284_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_21 optimizedBody284_46

def optimizedBody284_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_16 optimizedBody284_47

def optimizedBody284_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_15 optimizedBody284_48

def optimizedBody284_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_6 optimizedBody284_49

def optimizedBody284_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_6 optimizedBody284_50

def optimizedBody284_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_14 optimizedBody284_51

def optimizedBody284_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_5 optimizedBody284_52

def optimizedBody284_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_4 optimizedBody284_53

def optimizedBody284_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_3 optimizedBody284_54

def optimizedBody284_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_2 optimizedBody284_55

def optimizedBody284_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_1 optimizedBody284_56

def optimizedBody284_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody284_0 optimizedBody284_57

def optimized284 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(284, 1, optimizedBody284_58)
end InitECandidate.Proofs.StackAnalysis
