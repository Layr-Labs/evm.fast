import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody203_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 16), (48, 8), (50, 4),
    (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody203_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (16, 46), (8, 48), (4, 50), (12, 52), (0, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody203_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (8, 48), (4, 50), (12, 52), (0, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody203_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody203_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_2 optimizedBody203_3

def optimizedBody203_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody203_1, 203, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody203_4, 203, 3))

def optimizedBody203_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody203_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 18)]

def optimizedBody203_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (44, 44), (0, 46)]

def optimizedBody203_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody203_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_9 optimizedBody203_3

def optimizedBody203_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody203_8, 203, 4)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody203_10, 203, 5))

def optimizedBody203_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody203_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody203_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody203_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody203_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody203_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody203_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744069414583343#64)

def optimizedBody203_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody203_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (0, 44)]

def optimizedBody203_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody203_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_21 optimizedBody203_3

def optimizedBody203_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody203_20, 203, 6)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody203_22, 203, 7))

def optimizedBody203_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (8, 8), (10, 10), (6, 6)]

def optimizedBody203_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_6 optimizedBody203_24

def optimizedBody203_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_23 optimizedBody203_25

def optimizedBody203_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_19 optimizedBody203_26

def optimizedBody203_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_18 optimizedBody203_27

def optimizedBody203_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_17 optimizedBody203_28

def optimizedBody203_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_16 optimizedBody203_29

def optimizedBody203_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_15 optimizedBody203_30

def optimizedBody203_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_14 optimizedBody203_31

def optimizedBody203_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_6 optimizedBody203_32

def optimizedBody203_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4), (8, 8), (10, 10), (6, 6)]

def optimizedBody203_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_6 optimizedBody203_34

def optimizedBody203_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody203_33 optimizedBody203_35

def optimizedBody203_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody203_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody203_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_37 optimizedBody203_38

def optimizedBody203_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_6 optimizedBody203_39

def optimizedBody203_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_36 optimizedBody203_40

def optimizedBody203_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_13 optimizedBody203_41

def optimizedBody203_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_12 optimizedBody203_42

def optimizedBody203_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_6 optimizedBody203_43

def optimizedBody203_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_11 optimizedBody203_44

def optimizedBody203_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_7 optimizedBody203_45

def optimizedBody203_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_6 optimizedBody203_46

def optimizedBody203_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_5 optimizedBody203_47

def optimizedBody203_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody203_0 optimizedBody203_48

def optimized203 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(203, 9, optimizedBody203_49)
end InitECandidate.Proofs.StackAnalysis
