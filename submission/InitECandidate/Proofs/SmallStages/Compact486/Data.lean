import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact486
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 5
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 4
              (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 6 (Flapjack.Spt.ls 4))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 1#64)

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 1#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 57)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 41)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_7

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 1#64)

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 81)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 97), (117, 97), (113, 89), (109, 93)]

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_7

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 0#64)

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81), (113, 101), (109, 105)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_28

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body2_30 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_7

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 45)]

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 73)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 25), (151, 141), (155, 117), (159, 125)]

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 137), (6, 141)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_28

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 181)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 185)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_63, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body2_75, 486, 3))

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_7

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (209, 189), (205, 177)]

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64)

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 0#64)

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 193)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_7

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (209, 197), (205, 45)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 201)]

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 53)]

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 57)]

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 29)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 57)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body2_95 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_7

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 217)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 213)]

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249)]

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(275, 221)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269)]

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 2)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_28

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(297, 285)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(289, 2)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_66

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 289)]

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 0#64)

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_141, 486, 4)) (some 78) ([2, 4]) (some (2, body2_152, 486, 5))

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_7

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_163

def pass2 : WordLangProgHOL (BitVec 64) := body2_164
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 57)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 41)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 81)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 97), (117, 97)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body3_20 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_6

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 45)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 73)]

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 25), (151, 141), (155, 117), (159, 125)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 137), (6, 141)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_38, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body3_44, 486, 3))

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_6

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (205, 177)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (205, 45)]

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body3_51 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_6

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 217)]

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205)]

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 213)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(275, 221)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(289, 2)]

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289)]

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_41

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_71, 486, 4)) (some 78) ([2, 4]) (some (2, body3_76, 486, 5))

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_6

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_87

def pass3 : WordLangProgHOL (BitVec 64) := body3_88
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 57)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 41)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 81)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 97), (117, 97)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body4_20 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_6

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 45)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 73)]

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 25), (151, 141), (155, 117), (159, 125)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 137), (6, 141)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_38, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body4_44, 486, 3))

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_6

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (205, 177)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (205, 45)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body4_51 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_6

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 217)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205)]

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 213)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(275, 221)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(289, 2)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289)]

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_41

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_71, 486, 4)) (some 78) ([2, 4]) (some (2, body4_76, 486, 5))

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_6

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_87

def pass4 : WordLangProgHOL (BitVec 64) := body4_88
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 57)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 41)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 81)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 97), (117, 97)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body5_20 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_6

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 45)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 73)]

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 25), (151, 141), (155, 117), (159, 125)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 137), (6, 141)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_38, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body5_44, 486, 3))

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_6

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (205, 177)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (205, 45)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body5_51 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_6

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 217)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205)]

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 213)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(275, 221)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(289, 2)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289)]

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_41

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_71, 486, 4)) (some 78) ([2, 4]) (some (2, body5_76, 486, 5))

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_6

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_87

def pass5 : WordLangProgHOL (BitVec 64) := body5_88
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 37)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 57)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 41)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 81)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 97), (117, 97)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body6_20 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_6

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 45)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 73)]

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 25), (151, 141), (155, 117), (159, 125)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 137), (6, 141)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_38, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body6_44, 486, 3))

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_6

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (205, 177)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (205, 45)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body6_51 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_6

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 217)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205)]

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 213)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(275, 221)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(289, 2)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289)]

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_41

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_71, 486, 4)) (some 78) ([2, 4]) (some (2, body6_76, 486, 5))

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_6

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_87

def pass6 : WordLangProgHOL (BitVec 64) := body6_88
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33), (53, 37)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53), (69, 57)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77), (81, 41)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 81), (117, 81), (97, 81)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_7

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body7_8 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29), (129, 73), (125, 45)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 125), (4, 137), (6, 121), (147, 25), (151, 121), (155, 117), (159, 125), (141, 121)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (185, 2), (165, 147), (169, 151), (173, 155), (177, 159)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_15, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body7_18, 486, 3))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (205, 177)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (205, 45)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body7_31 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205), (249, 217)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249), (261, 213)]

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269), (275, 221)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (289, 2), (281, 275)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_17

def body7_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_40, 486, 4)) (some 78) ([2, 4]) (some (2, body7_42, 486, 5))

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_59

def pass7 : WordLangProgHOL (BitVec 64) := body7_60
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8), (45, 10)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33), (53, 37)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 53), (69, 57)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 77 69 (Flapjack.WordRegImm.reg 73)))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77), (81, 41)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 81), (117, 81)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_7

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 85), (117, 81)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 81 (Flapjack.WordRegImm.reg 85) body8_8 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 29), (129, 73), (125, 45)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 129 (Flapjack.WordRegImm.reg 133)))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 137), (6, 121), (147, 25), (151, 121), (155, 117), (159, 125)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 147), (169, 151), (173, 155), (177, 159)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (165, 147), (169, 151), (173, 155), (177, 159)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_15, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body8_18, 486, 3))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 165), (217, 169), (213, 173), (205, 177)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 25), (217, 49), (213, 41), (205, 45)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 53 (Flapjack.WordRegImm.reg 57) body8_31 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 205), (249, 217)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 257 249 (Flapjack.WordRegImm.reg 253)))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 249), (261, 213)]

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 269 261 (Flapjack.WordRegImm.reg 265)))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 269), (275, 221)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 275)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (281, 275)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_17

def body8_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_40, 486, 4)) (some 78) ([2, 4]) (some (2, body8_42, 486, 5))

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 0#64)

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 301)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 281 [2]

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_59

def pass8 : WordLangProgHOL (BitVec 64) := body8_60
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 6)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (4, 4)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 4 (Flapjack.WordRegImm.reg 14)))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 8), (48, 8)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (48, 8)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) body10_8 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2), (14, 14), (2, 10)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.reg 4)))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 6), (48, 48), (50, 2)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (8, 48), (10, 50)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (8, 48), (10, 50)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_15, 486, 2)) (some 77) ([2, 4, 6]) (some (2, body10_18, 486, 3))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (12, 12), (8, 8), (10, 10)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (12, 12), (8, 8), (10, 10)]

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 4) body10_31 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 10)))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 8 (Flapjack.WordRegImm.reg 12)))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_17

def body10_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_40, 486, 4)) (some 78) ([2, 4]) (some (2, body10_42, 486, 5))

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_59

def pass10 : WordLangProgHOL (BitVec 64) := body10_60
end InitECandidate.Proofs.SmallStages.Compact486
