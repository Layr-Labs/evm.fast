import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody599_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody599_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody599_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 2)]

def optimizedBody599_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 2)]

def optimizedBody599_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody599_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody599_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody599_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_5 optimizedBody599_6

def optimizedBody599_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody599_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody599_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody599_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody599_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_11 optimizedBody599_6

def optimizedBody599_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody599_10, 599, 3)) (some 597) ([2]) (some (2, optimizedBody599_12, 599, 4))

def optimizedBody599_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody599_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_8 optimizedBody599_14

def optimizedBody599_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_13 optimizedBody599_15

def optimizedBody599_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_4 optimizedBody599_16

def optimizedBody599_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_9 optimizedBody599_17

def optimizedBody599_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_8 optimizedBody599_18

def optimizedBody599_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody599_7 optimizedBody599_19

def optimizedBody599_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_20 optimizedBody599_15

def optimizedBody599_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_4 optimizedBody599_21

def optimizedBody599_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody599_3, 599, 2)) (some 598) ([]) (some (2, optimizedBody599_22, 599, 5))

def optimizedBody599_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody599_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody599_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody599_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody599_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody599_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody599_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody599_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody599_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody599_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_31 optimizedBody599_32

def optimizedBody599_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_30 optimizedBody599_33

def optimizedBody599_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_29 optimizedBody599_34

def optimizedBody599_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_28 optimizedBody599_35

def optimizedBody599_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_27 optimizedBody599_36

def optimizedBody599_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_26 optimizedBody599_37

def optimizedBody599_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_25 optimizedBody599_38

def optimizedBody599_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_8 optimizedBody599_39

def optimizedBody599_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody599_40 optimizedBody599_8

def optimizedBody599_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody599_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_31 optimizedBody599_42

def optimizedBody599_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_1 optimizedBody599_43

def optimizedBody599_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_8 optimizedBody599_44

def optimizedBody599_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_41 optimizedBody599_45

def optimizedBody599_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_1 optimizedBody599_46

def optimizedBody599_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_24 optimizedBody599_47

def optimizedBody599_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_8 optimizedBody599_48

def optimizedBody599_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_23 optimizedBody599_49

def optimizedBody599_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_2 optimizedBody599_50

def optimizedBody599_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_1 optimizedBody599_51

def optimizedBody599_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_0 optimizedBody599_52

def optimized599 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(599, 1, optimizedBody599_53)
end InitECandidate.Proofs.StackAnalysis
