import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact821
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.ls 22))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.ls 22)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(15, 9)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 2)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 25)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 0#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 29)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 29)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body2_13, 821, 2)) (some 713) ([]) (some (2, body2_25, 821, 3))

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_5

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 53)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_16

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 57)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_41, 821, 4)) (some 723) ([]) (some (2, body2_52, 821, 5))

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_29

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_5

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 81)]

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_16

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 85)]

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_68, 821, 6)) (some 744) ([]) (some (2, body2_79, 821, 7))

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_29

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_5

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 109)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_16

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_95, 821, 8)) (some 777) ([]) (some (2, body2_106, 821, 9))

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_29

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_117

def pass2 : WordLangProgHOL (BitVec 64) := body2_118
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(15, 9)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 29)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body3_2, 821, 2)) (some 713) ([]) (some (2, body3_8, 821, 3))

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_5

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_14, 821, 4)) (some 723) ([]) (some (2, body3_19, 821, 5))

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_11

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_5

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_25, 821, 6)) (some 744) ([]) (some (2, body3_30, 821, 7))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_11

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_5

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_36, 821, 8)) (some 777) ([]) (some (2, body3_41, 821, 9))

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_11

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_51

def pass3 : WordLangProgHOL (BitVec 64) := body3_52
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(15, 9)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 29)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body4_2, 821, 2)) (some 713) ([]) (some (2, body4_8, 821, 3))

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_5

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_14, 821, 4)) (some 723) ([]) (some (2, body4_19, 821, 5))

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_11

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_5

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_25, 821, 6)) (some 744) ([]) (some (2, body4_30, 821, 7))

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_11

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_5

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_36, 821, 8)) (some 777) ([]) (some (2, body4_41, 821, 9))

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_11

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_51

def pass4 : WordLangProgHOL (BitVec 64) := body4_52
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(15, 9)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 29)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body5_2, 821, 2)) (some 713) ([]) (some (2, body5_8, 821, 3))

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_5

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_14, 821, 4)) (some 723) ([]) (some (2, body5_19, 821, 5))

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_11

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_5

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_25, 821, 6)) (some 744) ([]) (some (2, body5_30, 821, 7))

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_11

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_5

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_36, 821, 8)) (some 777) ([]) (some (2, body5_41, 821, 9))

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_11

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_51

def pass5 : WordLangProgHOL (BitVec 64) := body5_52
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(9, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(15, 9)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 29)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body6_2, 821, 2)) (some 713) ([]) (some (2, body6_8, 821, 3))

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_5

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_14, 821, 4)) (some 723) ([]) (some (2, body6_19, 821, 5))

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_11

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_5

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_25, 821, 6)) (some 744) ([]) (some (2, body6_30, 821, 7))

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_11

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_5

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_36, 821, 8)) (some 777) ([]) (some (2, body6_41, 821, 9))

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_11

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_51

def pass6 : WordLangProgHOL (BitVec 64) := body6_52
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(15, 0), (9, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (29, 2), (21, 15)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body7_1, 821, 2)) (some 713) ([]) (some (2, body7_4, 821, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 2), (49, 43)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_3

def body7_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_8, 821, 4)) (some 723) ([]) (some (2, body7_10, 821, 5))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (85, 2), (77, 71)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_3

def body7_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_13, 821, 6)) (some 744) ([]) (some (2, body7_15, 821, 7))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (113, 2), (105, 99)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_3

def body7_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_18, 821, 8)) (some 777) ([]) (some (2, body7_20, 821, 9))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_33

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
Flapjack.WordLangProgHOL.move 1 [(15, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 15)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (21, 15)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))),
  Flapjack.Spt.ln)), body8_1, 821, 2)) (some 713) ([]) (some (2, body8_4, 821, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 21)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (49, 43)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_3

def body8_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_8, 821, 4)) (some 723) ([]) (some (2, body8_10, 821, 5))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (77, 71)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_3

def body8_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_13, 821, 6)) (some 744) ([]) (some (2, body8_15, 821, 7))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 77)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 99)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 99)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_3

def body8_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_18, 821, 8)) (some 777) ([]) (some (2, body8_20, 821, 9))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 125)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 105 [2]

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_33

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
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 821, 2)) (some 713) ([]) (some (2, body10_4, 821, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 821, 4)) (some 723) ([]) (some (2, body10_4, 821, 5))

def body10_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 821, 6)) (some 744) ([]) (some (2, body10_4, 821, 7))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_3

def body10_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_9, 821, 8)) (some 777) ([]) (some (2, body10_11, 821, 9))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_28

def pass10 : WordLangProgHOL (BitVec 64) := body10_29
end InitECandidate.Proofs.SmallStages.Compact821
