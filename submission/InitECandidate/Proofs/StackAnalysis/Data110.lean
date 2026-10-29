import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody110_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 16), (48, 8), (50, 4),
    (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody110_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (20, 44), (16, 46), (8, 48), (4, 50), (12, 52), (18, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody110_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (20, 44), (16, 46), (8, 48), (4, 50), (12, 52), (18, 54), (10, 56), (6, 58), (14, 60)]

def optimizedBody110_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody110_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_2 optimizedBody110_3

def optimizedBody110_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody110_1, 110, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody110_4, 110, 3))

def optimizedBody110_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody110_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody110_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody110_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody110_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody110_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2]

def optimizedBody110_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_10 optimizedBody110_11

def optimizedBody110_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_9 optimizedBody110_12

def optimizedBody110_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_13

def optimizedBody110_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody110_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody110_14 optimizedBody110_15

def optimizedBody110_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 18), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 20)]

def optimizedBody110_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody110_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody110_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_19 optimizedBody110_3

def optimizedBody110_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody110_18, 110, 4)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody110_20, 110, 5))

def optimizedBody110_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody110_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_10 optimizedBody110_22

def optimizedBody110_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_8 optimizedBody110_23

def optimizedBody110_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_24

def optimizedBody110_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody110_25 optimizedBody110_15

def optimizedBody110_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody110_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_27 optimizedBody110_23

def optimizedBody110_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_28

def optimizedBody110_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_29

def optimizedBody110_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_26 optimizedBody110_30

def optimizedBody110_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_8 optimizedBody110_31

def optimizedBody110_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_7 optimizedBody110_32

def optimizedBody110_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_33

def optimizedBody110_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_21 optimizedBody110_34

def optimizedBody110_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_17 optimizedBody110_35

def optimizedBody110_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_36

def optimizedBody110_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_37

def optimizedBody110_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_16 optimizedBody110_38

def optimizedBody110_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_8 optimizedBody110_39

def optimizedBody110_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_7 optimizedBody110_40

def optimizedBody110_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_6 optimizedBody110_41

def optimizedBody110_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_5 optimizedBody110_42

def optimizedBody110_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody110_0 optimizedBody110_43

def optimized110 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(110, 9, optimizedBody110_44)
end InitECandidate.Proofs.StackAnalysis
