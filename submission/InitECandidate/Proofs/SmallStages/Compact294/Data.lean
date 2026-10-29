import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact294
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 0)))
            5 (Flapjack.Spt.ls 4))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 26)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 33)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body2_4 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_3

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 105)]

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body2_19, 294, 2)) (some 68) ([2]) (some (2, body2_31, 294, 3))

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 113)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 93)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 81), (135, 117), (139, 85), (143, 125), (147, 97)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (4, 121), (6, 125)]

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_10

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 173)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_22

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 177)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_55, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body2_66, 294, 5))

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_36

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157)]

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 161)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 153), (215, 193)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201), (6, 205)]

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2)]

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_10

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_22

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 233)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_93, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body2_104, 294, 7))

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_36

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 245)]

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_115

def pass2 : WordLangProgHOL (BitVec 64) := body2_116
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 33)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body3_12, 294, 2)) (some 68) ([2]) (some (2, body3_20, 294, 3))

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 113)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 93)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 81), (135, 117), (139, 85), (143, 125), (147, 97)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (4, 121), (6, 125)]

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_15

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_35, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body3_40, 294, 5))

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_25

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 161)]

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 153), (215, 193)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201), (6, 205)]

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_15

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_58, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body3_63, 294, 7))

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_25

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 245)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_74

def pass3 : WordLangProgHOL (BitVec 64) := body3_75
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 33)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body4_12, 294, 2)) (some 68) ([2]) (some (2, body4_20, 294, 3))

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 113)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 93)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 81), (135, 117), (139, 85), (143, 125), (147, 97)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (4, 121), (6, 125)]

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_15

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_35, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body4_40, 294, 5))

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_25

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 161)]

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 153), (215, 193)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201), (6, 205)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_15

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_58, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body4_63, 294, 7))

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_25

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 245)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_74

def pass4 : WordLangProgHOL (BitVec 64) := body4_75
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 33)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body5_12, 294, 2)) (some 68) ([2]) (some (2, body5_20, 294, 3))

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 113)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 93)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 81), (135, 117), (139, 85), (143, 125), (147, 97)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (4, 121), (6, 125)]

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_15

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_35, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body5_40, 294, 5))

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_25

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 161)]

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 153), (215, 193)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201), (6, 205)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_15

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_58, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body5_63, 294, 7))

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_25

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 245)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_74

def pass5 : WordLangProgHOL (BitVec 64) := body5_75
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 33)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body6_12, 294, 2)) (some 68) ([2]) (some (2, body6_20, 294, 3))

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 113)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 93)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 81), (135, 117), (139, 85), (143, 125), (147, 97)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (4, 121), (6, 125)]

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_15

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_35, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body6_40, 294, 5))

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_25

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 161)]

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 153), (215, 193)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201), (6, 205)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_15

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_58, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body6_63, 294, 7))

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_25

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 245)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_74

def pass6 : WordLangProgHOL (BitVec 64) := body6_75
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 4), (45, 8), (25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2), (101, 2), (81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 2), (81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body7_3, 294, 2)) (some 68) ([2]) (some (2, body7_6, 294, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 113), (4, 93), (6, 89), (131, 81), (135, 113), (139, 85), (143, 89), (147, 97), (125, 89), (121, 93), (117, 113)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (177, 2), (153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_5

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_10, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body7_12, 294, 5))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157), (189, 165)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 169), (6, 161), (211, 153), (215, 193), (205, 161), (201, 169)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (233, 2), (221, 211), (225, 215)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_5

def body7_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_17, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body7_19, 294, 7))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225), (245, 225)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_35

def pass7 : WordLangProgHOL (BitVec 64) := body7_36
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 4), (45, 8), (25, 0), (29, 2), (37, 6)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 45 (Flapjack.WordRegImm.reg 49)))

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (59, 25), (63, 45), (67, 49), (71, 29), (75, 37)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2), (81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (81, 59), (85, 63), (89, 67), (93, 71), (97, 75)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body8_3, 294, 2)) (some 68) ([2]) (some (2, body8_6, 294, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113), (4, 93), (6, 89), (131, 81), (135, 113), (139, 85), (143, 89), (147, 97)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (153, 131), (157, 135), (161, 139), (165, 143), (169, 147)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_5

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_10, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body8_12, 294, 5))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 157), (189, 165)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 169), (6, 161), (211, 153), (215, 193)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (221, 211), (225, 215)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_5

def body8_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_17, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body8_19, 294, 7))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_35

def pass8 : WordLangProgHOL (BitVec 64) := body8_36
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (0, 0), (10, 2), (6, 6)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 4)))

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (48, 8), (46, 4), (50, 10), (52, 6)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (6, 46), (4, 50), (52, 52)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (6, 46), (4, 50), (52, 52)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 294, 2)) (some 68) ([2]) (some (2, body10_6, 294, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 6), (52, 52)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_5

def body10_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_10, 294, 4)) (some 77) ([2, 4, 6]) (some (2, body10_12, 294, 5))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 0)))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_5

def body10_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_17, 294, 6)) (some 77) ([2, 4, 6]) (some (2, body10_19, 294, 7))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_35

def pass10 : WordLangProgHOL (BitVec 64) := body10_36
end InitECandidate.Proofs.SmallStages.Compact294
