import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody479_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody479_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody479_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody479_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody479_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_2 optimizedBody479_3

def optimizedBody479_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody479_1, 479, 2)) (some 465) ([2]) (some (2, optimizedBody479_4, 479, 3))

def optimizedBody479_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody479_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 4)]

def optimizedBody479_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (10, 44), (0, 46)]

def optimizedBody479_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody479_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_9 optimizedBody479_3

def optimizedBody479_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody479_8, 479, 4)) (some 119) ([2, 4]) (some (2, optimizedBody479_10, 479, 5))

def optimizedBody479_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody479_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody479_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody479_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody479_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody479_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_15 optimizedBody479_16

def optimizedBody479_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_14 optimizedBody479_17

def optimizedBody479_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_6 optimizedBody479_18

def optimizedBody479_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody479_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody479_19 optimizedBody479_20

def optimizedBody479_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody479_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody479_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody479_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody479_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (2, 0)]

def optimizedBody479_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 8 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody479_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 10)]

def optimizedBody479_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody479_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody479_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_30 optimizedBody479_3

def optimizedBody479_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody479_29, 479, 6)) (some 463) ([2, 4]) (some (2, optimizedBody479_31, 479, 7))

def optimizedBody479_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody479_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody479_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_33 optimizedBody479_34

def optimizedBody479_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_6 optimizedBody479_35

def optimizedBody479_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_32 optimizedBody479_36

def optimizedBody479_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_28 optimizedBody479_37

def optimizedBody479_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_27 optimizedBody479_38

def optimizedBody479_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_26 optimizedBody479_39

def optimizedBody479_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_25 optimizedBody479_40

def optimizedBody479_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_24 optimizedBody479_41

def optimizedBody479_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_23 optimizedBody479_42

def optimizedBody479_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_22 optimizedBody479_43

def optimizedBody479_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_6 optimizedBody479_44

def optimizedBody479_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_6 optimizedBody479_45

def optimizedBody479_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_21 optimizedBody479_46

def optimizedBody479_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_13 optimizedBody479_47

def optimizedBody479_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_12 optimizedBody479_48

def optimizedBody479_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_6 optimizedBody479_49

def optimizedBody479_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_11 optimizedBody479_50

def optimizedBody479_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_7 optimizedBody479_51

def optimizedBody479_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_6 optimizedBody479_52

def optimizedBody479_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_5 optimizedBody479_53

def optimizedBody479_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody479_0 optimizedBody479_54

def optimized479 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(479, 2, optimizedBody479_55)
end InitECandidate.Proofs.StackAnalysis
