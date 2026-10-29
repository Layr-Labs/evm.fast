import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody777_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2)]

def optimizedBody777_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody777_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody777_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody777_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_2 optimizedBody777_3

def optimizedBody777_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_1, 777, 2)) (some 69) ([]) (some (2, optimizedBody777_4, 777, 3))

def optimizedBody777_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody777_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody777_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody777_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody777_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody777_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_10 optimizedBody777_3

def optimizedBody777_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_9, 777, 4)) (some 68) ([2]) (some (2, optimizedBody777_11, 777, 5))

def optimizedBody777_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody777_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody777_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody777_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody777_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody777_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1344#64)))

def optimizedBody777_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4#64)

def optimizedBody777_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 2)]

def optimizedBody777_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody777_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody777_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_22 optimizedBody777_3

def optimizedBody777_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_21, 777, 6)) (some 772) ([2, 4, 6, 8]) (some (2, optimizedBody777_23, 777, 7))

def optimizedBody777_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody777_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody777_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody777_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_27 optimizedBody777_3

def optimizedBody777_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_26, 777, 8)) (some 767) ([2]) (some (2, optimizedBody777_28, 777, 9))

def optimizedBody777_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody777_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody777_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody777_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_32 optimizedBody777_3

def optimizedBody777_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_31, 777, 10)) (some 70) ([2]) (some (2, optimizedBody777_33, 777, 11))

def optimizedBody777_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody777_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody777_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_35 optimizedBody777_36

def optimizedBody777_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_37

def optimizedBody777_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_34 optimizedBody777_38

def optimizedBody777_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_30 optimizedBody777_39

def optimizedBody777_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_40

def optimizedBody777_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_29 optimizedBody777_41

def optimizedBody777_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_25 optimizedBody777_42

def optimizedBody777_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_43

def optimizedBody777_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_24 optimizedBody777_44

def optimizedBody777_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_20 optimizedBody777_45

def optimizedBody777_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_19 optimizedBody777_46

def optimizedBody777_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_18 optimizedBody777_47

def optimizedBody777_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_17 optimizedBody777_48

def optimizedBody777_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_16 optimizedBody777_49

def optimizedBody777_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_15 optimizedBody777_50

def optimizedBody777_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_14 optimizedBody777_51

def optimizedBody777_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_13 optimizedBody777_52

def optimizedBody777_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_53

def optimizedBody777_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_12 optimizedBody777_54

def optimizedBody777_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_8 optimizedBody777_55

def optimizedBody777_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_7 optimizedBody777_56

def optimizedBody777_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_57

def optimizedBody777_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_5 optimizedBody777_58

def optimizedBody777_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_0 optimizedBody777_59

def optimized777 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(777, 2, optimizedBody777_60)
end InitECandidate.Proofs.StackAnalysis
