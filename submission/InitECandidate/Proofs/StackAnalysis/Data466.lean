import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody466_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody466_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody466_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody466_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody466_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody466_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 240#64)))

def optimizedBody466_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 0), (46, 4), (48, 8), (50, 2)]

def optimizedBody466_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody466_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody466_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody466_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_8 optimizedBody466_9

def optimizedBody466_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody466_7, 466, 2)) (some 88) ([2, 4]) (some (2, optimizedBody466_10, 466, 3))

def optimizedBody466_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody466_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody466_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody466_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody466_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody466_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody466_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_17 optimizedBody466_9

def optimizedBody466_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody466_16, 466, 4)) (some 89) ([2, 4]) (some (2, optimizedBody466_18, 466, 5))

def optimizedBody466_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody466_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody466_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody466_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody466_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_23 optimizedBody466_9

def optimizedBody466_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody466_22, 466, 6)) (some 89) ([2, 4]) (some (2, optimizedBody466_24, 466, 7))

def optimizedBody466_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody466_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody466_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_26 optimizedBody466_27

def optimizedBody466_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_12 optimizedBody466_28

def optimizedBody466_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_25 optimizedBody466_29

def optimizedBody466_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_21 optimizedBody466_30

def optimizedBody466_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_20 optimizedBody466_31

def optimizedBody466_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_13 optimizedBody466_32

def optimizedBody466_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_12 optimizedBody466_33

def optimizedBody466_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_19 optimizedBody466_34

def optimizedBody466_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_15 optimizedBody466_35

def optimizedBody466_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_14 optimizedBody466_36

def optimizedBody466_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_13 optimizedBody466_37

def optimizedBody466_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_12 optimizedBody466_38

def optimizedBody466_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_11 optimizedBody466_39

def optimizedBody466_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_6 optimizedBody466_40

def optimizedBody466_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_5 optimizedBody466_41

def optimizedBody466_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_4 optimizedBody466_42

def optimizedBody466_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_3 optimizedBody466_43

def optimizedBody466_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_2 optimizedBody466_44

def optimizedBody466_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_1 optimizedBody466_45

def optimizedBody466_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_0 optimizedBody466_46

def optimized466 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(466, 5, optimizedBody466_47)
end InitECandidate.Proofs.StackAnalysis
