import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody658_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody658_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (8, 8), (44, 44)]

def optimizedBody658_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody658_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody658_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_2 optimizedBody658_3

def optimizedBody658_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody658_1, 658, 2)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody658_4, 658, 3))

def optimizedBody658_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody658_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody658_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3486998266802970665#64)

def optimizedBody658_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13281191951274694749#64)

def optimizedBody658_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10917124144477883021#64)

def optimizedBody658_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4332616871279656263#64)

def optimizedBody658_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 2), (48, 6), (50, 4), (52, 8)]

def optimizedBody658_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 44), (10, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody658_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (10, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody658_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_14 optimizedBody658_3

def optimizedBody658_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody658_13, 658, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody658_15, 658, 5))

def optimizedBody658_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody658_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody658_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody658_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody658_21 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody658_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_20 optimizedBody658_21

def optimizedBody658_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_11 optimizedBody658_22

def optimizedBody658_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_10 optimizedBody658_23

def optimizedBody658_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_9 optimizedBody658_24

def optimizedBody658_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_8 optimizedBody658_25

def optimizedBody658_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_19 optimizedBody658_26

def optimizedBody658_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_27

def optimizedBody658_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (6, 6), (4, 4), (8, 8)]

def optimizedBody658_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody658_28 optimizedBody658_29

def optimizedBody658_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody658_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody658_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_31 optimizedBody658_32

def optimizedBody658_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_33

def optimizedBody658_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_34

def optimizedBody658_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_30 optimizedBody658_35

def optimizedBody658_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_18 optimizedBody658_36

def optimizedBody658_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_17 optimizedBody658_37

def optimizedBody658_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_38

def optimizedBody658_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_16 optimizedBody658_39

def optimizedBody658_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_12 optimizedBody658_40

def optimizedBody658_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_11 optimizedBody658_41

def optimizedBody658_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_10 optimizedBody658_42

def optimizedBody658_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_9 optimizedBody658_43

def optimizedBody658_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_8 optimizedBody658_44

def optimizedBody658_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_45

def optimizedBody658_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_46

def optimizedBody658_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_5 optimizedBody658_47

def optimizedBody658_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_48

def optimized658 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(658, 9, optimizedBody658_49)
end InitECandidate.Proofs.StackAnalysis
