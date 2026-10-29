import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact714
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 0
            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10), (49, 12)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 49)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 45)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body2_4 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_3

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 1#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 1#64)

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 105)]

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(113, 93)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body2_42 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_25

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_25

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_32

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_62

def pass2 : WordLangProgHOL (BitVec 64) := body2_63
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10), (49, 12)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 49)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 45)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_24

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_24

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_28

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_40

def pass3 : WordLangProgHOL (BitVec 64) := body3_41
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10), (49, 12)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 49)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 45)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_24

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_24

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_28

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_40

def pass4 : WordLangProgHOL (BitVec 64) := body4_41
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10), (49, 12)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 49)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 45)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_24

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_24

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_28

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_40

def pass5 : WordLangProgHOL (BitVec 64) := body5_41
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10), (49, 12)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 49)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 45)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_24

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_24

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_28

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_40

def pass6 : WordLangProgHOL (BitVec 64) := body6_41
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 10), (53, 12), (25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10), (49, 12)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_16

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body7_17 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_14

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_36

def pass7 : WordLangProgHOL (BitVec 64) := body7_37
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 10), (53, 12), (25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 41)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 69 61 (Flapjack.WordRegImm.reg 65)))

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 37)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 77 69 (Flapjack.WordRegImm.reg 73)))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 33)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 29)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 93 85 (Flapjack.WordRegImm.reg 89)))

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 109)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_16

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 93 (Flapjack.WordRegImm.reg 97) body8_17 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 133)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_14

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_36

def pass8 : WordLangProgHOL (BitVec 64) := body8_37
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (12, 12), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_13

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) body10_16 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_14

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_33

def pass10 : WordLangProgHOL (BitVec 64) := body10_34
end InitECandidate.Proofs.SmallStages.Compact714
