import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody659_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 16), (48, 8), (50, 4),
    (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody659_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (16, 46), (8, 48), (4, 50), (12, 52), (0, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody659_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (8, 48), (4, 50), (12, 52), (0, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody659_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody659_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_2 optimizedBody659_3

def optimizedBody659_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody659_1, 659, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody659_4, 659, 3))

def optimizedBody659_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody659_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 18)]

def optimizedBody659_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (44, 44), (0, 46)]

def optimizedBody659_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody659_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_9 optimizedBody659_3

def optimizedBody659_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody659_8, 659, 4)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody659_10, 659, 5))

def optimizedBody659_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody659_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody659_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody659_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3486998266802970665#64)

def optimizedBody659_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13281191951274694749#64)

def optimizedBody659_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10917124144477883021#64)

def optimizedBody659_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4332616871279656263#64)

def optimizedBody659_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody659_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (0, 44)]

def optimizedBody659_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody659_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_21 optimizedBody659_3

def optimizedBody659_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody659_20, 659, 6)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody659_22, 659, 7))

def optimizedBody659_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (8, 8), (10, 10), (6, 6)]

def optimizedBody659_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_24

def optimizedBody659_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_23 optimizedBody659_25

def optimizedBody659_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_19 optimizedBody659_26

def optimizedBody659_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_18 optimizedBody659_27

def optimizedBody659_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_17 optimizedBody659_28

def optimizedBody659_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_16 optimizedBody659_29

def optimizedBody659_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_15 optimizedBody659_30

def optimizedBody659_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_14 optimizedBody659_31

def optimizedBody659_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_32

def optimizedBody659_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4), (8, 8), (10, 10), (6, 6)]

def optimizedBody659_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_34

def optimizedBody659_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody659_33 optimizedBody659_35

def optimizedBody659_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody659_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody659_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_37 optimizedBody659_38

def optimizedBody659_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_39

def optimizedBody659_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_36 optimizedBody659_40

def optimizedBody659_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_13 optimizedBody659_41

def optimizedBody659_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_12 optimizedBody659_42

def optimizedBody659_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_43

def optimizedBody659_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_11 optimizedBody659_44

def optimizedBody659_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_7 optimizedBody659_45

def optimizedBody659_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_46

def optimizedBody659_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_5 optimizedBody659_47

def optimizedBody659_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_0 optimizedBody659_48

def optimized659 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(659, 9, optimizedBody659_49)
end InitECandidate.Proofs.StackAnalysis
