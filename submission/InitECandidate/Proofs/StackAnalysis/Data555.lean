import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody555_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody555_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody555_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody555_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody555_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody555_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody555_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_4 optimizedBody555_5

def optimizedBody555_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody555_3, 555, 2)) (some 470) ([2]) (some (2, optimizedBody555_6, 555, 3))

def optimizedBody555_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody555_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody555_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody555_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody555_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody555_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody555_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody555_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody555_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody555_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 8), (6, 6), (44, 44)]

def optimizedBody555_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody555_17, 555, 4)) (some 467) ([2]) (some (2, optimizedBody555_6, 555, 5))

def optimizedBody555_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody555_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody555_3, 555, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody555_6, 555, 7))

def optimizedBody555_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody555_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody555_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody555_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_23 optimizedBody555_5

def optimizedBody555_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody555_22, 555, 8)) (some 490) ([2]) (some (2, optimizedBody555_24, 555, 9))

def optimizedBody555_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody555_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody555_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody555_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_27 optimizedBody555_28

def optimizedBody555_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_26 optimizedBody555_29

def optimizedBody555_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_8 optimizedBody555_30

def optimizedBody555_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_25 optimizedBody555_31

def optimizedBody555_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_4 optimizedBody555_32

def optimizedBody555_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_21 optimizedBody555_33

def optimizedBody555_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_8 optimizedBody555_34

def optimizedBody555_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_20 optimizedBody555_35

def optimizedBody555_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_19 optimizedBody555_36

def optimizedBody555_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_8 optimizedBody555_37

def optimizedBody555_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_18 optimizedBody555_38

def optimizedBody555_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_4 optimizedBody555_39

def optimizedBody555_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_16 optimizedBody555_40

def optimizedBody555_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_15 optimizedBody555_41

def optimizedBody555_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_14 optimizedBody555_42

def optimizedBody555_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_13 optimizedBody555_43

def optimizedBody555_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_12 optimizedBody555_44

def optimizedBody555_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_11 optimizedBody555_45

def optimizedBody555_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_10 optimizedBody555_46

def optimizedBody555_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_9 optimizedBody555_47

def optimizedBody555_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_8 optimizedBody555_48

def optimizedBody555_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_7 optimizedBody555_49

def optimizedBody555_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_2 optimizedBody555_50

def optimizedBody555_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_1 optimizedBody555_51

def optimizedBody555_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody555_0 optimizedBody555_52

def optimized555 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(555, 1, optimizedBody555_53)
end InitECandidate.Proofs.StackAnalysis
