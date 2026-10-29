import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody522_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody522_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody522_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody522_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody522_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_2 optimizedBody522_3

def optimizedBody522_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody522_1, 522, 2)) (some 475) ([]) (some (2, optimizedBody522_4, 522, 3))

def optimizedBody522_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody522_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody522_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody522_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody522_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody522_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_10 optimizedBody522_3

def optimizedBody522_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody522_9, 522, 4)) (some 470) ([2]) (some (2, optimizedBody522_11, 522, 5))

def optimizedBody522_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody522_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody522_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody522_14, 522, 6)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody522_4, 522, 7))

def optimizedBody522_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody522_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody522_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody522_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody522_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody522_19, 522, 8)) (some 477) ([2]) (some (2, optimizedBody522_4, 522, 9))

def optimizedBody522_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody522_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody522_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody522_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_23 optimizedBody522_3

def optimizedBody522_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody522_22, 522, 10)) (some 490) ([2]) (some (2, optimizedBody522_24, 522, 11))

def optimizedBody522_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody522_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody522_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody522_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_27 optimizedBody522_28

def optimizedBody522_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_26 optimizedBody522_29

def optimizedBody522_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_6 optimizedBody522_30

def optimizedBody522_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_25 optimizedBody522_31

def optimizedBody522_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_2 optimizedBody522_32

def optimizedBody522_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_21 optimizedBody522_33

def optimizedBody522_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_6 optimizedBody522_34

def optimizedBody522_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_20 optimizedBody522_35

def optimizedBody522_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_2 optimizedBody522_36

def optimizedBody522_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_18 optimizedBody522_37

def optimizedBody522_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_17 optimizedBody522_38

def optimizedBody522_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_16 optimizedBody522_39

def optimizedBody522_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_6 optimizedBody522_40

def optimizedBody522_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_15 optimizedBody522_41

def optimizedBody522_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_13 optimizedBody522_42

def optimizedBody522_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_6 optimizedBody522_43

def optimizedBody522_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_12 optimizedBody522_44

def optimizedBody522_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_8 optimizedBody522_45

def optimizedBody522_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_7 optimizedBody522_46

def optimizedBody522_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_6 optimizedBody522_47

def optimizedBody522_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_5 optimizedBody522_48

def optimizedBody522_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody522_0 optimizedBody522_49

def optimized522 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(522, 1, optimizedBody522_50)
end InitECandidate.Proofs.StackAnalysis
