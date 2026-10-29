import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody553_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody553_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody553_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody553_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody553_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody553_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody553_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_4 optimizedBody553_5

def optimizedBody553_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_3, 553, 2)) (some 470) ([2]) (some (2, optimizedBody553_6, 553, 3))

def optimizedBody553_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody553_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody553_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody553_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody553_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody553_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody553_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody553_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody553_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_15, 553, 4)) (some 467) ([2]) (some (2, optimizedBody553_6, 553, 5))

def optimizedBody553_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody553_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_3, 553, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody553_6, 553, 7))

def optimizedBody553_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody553_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody553_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody553_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_21 optimizedBody553_5

def optimizedBody553_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_20, 553, 8)) (some 490) ([2]) (some (2, optimizedBody553_22, 553, 9))

def optimizedBody553_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody553_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody553_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody553_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_25 optimizedBody553_26

def optimizedBody553_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_24 optimizedBody553_27

def optimizedBody553_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_8 optimizedBody553_28

def optimizedBody553_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_23 optimizedBody553_29

def optimizedBody553_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_4 optimizedBody553_30

def optimizedBody553_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_19 optimizedBody553_31

def optimizedBody553_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_8 optimizedBody553_32

def optimizedBody553_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_18 optimizedBody553_33

def optimizedBody553_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_17 optimizedBody553_34

def optimizedBody553_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_8 optimizedBody553_35

def optimizedBody553_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_16 optimizedBody553_36

def optimizedBody553_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_4 optimizedBody553_37

def optimizedBody553_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_14 optimizedBody553_38

def optimizedBody553_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_13 optimizedBody553_39

def optimizedBody553_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_12 optimizedBody553_40

def optimizedBody553_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_11 optimizedBody553_41

def optimizedBody553_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_10 optimizedBody553_42

def optimizedBody553_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_9 optimizedBody553_43

def optimizedBody553_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_8 optimizedBody553_44

def optimizedBody553_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_7 optimizedBody553_45

def optimizedBody553_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_2 optimizedBody553_46

def optimizedBody553_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_1 optimizedBody553_47

def optimizedBody553_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_0 optimizedBody553_48

def optimized553 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(553, 1, optimizedBody553_49)
end InitECandidate.Proofs.StackAnalysis
