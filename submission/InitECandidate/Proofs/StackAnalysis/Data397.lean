import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody397_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody397_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody397_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody397_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody397_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_2 optimizedBody397_3

def optimizedBody397_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody397_1, 397, 2)) (some 69) ([]) (some (2, optimizedBody397_4, 397, 3))

def optimizedBody397_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody397_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody397_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 0), (46, 46)]

def optimizedBody397_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody397_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody397_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_10 optimizedBody397_3

def optimizedBody397_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody397_9, 397, 4)) (some 68) ([2]) (some (2, optimizedBody397_11, 397, 5))

def optimizedBody397_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody397_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody397_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48)]

def optimizedBody397_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48)]

def optimizedBody397_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48)]

def optimizedBody397_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_17 optimizedBody397_3

def optimizedBody397_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody397_16, 397, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody397_18, 397, 7))

def optimizedBody397_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody397_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody397_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody397_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551448#64))

def optimizedBody397_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody397_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody397_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 2), (4, 4), (44, 44), (0, 46)]

def optimizedBody397_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody397_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_27 optimizedBody397_3

def optimizedBody397_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody397_26, 397, 8)) (some 307) ([2, 4]) (some (2, optimizedBody397_28, 397, 9))

def optimizedBody397_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 6), (48, 8), (50, 4)]

def optimizedBody397_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (8, 48), (4, 50)]

def optimizedBody397_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (8, 48), (4, 50)]

def optimizedBody397_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_32 optimizedBody397_3

def optimizedBody397_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody397_31, 397, 10)) (some 70) ([2]) (some (2, optimizedBody397_33, 397, 11))

def optimizedBody397_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8), (4, 4), (6, 6)]

def optimizedBody397_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6]

def optimizedBody397_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_35 optimizedBody397_36

def optimizedBody397_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_6 optimizedBody397_37

def optimizedBody397_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_34 optimizedBody397_38

def optimizedBody397_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_30 optimizedBody397_39

def optimizedBody397_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_6 optimizedBody397_40

def optimizedBody397_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_29 optimizedBody397_41

def optimizedBody397_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_25 optimizedBody397_42

def optimizedBody397_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_24 optimizedBody397_43

def optimizedBody397_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_23 optimizedBody397_44

def optimizedBody397_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_22 optimizedBody397_45

def optimizedBody397_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_21 optimizedBody397_46

def optimizedBody397_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_20 optimizedBody397_47

def optimizedBody397_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_6 optimizedBody397_48

def optimizedBody397_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_19 optimizedBody397_49

def optimizedBody397_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_15 optimizedBody397_50

def optimizedBody397_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_14 optimizedBody397_51

def optimizedBody397_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_13 optimizedBody397_52

def optimizedBody397_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_6 optimizedBody397_53

def optimizedBody397_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_12 optimizedBody397_54

def optimizedBody397_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_8 optimizedBody397_55

def optimizedBody397_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_7 optimizedBody397_56

def optimizedBody397_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_6 optimizedBody397_57

def optimizedBody397_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_5 optimizedBody397_58

def optimizedBody397_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody397_0 optimizedBody397_59

def optimized397 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(397, 2, optimizedBody397_60)
end InitECandidate.Proofs.StackAnalysis
