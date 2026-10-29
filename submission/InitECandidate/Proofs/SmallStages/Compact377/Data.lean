import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact377
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 1#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 0#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 25)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_15

def pass2 : WordLangProgHOL (BitVec 64) := body2_16
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 25)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_11

def pass3 : WordLangProgHOL (BitVec 64) := body3_12
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 25)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_11

def pass4 : WordLangProgHOL (BitVec 64) := body4_12
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 25)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_11

def pass5 : WordLangProgHOL (BitVec 64) := body5_12
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 25)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_11

def pass6 : WordLangProgHOL (BitVec 64) := body6_12
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 4), (29, 2), (17, 0), (21, 2), (25, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body7_5 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_4

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_6

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_7

def pass7 : WordLangProgHOL (BitVec 64) := body7_8
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 4), (29, 2), (17, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 29), (4, 49), (6, 45), (8, 41)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body8_5 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_4

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_6

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_7

def pass8 : WordLangProgHOL (BitVec 64) := body8_8
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (2, 2), (0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def body10_5 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_4

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_6

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_7

def pass10 : WordLangProgHOL (BitVec 64) := body10_8
end InitECandidate.Proofs.SmallStages.Compact377
