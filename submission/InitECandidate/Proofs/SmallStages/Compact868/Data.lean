import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact868
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 1#64)

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 33)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 37)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(45, 25)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body2_24 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64)

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_7

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_7

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_14

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_44

def pass2 : WordLangProgHOL (BitVec 64) := body2_45
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_6

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_6

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_10

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_22

def pass3 : WordLangProgHOL (BitVec 64) := body3_23
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_6

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_6

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_10

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_22

def pass4 : WordLangProgHOL (BitVec 64) := body4_23
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_6

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_6

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_10

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_22

def pass5 : WordLangProgHOL (BitVec 64) := body5_23
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 17)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_6

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_6

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_10

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_22

def pass6 : WordLangProgHOL (BitVec 64) := body6_23
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 2), (13, 0), (17, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body7_7 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_6

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_7

def body7_9 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_8

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body7_9 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_6

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_16

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_19

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_20

def pass7 : WordLangProgHOL (BitVec 64) := body7_21
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 2), (13, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25 (Flapjack.WordLangAddr.addr 21 0#64))

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 4#64)

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 41)]

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 13 [2]

def body8_7 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_6

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_7

def body8_9 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_8

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 25 (Flapjack.WordRegImm.reg 29) body8_9 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_6

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_16

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_19

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_20

def pass8 : WordLangProgHOL (BitVec 64) := body8_21
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_7 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_6

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_8

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) body10_9 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_7

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_13

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_18

def pass10 : WordLangProgHOL (BitVec 64) := body10_19
end InitECandidate.Proofs.SmallStages.Compact868
