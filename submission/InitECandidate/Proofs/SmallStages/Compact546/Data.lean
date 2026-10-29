import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact546
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 22
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 33)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 57)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 61)]

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_17, 546, 2)) (some 472) ([2]) (some (2, body2_29, 546, 3))

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 75)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_8

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 85)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_20

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 89)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_46, 546, 4)) (some 542) ([]) (some (2, body2_57, 546, 5))

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_34

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_34

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 1#64)

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 109), (145, 117), (141, 121)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_8

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_34

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 125), (145, 133), (141, 137)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_8

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body2_77 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_34

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 1#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_34

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 1#64)

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173), (197, 161), (193, 169)]

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_8

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_34

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189), (197, 177), (193, 185)]

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_8

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body2_106 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_34

def body2_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_120 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_20

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 221), (229, 225)]

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_8

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(233, 205), (229, 93)]

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_8

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body2_139 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_8

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_34

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 249)]

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 1#64)

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_34

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 1#64)

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body2_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(349, 285), (345, 269), (341, 273), (337, 277), (333, 281), (329, 285), (325, 289), (321, 209)]

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_8

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_34

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 0#64)

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body2_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_186 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(349, 309), (345, 293), (341, 297), (337, 313), (333, 305), (329, 301), (325, 317), (321, 313)]

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_8

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body2_177 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_34

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 333)]

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 325)]

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(363, 81), (367, 353), (371, 357)]

def body2_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body2_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 363), (381, 367), (385, 371)]

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(389, 2)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_8

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 389)]

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_215 body2_20

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 393)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_218 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_213, 546, 6)) (some 93) ([2, 4]) (some (2, body2_224, 546, 7))

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_203 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_202 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_34

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 1#64)

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_34

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 1#64)

def body2_247 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_246

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_253 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_20

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 445), (457, 449), (453, 433)]

def body2_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 437)]

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_260

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(461, 425), (457, 401), (453, 421)]

def body2_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 0#64)

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body2_263 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 0#64)

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_34

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
.seq body2_269 body2_273

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_274

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_275 body2_34

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 381)]

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_277

def body2_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 385)]

def body2_280 : WordLangProgHOL (BitVec 64) :=
.seq body2_278 body2_279

def body2_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(487, 377)]

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 477), (4, 481)]

def body2_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body2_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(497, 2)]

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_284 body2_8

def body2_286 : WordLangProgHOL (BitVec 64) :=
.seq body2_283 body2_285

def body2_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64)

def body2_288 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_287

def body2_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(509, 497)]

def body2_290 : WordLangProgHOL (BitVec 64) :=
.seq body2_288 body2_289

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
.seq body2_286 body2_291

def body2_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body2_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_294 body2_20

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_293 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
.seq body2_283 body2_296

def body2_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(505, 501)]

def body2_299 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_298

def body2_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_300

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_297 body2_302

def body2_304 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_292, 546, 8)) (some 540) ([2, 4]) (some (2, body2_303, 546, 9))

def body2_305 : WordLangProgHOL (BitVec 64) :=
.seq body2_282 body2_304

def body2_306 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_305

def body2_307 : WordLangProgHOL (BitVec 64) :=
.seq body2_280 body2_306

def body2_308 : WordLangProgHOL (BitVec 64) :=
.seq body2_307 body2_34

def body2_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 2#64)

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_308 body2_309

def body2_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body2_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 493)]

def body2_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body2_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body2_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(533, 2)]

def body2_316 : WordLangProgHOL (BitVec 64) :=
.seq body2_315 body2_8

def body2_317 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_316

def body2_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 0#64)

def body2_319 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_318

def body2_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(545, 533)]

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_319 body2_320

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
.seq body2_317 body2_322

def body2_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(537, 2)]

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537)]

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_325 body2_20

def body2_327 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_326

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(541, 537)]

def body2_330 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_329

def body2_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 0#64)

def body2_332 : WordLangProgHOL (BitVec 64) :=
.seq body2_330 body2_331

def body2_333 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_332

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_328 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_323, 546, 10)) (some 492) ([2]) (some (2, body2_334, 546, 11))

def body2_336 : WordLangProgHOL (BitVec 64) :=
.seq body2_313 body2_335

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_312 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
.seq body2_311 body2_337

def body2_339 : WordLangProgHOL (BitVec 64) :=
.seq body2_310 body2_338

def body2_340 : WordLangProgHOL (BitVec 64) :=
.seq body2_339 body2_34

def body2_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body2_342 : WordLangProgHOL (BitVec 64) :=
.seq body2_340 body2_341

def body2_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body2_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body2_345 : WordLangProgHOL (BitVec 64) :=
.seq body2_343 body2_344

def body2_346 : WordLangProgHOL (BitVec 64) :=
.seq body2_342 body2_345

def body2_347 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_346

def pass2 : WordLangProgHOL (BitVec 64) := body2_347
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 33)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_4, 546, 2)) (some 472) ([2]) (some (2, body3_10, 546, 3))

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
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 75)]

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 85)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_7

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_22, 546, 4)) (some 542) ([]) (some (2, body3_29, 546, 5))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_15

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 121)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 137)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body3_41 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_15

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173)]

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189)]

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body3_56 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_15

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_7

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_15

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 249)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 281), (325, 289)]

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 305), (325, 317)]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body3_109 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_15

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 333)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 325)]

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(363, 81), (367, 353), (371, 357)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 363), (381, 367), (385, 371)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(389, 2)]

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 389)]

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_7

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_135, 546, 6)) (some 93) ([2, 4]) (some (2, body3_142, 546, 7))

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_15

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_153

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body3_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_158 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body3_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body3_166 : WordLangProgHOL (BitVec 64) :=
.seq body3_164 body3_165

def body3_167 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_166

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body3_169 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_168

def body3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_170 body3_7

def body3_172 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_171

def body3_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body3_172 body3_80

def body3_174 : WordLangProgHOL (BitVec 64) :=
.seq body3_173 body3_15

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_161 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_175 body3_15

def body3_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 381)]

def body3_178 : WordLangProgHOL (BitVec 64) :=
.seq body3_176 body3_177

def body3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 385)]

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_178 body3_179

def body3_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(487, 377)]

def body3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 477), (4, 481)]

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body3_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_185 body3_7

def body3_187 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_186

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_183 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_183, 546, 8)) (some 540) ([2, 4]) (some (2, body3_188, 546, 9))

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_189

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_180 body3_191

def body3_193 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_15

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body3_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 493)]

def body3_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body3_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(537, 2)]

def body3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537)]

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_199 body3_7

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_198 body3_200

def body3_202 : WordLangProgHOL (BitVec 64) :=
.seq body3_197 body3_201

def body3_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_197, 546, 10)) (some 492) ([2]) (some (2, body3_202, 546, 11))

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_196 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
.seq body3_195 body3_204

def body3_206 : WordLangProgHOL (BitVec 64) :=
.seq body3_194 body3_205

def body3_207 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_206

def body3_208 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_15

def body3_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body3_210 : WordLangProgHOL (BitVec 64) :=
.seq body3_208 body3_209

def body3_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_212

def body3_214 : WordLangProgHOL (BitVec 64) :=
.seq body3_210 body3_213

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_214

def pass3 : WordLangProgHOL (BitVec 64) := body3_215
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 33)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_4, 546, 2)) (some 472) ([2]) (some (2, body4_10, 546, 3))

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
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 75)]

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 85)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_7

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_22, 546, 4)) (some 542) ([]) (some (2, body4_29, 546, 5))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_15

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 121)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 137)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body4_41 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_15

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173)]

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body4_56 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_15

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_7

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_15

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 249)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 281), (325, 289)]

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 305), (325, 317)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body4_109 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_15

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 333)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 325)]

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(363, 81), (367, 353), (371, 357)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 363), (381, 367), (385, 371)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(389, 2)]

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 389)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_7

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_135, 546, 6)) (some 93) ([2, 4]) (some (2, body4_142, 546, 7))

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_15

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_153

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body4_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_158 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body4_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body4_166 : WordLangProgHOL (BitVec 64) :=
.seq body4_164 body4_165

def body4_167 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_166

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body4_169 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_168

def body4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_170 body4_7

def body4_172 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_171

def body4_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body4_172 body4_80

def body4_174 : WordLangProgHOL (BitVec 64) :=
.seq body4_173 body4_15

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_161 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_175 body4_15

def body4_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 381)]

def body4_178 : WordLangProgHOL (BitVec 64) :=
.seq body4_176 body4_177

def body4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 385)]

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_178 body4_179

def body4_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(487, 377)]

def body4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 477), (4, 481)]

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body4_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_185 body4_7

def body4_187 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_186

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_183 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_183, 546, 8)) (some 540) ([2, 4]) (some (2, body4_188, 546, 9))

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_189

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_180 body4_191

def body4_193 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_15

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body4_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 493)]

def body4_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body4_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(537, 2)]

def body4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537)]

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_199 body4_7

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_198 body4_200

def body4_202 : WordLangProgHOL (BitVec 64) :=
.seq body4_197 body4_201

def body4_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_197, 546, 10)) (some 492) ([2]) (some (2, body4_202, 546, 11))

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_196 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
.seq body4_195 body4_204

def body4_206 : WordLangProgHOL (BitVec 64) :=
.seq body4_194 body4_205

def body4_207 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_206

def body4_208 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_15

def body4_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body4_210 : WordLangProgHOL (BitVec 64) :=
.seq body4_208 body4_209

def body4_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_212

def body4_214 : WordLangProgHOL (BitVec 64) :=
.seq body4_210 body4_213

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_214

def pass4 : WordLangProgHOL (BitVec 64) := body4_215
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 33)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_4, 546, 2)) (some 472) ([2]) (some (2, body5_10, 546, 3))

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
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 75)]

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 85)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_7

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_22, 546, 4)) (some 542) ([]) (some (2, body5_29, 546, 5))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_15

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 121)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 137)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body5_41 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_15

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173)]

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body5_56 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_15

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_7

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_15

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 249)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 281), (325, 289)]

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 305), (325, 317)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body5_109 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_15

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 333)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 325)]

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(363, 81), (367, 353), (371, 357)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 363), (381, 367), (385, 371)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(389, 2)]

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 389)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_7

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_135, 546, 6)) (some 93) ([2, 4]) (some (2, body5_142, 546, 7))

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_15

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_153

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body5_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_158 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body5_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body5_166 : WordLangProgHOL (BitVec 64) :=
.seq body5_164 body5_165

def body5_167 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_166

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body5_169 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_168

def body5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_170 body5_7

def body5_172 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_171

def body5_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body5_172 body5_80

def body5_174 : WordLangProgHOL (BitVec 64) :=
.seq body5_173 body5_15

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_161 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_175 body5_15

def body5_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 381)]

def body5_178 : WordLangProgHOL (BitVec 64) :=
.seq body5_176 body5_177

def body5_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 385)]

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_178 body5_179

def body5_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(487, 377)]

def body5_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 477), (4, 481)]

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body5_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body5_186 : WordLangProgHOL (BitVec 64) :=
.seq body5_185 body5_7

def body5_187 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_186

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_183 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_183, 546, 8)) (some 540) ([2, 4]) (some (2, body5_188, 546, 9))

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_189

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_190

def body5_192 : WordLangProgHOL (BitVec 64) :=
.seq body5_180 body5_191

def body5_193 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_15

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body5_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 493)]

def body5_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body5_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(537, 2)]

def body5_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537)]

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_199 body5_7

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_198 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_201

def body5_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_197, 546, 10)) (some 492) ([2]) (some (2, body5_202, 546, 11))

def body5_204 : WordLangProgHOL (BitVec 64) :=
.seq body5_196 body5_203

def body5_205 : WordLangProgHOL (BitVec 64) :=
.seq body5_195 body5_204

def body5_206 : WordLangProgHOL (BitVec 64) :=
.seq body5_194 body5_205

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_15

def body5_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body5_210 : WordLangProgHOL (BitVec 64) :=
.seq body5_208 body5_209

def body5_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
.seq body5_210 body5_213

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_214

def pass5 : WordLangProgHOL (BitVec 64) := body5_215
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 33)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_4, 546, 2)) (some 472) ([2]) (some (2, body6_10, 546, 3))

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
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 75)]

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 85)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 89)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_7

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_22, 546, 4)) (some 542) ([]) (some (2, body6_29, 546, 5))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_15

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 121)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 137)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body6_41 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_15

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173)]

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body6_56 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_15

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_7

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_15

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 249)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 281), (325, 289)]

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body6_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 305), (325, 317)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body6_109 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_15

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 333)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 325)]

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(363, 81), (367, 353), (371, 357)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 363), (381, 367), (385, 371)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(389, 2)]

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 389)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_7

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_135, 546, 6)) (some 93) ([2, 4]) (some (2, body6_142, 546, 7))

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_15

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body6_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_153

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body6_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_158 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body6_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body6_166 : WordLangProgHOL (BitVec 64) :=
.seq body6_164 body6_165

def body6_167 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_166

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body6_169 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_168

def body6_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_170 body6_7

def body6_172 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_171

def body6_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body6_172 body6_80

def body6_174 : WordLangProgHOL (BitVec 64) :=
.seq body6_173 body6_15

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_161 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_175 body6_15

def body6_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 381)]

def body6_178 : WordLangProgHOL (BitVec 64) :=
.seq body6_176 body6_177

def body6_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 385)]

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_178 body6_179

def body6_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(487, 377)]

def body6_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 477), (4, 481)]

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body6_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body6_186 : WordLangProgHOL (BitVec 64) :=
.seq body6_185 body6_7

def body6_187 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_186

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_183 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_183, 546, 8)) (some 540) ([2, 4]) (some (2, body6_188, 546, 9))

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_189

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_190

def body6_192 : WordLangProgHOL (BitVec 64) :=
.seq body6_180 body6_191

def body6_193 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_15

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body6_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 493)]

def body6_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body6_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(537, 2)]

def body6_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537)]

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_199 body6_7

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_198 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_201

def body6_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_197, 546, 10)) (some 492) ([2]) (some (2, body6_202, 546, 11))

def body6_204 : WordLangProgHOL (BitVec 64) :=
.seq body6_196 body6_203

def body6_205 : WordLangProgHOL (BitVec 64) :=
.seq body6_195 body6_204

def body6_206 : WordLangProgHOL (BitVec 64) :=
.seq body6_194 body6_205

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_15

def body6_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body6_210 : WordLangProgHOL (BitVec 64) :=
.seq body6_208 body6_209

def body6_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
.seq body6_210 body6_213

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_214

def pass6 : WordLangProgHOL (BitVec 64) := body6_215
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (47, 33)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (61, 2), (53, 47)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_3, 546, 2)) (some 472) ([2]) (some (2, body7_6, 546, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 2), (85, 2), (81, 75)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (89, 2), (81, 75)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_5

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_10, 546, 4)) (some 542) ([]) (some (2, body7_12, 546, 5))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 121)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 137)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body7_19 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body7_30 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141), (205, 201)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_5

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body7_47 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257), (261, 249)]

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 281), (325, 289)]

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_59 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 305), (325, 317)]

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_69 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body7_66 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333), (4, 325), (363, 81), (367, 333), (371, 325), (357, 325), (353, 333)]

def body7_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2), (389, 2), (377, 363), (381, 367), (385, 371)]

def body7_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (393, 2), (377, 363), (381, 367), (385, 371)]

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_82 body7_5

def body7_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_81, 546, 6)) (some 93) ([2, 4]) (some (2, body7_83, 546, 7))

def body7_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body7_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body7_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body7_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body7_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body7_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body7_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body7_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body7_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body7_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body7_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body7_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_96 body7_5

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_95 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_94 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_93 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_92 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body7_102 body7_48

def body7_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 381), (4, 385), (487, 377), (481, 385), (477, 381)]

def body7_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body7_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (501, 2), (493, 487)]

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_106 body7_5

def body7_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_105, 546, 8)) (some 540) ([2, 4]) (some (2, body7_107, 546, 9))

def body7_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body7_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517), (523, 493)]

def body7_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body7_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (537, 2), (529, 523)]

def body7_113 : WordLangProgHOL (BitVec 64) :=
.seq body7_112 body7_5

def body7_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_111, 546, 10)) (some 492) ([2]) (some (2, body7_113, 546, 11))

def body7_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body7_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body7_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body7_118 : WordLangProgHOL (BitVec 64) :=
.seq body7_116 body7_117

def body7_119 : WordLangProgHOL (BitVec 64) :=
.seq body7_115 body7_118

def body7_120 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_119

def body7_121 : WordLangProgHOL (BitVec 64) :=
.seq body7_114 body7_120

def body7_122 : WordLangProgHOL (BitVec 64) :=
.seq body7_110 body7_121

def body7_123 : WordLangProgHOL (BitVec 64) :=
.seq body7_109 body7_122

def body7_124 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_123

def body7_125 : WordLangProgHOL (BitVec 64) :=
.seq body7_108 body7_124

def body7_126 : WordLangProgHOL (BitVec 64) :=
.seq body7_104 body7_125

def body7_127 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_126

def body7_128 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_127

def body7_129 : WordLangProgHOL (BitVec 64) :=
.seq body7_103 body7_128

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_91 body7_129

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_90 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
.seq body7_89 body7_131

def body7_133 : WordLangProgHOL (BitVec 64) :=
.seq body7_88 body7_132

def body7_134 : WordLangProgHOL (BitVec 64) :=
.seq body7_87 body7_133

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_86 body7_134

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_85 body7_135

def body7_137 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_136

def body7_138 : WordLangProgHOL (BitVec 64) :=
.seq body7_84 body7_137

def body7_139 : WordLangProgHOL (BitVec 64) :=
.seq body7_80 body7_138

def body7_140 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_139

def body7_141 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_140

def body7_142 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_141

def body7_143 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_142

def body7_144 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_143

def body7_145 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_144

def body7_146 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_145

def body7_147 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_146

def body7_148 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_147

def body7_149 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_148

def body7_150 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_149

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_150

def body7_152 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_151

def body7_153 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_152

def body7_154 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_153

def body7_155 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_154

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_160

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_167

def pass7 : WordLangProgHOL (BitVec 64) := body7_168
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 3#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (47, 33)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (53, 47)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_3, 546, 2)) (some 472) ([2]) (some (2, body8_6, 546, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(75, 53)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 2), (81, 75)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (81, 75)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_5

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_10, 546, 4)) (some 542) ([]) (some (2, body8_12, 546, 5))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 81#64)

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 121)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 137)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 101 (Flapjack.WordRegImm.reg 105) body8_19 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 105)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 128#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 173)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 189)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 153 (Flapjack.WordRegImm.reg 157) body8_30 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141), (205, 201)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 213 205 (Flapjack.WordRegImm.reg 209)))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 10#64)

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 217)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 221)

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 8#64)

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_5

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 213 (Flapjack.WordRegImm.imm 0#64) body8_47 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 153)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 241 237 (Flapjack.WordRegImm.imm 143#64)))

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 241)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 249 245 (Flapjack.WordRegImm.imm 4#64)))

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 245)]

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 257 253 (Flapjack.WordRegImm.imm 15#64)))

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257), (261, 249)]

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 261)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 281 277 (Flapjack.WordRegImm.imm 1#64)))

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 265)]

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 281), (325, 289)]

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_59 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 265)]

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 1#64)))

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 29#64)

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 261)]

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 317 309 (Flapjack.WordRegImm.reg 313)))

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 305), (325, 317)]

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_69 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 261 (Flapjack.WordRegImm.reg 265) body8_66 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 333), (4, 325), (363, 81), (367, 333), (371, 325)]

def body8_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2), (377, 363), (381, 367), (385, 371)]

def body8_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (377, 363), (381, 367), (385, 371)]

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_82 body8_5

def body8_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_81, 546, 6)) (some 93) ([2, 4]) (some (2, body8_83, 546, 7))

def body8_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength

def body8_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))

def body8_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409

def body8_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 18446744073709551360#64))

def body8_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 421 (Flapjack.WordLangAddr.addr 417 16#64))

def body8_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 397)]

def body8_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 1#64)))

def body8_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body8_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 441)]

def body8_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 445)

def body8_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 8#64)

def body8_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_96 body8_5

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_95 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_94 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_93 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_92 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 421 (Flapjack.WordRegImm.reg 429) body8_102 body8_48

def body8_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 381), (4, 385), (487, 377)]

def body8_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 487)]

def body8_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (493, 487)]

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_106 body8_5

def body8_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_105, 546, 8)) (some 540) ([2, 4]) (some (2, body8_107, 546, 9))

def body8_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 2#64)

def body8_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517), (523, 493)]

def body8_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 523)]

def body8_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (529, 523)]

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_112 body8_5

def body8_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_111, 546, 10)) (some 492) ([2]) (some (2, body8_113, 546, 11))

def body8_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body8_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body8_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 529 [2]

def body8_118 : WordLangProgHOL (BitVec 64) :=
.seq body8_116 body8_117

def body8_119 : WordLangProgHOL (BitVec 64) :=
.seq body8_115 body8_118

def body8_120 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_119

def body8_121 : WordLangProgHOL (BitVec 64) :=
.seq body8_114 body8_120

def body8_122 : WordLangProgHOL (BitVec 64) :=
.seq body8_110 body8_121

def body8_123 : WordLangProgHOL (BitVec 64) :=
.seq body8_109 body8_122

def body8_124 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_123

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_108 body8_124

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_104 body8_125

def body8_127 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_126

def body8_128 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_127

def body8_129 : WordLangProgHOL (BitVec 64) :=
.seq body8_103 body8_128

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_91 body8_129

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_90 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
.seq body8_89 body8_131

def body8_133 : WordLangProgHOL (BitVec 64) :=
.seq body8_88 body8_132

def body8_134 : WordLangProgHOL (BitVec 64) :=
.seq body8_87 body8_133

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_86 body8_134

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_85 body8_135

def body8_137 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_136

def body8_138 : WordLangProgHOL (BitVec 64) :=
.seq body8_84 body8_137

def body8_139 : WordLangProgHOL (BitVec 64) :=
.seq body8_80 body8_138

def body8_140 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_139

def body8_141 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_140

def body8_142 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_141

def body8_143 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_142

def body8_144 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_143

def body8_145 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_144

def body8_146 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_145

def body8_147 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_146

def body8_148 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_147

def body8_149 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_148

def body8_150 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_149

def body8_151 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_150

def body8_152 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_151

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_153

def body8_155 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_154

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_160

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_167

def pass8 : WordLangProgHOL (BitVec 64) := body8_168
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

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
  Flapjack.Spt.ln)), body10_3, 546, 2)) (some 472) ([2]) (some (2, body10_6, 546, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_9, 546, 4)) (some 542) ([]) (some (2, body10_6, 546, 5))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 81#64)

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_14

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) body10_16 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_23

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) body10_25 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_5

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) body10_40 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.imm 143#64)))

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 4#64)))

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 15#64)))

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 29#64)

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 4)))

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_50

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) body10_55 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 4)]

def body10_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def body10_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_68 body10_5

def body10_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_67, 546, 6)) (some 93) ([2, 4]) (some (2, body10_69, 546, 7))

def body10_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def body10_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def body10_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_78 body10_37

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_77 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) body10_82 body10_41

def body10_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def body10_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 546, 8)) (some 540) ([2, 4]) (some (2, body10_6, 546, 9))

def body10_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def body10_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_88 body10_5

def body10_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_87, 546, 10)) (some 492) ([2]) (some (2, body10_89, 546, 11))

def body10_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_90 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_86 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_85 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_84 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_83 body10_102

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_103

def body10_105 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_104

def body10_106 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_105

def body10_107 : WordLangProgHOL (BitVec 64) :=
.seq body10_74 body10_106

def body10_108 : WordLangProgHOL (BitVec 64) :=
.seq body10_73 body10_107

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_72 body10_108

def body10_110 : WordLangProgHOL (BitVec 64) :=
.seq body10_71 body10_109

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_110

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_70 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
.seq body10_66 body10_112

def body10_114 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_113

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_117

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_119

def body10_121 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_120

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_124

def body10_126 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_125

def body10_127 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_127

def body10_129 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_128

def body10_130 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_129

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_130

def body10_132 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_131

def body10_133 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_132

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_135

def body10_137 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_137

def body10_139 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_138

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_141

def pass10 : WordLangProgHOL (BitVec 64) := body10_142
end InitECandidate.Proofs.SmallStages.Compact546
