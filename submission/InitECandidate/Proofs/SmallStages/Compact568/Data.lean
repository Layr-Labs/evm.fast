import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact568
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 4
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls 22))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 25)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2), (45, 4), (49, 6), (53, 8)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 53)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 41)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 49)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 45)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 57)]

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body2_19, 568, 2)) (some 477) ([]) (some (2, body2_37, 568, 3))

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 65)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 73)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 61)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 37)]

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (4, 85), (6, 89), (8, 93)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_5

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_22

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_62, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body2_73, 568, 5))

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_41

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 117)]

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 105), (135, 125)]

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 131), (145, 135)]

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_5

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_22

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 153)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_92, 568, 6)) (some 497) ([2]) (some (2, body2_103, 568, 7))

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_41

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 141), (179, 165), (183, 145)]

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 2)]

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_5

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 201)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_120 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2)]

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_22

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 0#64)

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 205)]

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_124, 568, 8)) (some 472) ([2]) (some (2, body2_135, 568, 9))

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_41

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 197)]

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(227, 189), (231, 217)]

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (4, 221)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 2)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_5

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 245)]

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 2)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_22

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 249)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_156, 568, 10)) (some 498) ([2, 4]) (some (2, body2_167, 568, 11))

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_41

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 241)]

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(267, 237)]

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 267)]

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2), (281, 4)]

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_5

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(289, 277)]

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 281)]

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 0#64)

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 2)]

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_22

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_191

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64)

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(297, 285)]

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_188, 568, 12)) (some 567) ([2]) (some (2, body2_201, 568, 13))

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_41

def body2_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 293)]

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(307, 273)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 301)]

def body2_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(317, 2)]

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_5

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 0#64)

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 317)]

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_22

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 321)]

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 329 0#64)

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_220, 568, 14)) (some 479) ([2]) (some (2, body2_231, 568, 15))

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_41

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 1#64)

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(343, 313)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337)]

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 2)]

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_5

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body2_247 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_246

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 353)]

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(357, 2)]

def body2_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 357)]

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_253 body2_22

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 357)]

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_260

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_251, 568, 16)) (some 492) ([2]) (some (2, body2_262, 568, 17))

def body2_264 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_263

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_267 body2_41

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_268 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_273

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_274

def pass2 : WordLangProgHOL (BitVec 64) := body2_275
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 25)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2), (45, 4), (49, 6), (53, 8)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 53)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 41)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 49)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 45)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body3_12, 568, 2)) (some 477) ([]) (some (2, body3_26, 568, 3))

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 65)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 73)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 61)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 37)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (4, 85), (6, 89), (8, 93)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_15

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_45, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body3_52, 568, 5))

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_29

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 117)]

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 105), (135, 125)]

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 131), (145, 135)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_15

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_66, 568, 6)) (some 497) ([2]) (some (2, body3_73, 568, 7))

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_29

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 141), (179, 165), (183, 145)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_15

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_85, 568, 8)) (some 472) ([2]) (some (2, body3_90, 568, 9))

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_29

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 197)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(227, 189), (231, 217)]

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (4, 221)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 2)]

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_15

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_102, 568, 10)) (some 498) ([2, 4]) (some (2, body3_107, 568, 11))

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_29

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 241)]

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(267, 237)]

def body3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 267)]

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 4)]

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 281)]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 2)]

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_15

def body3_125 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_121, 568, 12)) (some 567) ([2]) (some (2, body3_128, 568, 13))

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_130

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_29

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 293)]

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(307, 273)]

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 301)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_15

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_142

def body3_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_138, 568, 14)) (some 479) ([2]) (some (2, body3_143, 568, 15))

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_135 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_29

def body3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body3_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(343, 313)]

def body3_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337)]

def body3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(357, 2)]

def body3_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 357)]

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_15

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_152, 568, 16)) (some 492) ([2]) (some (2, body3_157, 568, 17))

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_151 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_149 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_29

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body3_168 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_167

def body3_169 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_168

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_169

def pass3 : WordLangProgHOL (BitVec 64) := body3_170
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 25)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2), (45, 4), (49, 6), (53, 8)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 53)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 41)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 49)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 45)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body4_12, 568, 2)) (some 477) ([]) (some (2, body4_26, 568, 3))

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 65)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 73)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 61)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 37)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (4, 85), (6, 89), (8, 93)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_15

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_45, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body4_52, 568, 5))

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_29

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 117)]

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 105), (135, 125)]

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 131), (145, 135)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_15

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_66, 568, 6)) (some 497) ([2]) (some (2, body4_73, 568, 7))

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_29

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 141), (179, 165), (183, 145)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_15

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_85, 568, 8)) (some 472) ([2]) (some (2, body4_90, 568, 9))

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_29

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 197)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(227, 189), (231, 217)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (4, 221)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 2)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_15

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_102, 568, 10)) (some 498) ([2, 4]) (some (2, body4_107, 568, 11))

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_29

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 241)]

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(267, 237)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 267)]

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 4)]

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 281)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 2)]

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_15

def body4_125 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_121, 568, 12)) (some 567) ([2]) (some (2, body4_128, 568, 13))

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_130

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_29

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 293)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(307, 273)]

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 301)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_15

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_142

def body4_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_138, 568, 14)) (some 479) ([2]) (some (2, body4_143, 568, 15))

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_135 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_29

def body4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body4_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(343, 313)]

def body4_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337)]

def body4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(357, 2)]

def body4_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 357)]

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_15

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_152, 568, 16)) (some 492) ([2]) (some (2, body4_157, 568, 17))

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_151 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_149 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_29

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body4_168 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_167

def body4_169 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_168

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_169

def pass4 : WordLangProgHOL (BitVec 64) := body4_170
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 25)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2), (45, 4), (49, 6), (53, 8)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 53)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 41)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 49)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 45)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body5_12, 568, 2)) (some 477) ([]) (some (2, body5_26, 568, 3))

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 65)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 73)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 61)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 37)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (4, 85), (6, 89), (8, 93)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_15

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_45, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body5_52, 568, 5))

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_29

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 117)]

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 105), (135, 125)]

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 131), (145, 135)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_15

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_66, 568, 6)) (some 497) ([2]) (some (2, body5_73, 568, 7))

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_29

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 141), (179, 165), (183, 145)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_15

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_85, 568, 8)) (some 472) ([2]) (some (2, body5_90, 568, 9))

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_29

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 197)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(227, 189), (231, 217)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (4, 221)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 2)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_15

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_102, 568, 10)) (some 498) ([2, 4]) (some (2, body5_107, 568, 11))

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_29

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 241)]

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(267, 237)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 267)]

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 4)]

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 281)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 2)]

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_15

def body5_125 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_121, 568, 12)) (some 567) ([2]) (some (2, body5_128, 568, 13))

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_130

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_29

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 293)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(307, 273)]

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 301)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_15

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_142

def body5_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_138, 568, 14)) (some 479) ([2]) (some (2, body5_143, 568, 15))

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_135 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_29

def body5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body5_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(343, 313)]

def body5_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337)]

def body5_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(357, 2)]

def body5_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 357)]

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_15

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_152, 568, 16)) (some 492) ([2]) (some (2, body5_157, 568, 17))

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_151 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_149 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_29

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body5_168 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_167

def body5_169 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_168

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_169

def pass5 : WordLangProgHOL (BitVec 64) := body5_170
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 25)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2), (45, 4), (49, 6), (53, 8)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 53)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 41)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 49)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 45)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body6_12, 568, 2)) (some 477) ([]) (some (2, body6_26, 568, 3))

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 65)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 77)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 73)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 61)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 37)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (4, 85), (6, 89), (8, 93)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_15

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_45, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body6_52, 568, 5))

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_29

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 117)]

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(131, 105), (135, 125)]

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 131), (145, 135)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_15

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_66, 568, 6)) (some 497) ([2]) (some (2, body6_73, 568, 7))

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_29

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 141), (179, 165), (183, 145)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_15

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_85, 568, 8)) (some 472) ([2]) (some (2, body6_90, 568, 9))

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_29

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 197)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(227, 189), (231, 217)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (4, 221)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 2)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_15

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_102, 568, 10)) (some 498) ([2, 4]) (some (2, body6_107, 568, 11))

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_29

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 241)]

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(267, 237)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 267)]

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 4)]

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 281)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 2)]

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_15

def body6_125 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_121, 568, 12)) (some 567) ([2]) (some (2, body6_128, 568, 13))

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_130

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_29

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 293)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(307, 273)]

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 301)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_15

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_142

def body6_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_138, 568, 14)) (some 479) ([2]) (some (2, body6_143, 568, 15))

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_135 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_29

def body6_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body6_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(343, 313)]

def body6_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337)]

def body6_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(357, 2)]

def body6_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 357)]

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_15

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_152, 568, 16)) (some 492) ([2]) (some (2, body6_157, 568, 17))

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_151 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_149 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_29

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body6_168 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_167

def body6_169 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_168

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_169

def pass6 : WordLangProgHOL (BitVec 64) := body6_170
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(31, 0), (25, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 4), (73, 6), (65, 2), (61, 8), (41, 2), (45, 4), (49, 6), (53, 8), (37, 31)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 2), (37, 31)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body7_1, 568, 2)) (some 477) ([]) (some (2, body7_4, 568, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65), (4, 77), (6, 73), (8, 61), (99, 37), (93, 61), (89, 73), (85, 77), (81, 65)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2), (109, 2), (105, 99)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (113, 2), (105, 99)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_3

def body7_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_8, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body7_10, 568, 5))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (131, 105), (135, 117), (125, 117)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2), (149, 2), (141, 131), (145, 135)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (153, 2), (141, 131), (145, 135)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_3

def body7_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_13, 568, 6)) (some 497) ([2]) (some (2, body7_15, 568, 7))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (175, 141), (179, 165), (183, 145)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (205, 2), (189, 175), (193, 179), (197, 183)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_3

def body7_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_20, 568, 8)) (some 472) ([2]) (some (2, body7_22, 568, 9))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193), (227, 189), (231, 197), (221, 193), (217, 197)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (249, 2), (237, 227), (241, 231)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_3

def body7_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_25, 568, 10)) (some 498) ([2, 4]) (some (2, body7_27, 568, 11))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241), (267, 237), (261, 241)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 4), (281, 4), (273, 267)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (285, 2), (273, 267)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_3

def body7_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_30, 568, 12)) (some 567) ([2]) (some (2, body7_32, 568, 13))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 293), (307, 273), (301, 293)]

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (321, 2), (313, 307)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_3

def body7_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_35, 568, 14)) (some 479) ([2]) (some (2, body7_37, 568, 15))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337), (343, 313)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (357, 2), (349, 343)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_3

def body7_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_41, 568, 16)) (some 492) ([2]) (some (2, body7_43, 568, 17))

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_75

def pass7 : WordLangProgHOL (BitVec 64) := body7_76
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(31, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 4), (73, 6), (65, 2), (61, 8), (37, 31)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (37, 31)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body8_1, 568, 2)) (some 477) ([]) (some (2, body8_4, 568, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65), (4, 77), (6, 73), (8, 61), (99, 37)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2), (105, 99)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 99)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_3

def body8_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_8, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body8_10, 568, 5))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117), (131, 105), (135, 117)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2), (141, 131), (145, 135)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (141, 131), (145, 135)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_3

def body8_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_13, 568, 6)) (some 497) ([2]) (some (2, body8_15, 568, 7))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 100#64)))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (175, 141), (179, 165), (183, 145)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 175), (193, 179), (197, 183)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (189, 175), (193, 179), (197, 183)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_3

def body8_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_20, 568, 8)) (some 472) ([2]) (some (2, body8_22, 568, 9))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193), (227, 189), (231, 197)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 227), (241, 231)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (237, 227), (241, 231)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_3

def body8_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_25, 568, 10)) (some 498) ([2, 4]) (some (2, body8_27, 568, 11))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241), (267, 237)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 4), (273, 267)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (273, 267)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_3

def body8_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_30, 568, 12)) (some 567) ([2]) (some (2, body8_32, 568, 13))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 293), (307, 273)]

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 307)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (313, 307)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_3

def body8_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_35, 568, 14)) (some 479) ([2]) (some (2, body8_37, 568, 15))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 1#64)

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 337), (343, 313)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 343)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (349, 343)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_3

def body8_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_41, 568, 16)) (some 492) ([2]) (some (2, body8_43, 568, 17))

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 369)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 349 [2]

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_75

def pass8 : WordLangProgHOL (BitVec 64) := body8_76
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 568, 2)) (some 477) ([]) (some (2, body10_4, 568, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_8, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, body10_4, 568, 5))

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_3

def body10_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_11, 568, 6)) (some 497) ([2]) (some (2, body10_13, 568, 7))

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 100#64)))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_3

def body10_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_18, 568, 8)) (some 472) ([2]) (some (2, body10_20, 568, 9))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_3

def body10_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_23, 568, 10)) (some 498) ([2, 4]) (some (2, body10_25, 568, 11))

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_28, 568, 12)) (some 567) ([2]) (some (2, body10_4, 568, 13))

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_31, 568, 14)) (some 479) ([2]) (some (2, body10_4, 568, 15))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_3

def body10_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_34, 568, 16)) (some 492) ([2]) (some (2, body10_36, 568, 17))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_68

def pass10 : WordLangProgHOL (BitVec 64) := body10_69
end InitECandidate.Proofs.SmallStages.Compact568
