import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody204_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody204_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (16, 46), (12, 48), (10, 50), (14, 52)]

def optimizedBody204_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (16, 46), (12, 48), (10, 50), (14, 52)]

def optimizedBody204_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody204_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_2 optimizedBody204_3

def optimizedBody204_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody204_1, 204, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody204_4, 204, 3))

def optimizedBody204_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody204_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody204_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody204_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody204_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody204_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody204_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody204_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody204_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody204_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_13 optimizedBody204_14

def optimizedBody204_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_12 optimizedBody204_15

def optimizedBody204_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_11 optimizedBody204_16

def optimizedBody204_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_10 optimizedBody204_17

def optimizedBody204_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_9 optimizedBody204_18

def optimizedBody204_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_6 optimizedBody204_19

def optimizedBody204_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody204_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody204_20 optimizedBody204_21

def optimizedBody204_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14), (12, 12), (10, 10)]

def optimizedBody204_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 18446744073709551615#64)

def optimizedBody204_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551615#64)

def optimizedBody204_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18446744073709551615#64)

def optimizedBody204_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744069414583343#64)

def optimizedBody204_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody204_29 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody204_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_28 optimizedBody204_29

def optimizedBody204_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_27 optimizedBody204_30

def optimizedBody204_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_26 optimizedBody204_31

def optimizedBody204_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_25 optimizedBody204_32

def optimizedBody204_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_24 optimizedBody204_33

def optimizedBody204_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_23 optimizedBody204_34

def optimizedBody204_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_6 optimizedBody204_35

def optimizedBody204_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_6 optimizedBody204_36

def optimizedBody204_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_22 optimizedBody204_37

def optimizedBody204_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_8 optimizedBody204_38

def optimizedBody204_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_7 optimizedBody204_39

def optimizedBody204_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_6 optimizedBody204_40

def optimizedBody204_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_5 optimizedBody204_41

def optimizedBody204_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody204_0 optimizedBody204_42

def optimized204 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(204, 5, optimizedBody204_43)
end InitECandidate.Proofs.StackAnalysis
