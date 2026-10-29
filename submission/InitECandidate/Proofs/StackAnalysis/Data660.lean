import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody660_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody660_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (16, 46), (12, 48), (10, 50), (14, 52)]

def optimizedBody660_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (16, 46), (12, 48), (10, 50), (14, 52)]

def optimizedBody660_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody660_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_2 optimizedBody660_3

def optimizedBody660_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody660_1, 660, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody660_4, 660, 3))

def optimizedBody660_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody660_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody660_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody660_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody660_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody660_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody660_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody660_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody660_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody660_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_13 optimizedBody660_14

def optimizedBody660_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_12 optimizedBody660_15

def optimizedBody660_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_16

def optimizedBody660_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_10 optimizedBody660_17

def optimizedBody660_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_9 optimizedBody660_18

def optimizedBody660_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_6 optimizedBody660_19

def optimizedBody660_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody660_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody660_20 optimizedBody660_21

def optimizedBody660_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14), (12, 12), (10, 10)]

def optimizedBody660_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 3486998266802970665#64)

def optimizedBody660_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13281191951274694749#64)

def optimizedBody660_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 10917124144477883021#64)

def optimizedBody660_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4332616871279656263#64)

def optimizedBody660_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody660_29 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody660_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_28 optimizedBody660_29

def optimizedBody660_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_27 optimizedBody660_30

def optimizedBody660_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_26 optimizedBody660_31

def optimizedBody660_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_25 optimizedBody660_32

def optimizedBody660_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_24 optimizedBody660_33

def optimizedBody660_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_23 optimizedBody660_34

def optimizedBody660_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_6 optimizedBody660_35

def optimizedBody660_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_6 optimizedBody660_36

def optimizedBody660_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_22 optimizedBody660_37

def optimizedBody660_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_8 optimizedBody660_38

def optimizedBody660_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_7 optimizedBody660_39

def optimizedBody660_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_6 optimizedBody660_40

def optimizedBody660_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_5 optimizedBody660_41

def optimizedBody660_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_0 optimizedBody660_42

def optimized660 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(660, 5, optimizedBody660_43)
end InitECandidate.Proofs.StackAnalysis
