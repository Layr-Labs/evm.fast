import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody212_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 16), (48, 8), (50, 24),
    (52, 4), (54, 20), (56, 12), (58, 2), (60, 18), (62, 10), (64, 6), (66, 22), (68, 14)]

def optimizedBody212_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (16, 46), (8, 48), (46, 50), (4, 52), (48, 54), (12, 56), (0, 58), (52, 60), (10, 62), (6, 64),
    (54, 66), (14, 68)]

def optimizedBody212_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (8, 48), (46, 50), (4, 52), (48, 54), (12, 56), (0, 58), (52, 60), (10, 62), (6, 64),
    (54, 66), (14, 68)]

def optimizedBody212_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody212_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_2 optimizedBody212_3

def optimizedBody212_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody212_1, 212, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody212_4, 212, 3))

def optimizedBody212_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody212_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 18),
    (52, 52), (54, 54)]

def optimizedBody212_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (4, 4), (6, 6), (8, 8), (44, 44), (16, 46), (12, 48), (0, 50), (10, 52), (14, 54)]

def optimizedBody212_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (12, 48), (0, 50), (10, 52), (14, 54)]

def optimizedBody212_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_9 optimizedBody212_3

def optimizedBody212_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody212_8, 212, 4)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody212_10, 212, 5))

def optimizedBody212_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody212_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody212_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 18), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody212_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 2), (4, 4), (6, 6), (8, 8), (0, 44)]

def optimizedBody212_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody212_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_16 optimizedBody212_3

def optimizedBody212_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody212_15, 212, 6)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody212_17, 212, 7))

def optimizedBody212_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 18), (4, 4), (6, 6), (8, 8)]

def optimizedBody212_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_6 optimizedBody212_19

def optimizedBody212_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_18 optimizedBody212_20

def optimizedBody212_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_14 optimizedBody212_21

def optimizedBody212_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_6 optimizedBody212_22

def optimizedBody212_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (18, 18), (4, 4), (6, 6), (8, 8)]

def optimizedBody212_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_6 optimizedBody212_24

def optimizedBody212_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody212_23 optimizedBody212_25

def optimizedBody212_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 4), (6, 6), (8, 8)]

def optimizedBody212_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody212_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_27 optimizedBody212_28

def optimizedBody212_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_6 optimizedBody212_29

def optimizedBody212_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_26 optimizedBody212_30

def optimizedBody212_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_13 optimizedBody212_31

def optimizedBody212_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_12 optimizedBody212_32

def optimizedBody212_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_6 optimizedBody212_33

def optimizedBody212_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_11 optimizedBody212_34

def optimizedBody212_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_7 optimizedBody212_35

def optimizedBody212_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_6 optimizedBody212_36

def optimizedBody212_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_5 optimizedBody212_37

def optimizedBody212_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody212_0 optimizedBody212_38

def optimized212 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(212, 13, optimizedBody212_39)
end InitECandidate.Proofs.StackAnalysis
