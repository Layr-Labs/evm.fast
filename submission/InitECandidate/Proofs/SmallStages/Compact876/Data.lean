import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source876
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact876
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
        Flapjack.Spt.ln)))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 5#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 13)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 35)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 45)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64)

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 49)]

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_18, 876, 2)) (some 95) ([2, 4]) (some (2, body2_30, 876, 3))

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 53)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 61)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_43

def pass2 : WordLangProgHOL (BitVec 64) := body2_44
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 13)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 35)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 45)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_9, 876, 2)) (some 95) ([2, 4]) (some (2, body3_17, 876, 3))

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 53)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 61)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_30

def pass3 : WordLangProgHOL (BitVec 64) := body3_31
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 13)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 35)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 45)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_9, 876, 2)) (some 95) ([2, 4]) (some (2, body4_17, 876, 3))

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 53)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 61)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_30

def pass4 : WordLangProgHOL (BitVec 64) := body4_31
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 13)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 35)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 45)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_9, 876, 2)) (some 95) ([2, 4]) (some (2, body5_17, 876, 3))

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 53)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 61)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_30

def pass5 : WordLangProgHOL (BitVec 64) := body5_31
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 13)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 35)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 45)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_9, 876, 2)) (some 95) ([2, 4]) (some (2, body6_17, 876, 3))

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 53)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 61)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_30

def pass6 : WordLangProgHOL (BitVec 64) := body6_31
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 2), (13, 0), (17, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29), (35, 13)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2), (45, 2), (41, 35)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (49, 2), (41, 35)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_3, 876, 2)) (some 95) ([2, 4]) (some (2, body7_6, 876, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53), (61, 53)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_11

def body7_13 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_12

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_13

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_15

def pass7 : WordLangProgHOL (BitVec 64) := body7_16
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 2), (13, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 5#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 21), (4, 29), (35, 13)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2), (41, 35)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (41, 35)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_3, 876, 2)) (some 95) ([2, 4]) (some (2, body8_6, 876, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 41 [2]

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_11

def body8_13 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_12

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_13

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_15

def pass8 : WordLangProgHOL (BitVec 64) := body8_16
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 876, 2)) (some 95) ([2, 4]) (some (2, body10_6, 876, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_11

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_13

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_15

def pass10 : WordLangProgHOL (BitVec 64) := body10_16
end InitECandidate.Proofs.SmallStages.Compact876
