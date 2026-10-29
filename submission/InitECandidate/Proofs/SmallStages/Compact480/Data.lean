import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact480
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(25, 21)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 1#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64)

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64)

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 1#64)

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 17)]

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 101)]

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 105)]

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_46, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body2_58, 480, 3))

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_5

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97), (205, 113), (201, 109)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_37

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_5

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 17)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157)]

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_37

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 185)]

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_49

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 189)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_106, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body2_117, 480, 5))

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_5

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181), (205, 197), (201, 193)]

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_37

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body2_66 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_5

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_134

def pass2 : WordLangProgHOL (BitVec 64) := body2_135
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(25, 21)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 17)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_15, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body3_21, 480, 3))

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_4

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 17)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_18

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_39, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body3_44, 480, 5))

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_4

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body3_28 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_4

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_60

def pass3 : WordLangProgHOL (BitVec 64) := body3_61
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(25, 21)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 17)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_15, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body4_21, 480, 3))

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_4

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 17)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_18

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_39, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body4_44, 480, 5))

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_4

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body4_28 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_4

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_60

def pass4 : WordLangProgHOL (BitVec 64) := body4_61
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(25, 21)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 17)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_15, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body5_21, 480, 3))

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_4

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 17)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_18

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_39, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body5_44, 480, 5))

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_4

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body5_28 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_4

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_60

def pass5 : WordLangProgHOL (BitVec 64) := body5_61
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(25, 21)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 17)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_15, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body6_21, 480, 3))

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_4

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(175, 17)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_18

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_39, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body6_44, 480, 5))

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_4

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body6_28 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_4

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_60

def pass6 : WordLangProgHOL (BitVec 64) := body6_61
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 2), (17, 0), (21, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73), (91, 17)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 2), (97, 91)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_8, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body7_11, 480, 3))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_13

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_16

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_19

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157), (175, 17)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (189, 2), (181, 175)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_10

def body7_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_27, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body7_29, 480, 5))

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body7_21 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_48

def pass7 : WordLangProgHOL (BitVec 64) := body7_49
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 2), (17, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 81), (6, 77), (8, 73), (91, 17)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (97, 91)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_8, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body8_11, 480, 3))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 97)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_13

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_16

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_19

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (4, 165), (6, 161), (8, 157), (175, 17)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 175)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (181, 175)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_10

def body8_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_27, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body8_29, 480, 5))

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 181)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 25 (Flapjack.WordRegImm.reg 29) body8_21 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 213)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 209 [2]

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_48

def pass8 : WordLangProgHOL (BitVec 64) := body8_49
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_7, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, body10_10, 480, 3))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_13

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_7, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body10_10, 480, 5))

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_13

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) body10_20 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_37

def pass10 : WordLangProgHOL (BitVec 64) := body10_38
end InitECandidate.Proofs.SmallStages.Compact480
