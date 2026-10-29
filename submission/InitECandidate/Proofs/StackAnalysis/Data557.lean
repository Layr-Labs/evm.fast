import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody557_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody557_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody557_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody557_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody557_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody557_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody557_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_4 optimizedBody557_5

def optimizedBody557_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody557_3, 557, 2)) (some 470) ([2]) (some (2, optimizedBody557_6, 557, 3))

def optimizedBody557_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody557_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody557_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody557_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody557_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody557_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody557_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody557_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody557_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody557_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody557_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody557_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody557_3, 557, 4)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody557_6, 557, 5))

def optimizedBody557_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody557_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody557_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody557_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_22 optimizedBody557_5

def optimizedBody557_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody557_21, 557, 6)) (some 490) ([2]) (some (2, optimizedBody557_23, 557, 7))

def optimizedBody557_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody557_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody557_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody557_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_26 optimizedBody557_27

def optimizedBody557_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_25 optimizedBody557_28

def optimizedBody557_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_8 optimizedBody557_29

def optimizedBody557_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_24 optimizedBody557_30

def optimizedBody557_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_4 optimizedBody557_31

def optimizedBody557_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_20 optimizedBody557_32

def optimizedBody557_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_8 optimizedBody557_33

def optimizedBody557_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_19 optimizedBody557_34

def optimizedBody557_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_18 optimizedBody557_35

def optimizedBody557_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_17 optimizedBody557_36

def optimizedBody557_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_0 optimizedBody557_37

def optimizedBody557_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_16 optimizedBody557_38

def optimizedBody557_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_0 optimizedBody557_39

def optimizedBody557_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_15 optimizedBody557_40

def optimizedBody557_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_0 optimizedBody557_41

def optimizedBody557_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_14 optimizedBody557_42

def optimizedBody557_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_13 optimizedBody557_43

def optimizedBody557_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_12 optimizedBody557_44

def optimizedBody557_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_11 optimizedBody557_45

def optimizedBody557_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_10 optimizedBody557_46

def optimizedBody557_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_9 optimizedBody557_47

def optimizedBody557_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_8 optimizedBody557_48

def optimizedBody557_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_7 optimizedBody557_49

def optimizedBody557_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_2 optimizedBody557_50

def optimizedBody557_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_1 optimizedBody557_51

def optimizedBody557_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody557_0 optimizedBody557_52

def optimized557 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(557, 1, optimizedBody557_53)
end InitECandidate.Proofs.StackAnalysis
