import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source790
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact790
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0), (13, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(17, 13)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(23, 9), (27, 17)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 17)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 41)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_15, 790, 2)) (some 741) ([2]) (some (2, body2_27, 790, 3))

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 57)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_6

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 85)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_18

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 89)]

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_49, 790, 4)) (some 741) ([2]) (some (2, body2_60, 790, 5))

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_32

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(111, 77)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_6

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 121)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_18

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 125)]

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_81, 790, 6)) (some 740) ([2]) (some (2, body2_92, 790, 7))

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_32

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_103

def pass2 : WordLangProgHOL (BitVec 64) := body2_104
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0), (13, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(17, 13)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(23, 9), (27, 17)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 17)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_4, 790, 2)) (some 741) ([2]) (some (2, body3_10, 790, 3))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 57)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_7

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_23, 790, 4)) (some 741) ([2]) (some (2, body3_28, 790, 5))

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_15

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(111, 77)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_7

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_40, 790, 6)) (some 740) ([2]) (some (2, body3_45, 790, 7))

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_15

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_56

def pass3 : WordLangProgHOL (BitVec 64) := body3_57
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0), (13, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(17, 13)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(23, 9), (27, 17)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 17)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_4, 790, 2)) (some 741) ([2]) (some (2, body4_10, 790, 3))

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 57)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_7

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_23, 790, 4)) (some 741) ([2]) (some (2, body4_28, 790, 5))

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_15

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(111, 77)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_7

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_40, 790, 6)) (some 740) ([2]) (some (2, body4_45, 790, 7))

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_15

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_56

def pass4 : WordLangProgHOL (BitVec 64) := body4_57
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0), (13, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(17, 13)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(23, 9), (27, 17)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 17)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_4, 790, 2)) (some 741) ([2]) (some (2, body5_10, 790, 3))

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 57)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_7

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_23, 790, 4)) (some 741) ([2]) (some (2, body5_28, 790, 5))

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_15

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(111, 77)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_7

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_40, 790, 6)) (some 740) ([2]) (some (2, body5_45, 790, 7))

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_15

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_56

def pass5 : WordLangProgHOL (BitVec 64) := body5_57
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0), (13, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(17, 13)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(23, 9), (27, 17)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 17)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_4, 790, 2)) (some 741) ([2]) (some (2, body6_10, 790, 3))

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 57)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_7

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_23, 790, 4)) (some 741) ([2]) (some (2, body6_28, 790, 5))

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_15

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(111, 77)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_7

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_40, 790, 6)) (some 740) ([2]) (some (2, body6_45, 790, 7))

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_15

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_56

def pass6 : WordLangProgHOL (BitVec 64) := body6_57
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (23, 0), (27, 2), (17, 2), (9, 0), (13, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (45, 2), (33, 23), (37, 27)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_1, 790, 2)) (some 741) ([2]) (some (2, body7_4, 790, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61), (67, 33), (71, 57)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (89, 2), (77, 67), (81, 71)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_3

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_10, 790, 4)) (some 741) ([2]) (some (2, body7_12, 790, 5))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105), (111, 77)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (125, 2), (117, 111)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_3

def body7_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_17, 790, 6)) (some 740) ([2]) (some (2, body7_19, 790, 7))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_37

def pass7 : WordLangProgHOL (BitVec 64) := body7_38
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (23, 0), (27, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 23), (37, 27)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (33, 23), (37, 27)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_1, 790, 2)) (some 741) ([2]) (some (2, body8_4, 790, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 61 57 (Flapjack.WordRegImm.imm 96#64)))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61), (67, 33), (71, 57)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 67), (81, 71)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (77, 67), (81, 71)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_3

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_10, 790, 4)) (some 741) ([2]) (some (2, body8_12, 790, 5))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 81)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 105 101 (Flapjack.WordRegImm.imm 192#64)))

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105), (111, 77)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 111)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (117, 111)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_3

def body8_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_17, 790, 6)) (some 740) ([2]) (some (2, body8_19, 790, 7))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 117 [2]

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_37

def pass8 : WordLangProgHOL (BitVec 64) := body8_38
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 790, 2)) (some 741) ([2]) (some (2, body10_4, 790, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 790, 4)) (some 741) ([2]) (some (2, body10_4, 790, 5))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_3

def body10_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_13, 790, 6)) (some 740) ([2]) (some (2, body10_15, 790, 7))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_33

def pass10 : WordLangProgHOL (BitVec 64) := body10_34
end InitECandidate.Proofs.SmallStages.Compact790
