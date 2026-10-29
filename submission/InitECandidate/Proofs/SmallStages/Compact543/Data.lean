import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact543
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_6

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body2_8 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_6

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_6

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body2_24 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_15

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 69)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_15

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 1#64)

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 101), (113, 89), (109, 97)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 105)]

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 93)]

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(117, 77), (113, 73), (109, 53)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body2_60 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_15

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_15

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 149)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_51

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_92

def pass2 : WordLangProgHOL (BitVec 64) := body2_93
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body3_6 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body3_20 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_12

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 69)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body3_44 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_12

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_12

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 149)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_42

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_66

def pass3 : WordLangProgHOL (BitVec 64) := body3_67
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body4_6 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body4_20 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_12

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 69)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body4_44 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_12

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_12

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 149)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_42

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_66

def pass4 : WordLangProgHOL (BitVec 64) := body4_67
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body5_6 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body5_20 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_12

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 69)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body5_44 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_12

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_12

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 149)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_42

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_66

def pass5 : WordLangProgHOL (BitVec 64) := body5_67
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body6_6 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body6_20 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_12

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 69)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body6_44 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_12

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_12

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 149)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_42

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_66

def pass6 : WordLangProgHOL (BitVec 64) := body6_67
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_4

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_7

def body7_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body7_5 body7_8

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body7_15 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49), (77, 69)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body7_32 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_59

def pass7 : WordLangProgHOL (BitVec 64) := body7_60
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 90#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 41)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_4

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_7

def body8_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 33 (Flapjack.WordRegImm.reg 37) body8_5 body8_8

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 128#64)

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 53 (Flapjack.WordRegImm.reg 57) body8_15 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49), (77, 69)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 85 77 (Flapjack.WordRegImm.reg 81)))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 53)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 101 97 (Flapjack.WordRegImm.imm 145#64)))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 105 101 (Flapjack.WordRegImm.imm 255#64)))

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 105)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 85) body8_32 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 10#64)

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 137)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 141)

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 8#64)

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_59

def pass8 : WordLangProgHOL (BitVec 64) := body8_60
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 90#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_4

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_7 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_4

def body10_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 2) body10_5 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_12

def body10_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 4) body10_13 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 145#64)))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 255#64)))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 4) body10_27 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_54

def pass10 : WordLangProgHOL (BitVec 64) := body10_55
end InitECandidate.Proofs.SmallStages.Compact543
