import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact361
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 4))))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 45), (57, 49)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 41)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21), (57, 29)]

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body2_28 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_5

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_5

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 20#64)

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body2_52 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_55

def pass2 : WordLangProgHOL (BitVec 64) := body2_56
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 45)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_4

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_4

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_33

def pass3 : WordLangProgHOL (BitVec 64) := body3_34
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 45)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_4

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_4

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_33

def pass4 : WordLangProgHOL (BitVec 64) := body4_34
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 45)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_4

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_4

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_33

def pass5 : WordLangProgHOL (BitVec 64) := body5_34
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2), (25, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 45)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_4

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_4

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_33

def pass6 : WordLangProgHOL (BitVec 64) := body6_34
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 4), (17, 0), (21, 2), (25, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body7_9 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_8

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_11

def body7_13 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_12

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_13

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body7_14 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29), (81, 61)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_27

def pass7 : WordLangProgHOL (BitVec 64) := body7_28
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 4), (17, 0), (21, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 128#64)

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 49 (Flapjack.WordLangAddr.addr 45 0#64))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 53)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 17 [2]

def body8_9 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_8

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_11

def body8_13 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_12

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_13

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(61, 21)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 29 (Flapjack.WordRegImm.reg 33) body8_14 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 29), (81, 61)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 20#64)

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 17), (2, 81), (4, 85), (6, 93)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_27

def pass8 : WordLangProgHOL (BitVec 64) := body8_28
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_8

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_11

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) body10_13 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_26

def pass10 : WordLangProgHOL (BitVec 64) := body10_27
end InitECandidate.Proofs.SmallStages.Compact361
