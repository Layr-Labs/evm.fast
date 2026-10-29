import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody643_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 16), (48, 8), (50, 4),
    (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody643_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (16, 46), (8, 48), (4, 50), (12, 52), (0, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody643_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (8, 48), (4, 50), (12, 52), (0, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody643_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody643_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_2 optimizedBody643_3

def optimizedBody643_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody643_1, 643, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody643_4, 643, 3))

def optimizedBody643_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody643_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 18)]

def optimizedBody643_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (44, 44), (0, 46)]

def optimizedBody643_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody643_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_9 optimizedBody643_3

def optimizedBody643_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody643_8, 643, 4)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody643_10, 643, 5))

def optimizedBody643_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody643_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody643_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody643_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744069414584321#64)

def optimizedBody643_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody643_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4294967295#64)

def optimizedBody643_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744073709551615#64)

def optimizedBody643_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody643_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (0, 44)]

def optimizedBody643_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody643_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_21 optimizedBody643_3

def optimizedBody643_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody643_20, 643, 6)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody643_22, 643, 7))

def optimizedBody643_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (8, 8), (10, 10), (6, 6)]

def optimizedBody643_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_24

def optimizedBody643_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_23 optimizedBody643_25

def optimizedBody643_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_19 optimizedBody643_26

def optimizedBody643_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_18 optimizedBody643_27

def optimizedBody643_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_17 optimizedBody643_28

def optimizedBody643_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_16 optimizedBody643_29

def optimizedBody643_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_15 optimizedBody643_30

def optimizedBody643_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_14 optimizedBody643_31

def optimizedBody643_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_32

def optimizedBody643_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4), (8, 8), (10, 10), (6, 6)]

def optimizedBody643_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_34

def optimizedBody643_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody643_33 optimizedBody643_35

def optimizedBody643_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody643_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody643_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_37 optimizedBody643_38

def optimizedBody643_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_39

def optimizedBody643_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_36 optimizedBody643_40

def optimizedBody643_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_13 optimizedBody643_41

def optimizedBody643_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_12 optimizedBody643_42

def optimizedBody643_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_43

def optimizedBody643_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_11 optimizedBody643_44

def optimizedBody643_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_7 optimizedBody643_45

def optimizedBody643_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_46

def optimizedBody643_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_5 optimizedBody643_47

def optimizedBody643_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_0 optimizedBody643_48

def optimized643 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(643, 9, optimizedBody643_49)
end InitECandidate.Proofs.StackAnalysis
