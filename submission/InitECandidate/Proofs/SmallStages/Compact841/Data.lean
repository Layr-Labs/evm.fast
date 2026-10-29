import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source841
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact841
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 45)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 18#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 41), (67, 49)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 63), (77, 67)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 85)]

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body2_19, 841, 2)) (some 80) ([2, 4]) (some (2, body2_31, 841, 3))

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
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 1#64)

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_36

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113), (117, 105)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 109)]

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(121, 89), (117, 97)]

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body2_56 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_36

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_36

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 1#64)

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_36

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 1#64)

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_36

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_49

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 193), (205, 197)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 201)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(209, 185), (205, 181)]

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body2_111 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64)

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_36

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 0#64)

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_36

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_49

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 185), (233, 217), (229, 189)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 221)]

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 225)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165), (233, 169), (229, 173)]

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body2_136 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_36

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_36

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_153 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 1#64)

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_36

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 1#64)

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_49

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 273), (281, 265), (277, 269)]

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_10

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(285, 245), (281, 257), (277, 253)]

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_10

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body2_167 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64)

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_36

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_36

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_36

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64)

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 1#64)

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_186 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 313), (341, 305), (337, 317)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_10

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 0#64)

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_36

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 0#64)

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 329 0#64)

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 329), (341, 321), (337, 333)]

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_202 body2_10

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body2_193 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_36

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 1#64)

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_36

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 1#64)

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_215 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369), (393, 365), (389, 357)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_10

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_36

def body2_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 0#64)

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_224 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_226 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385), (393, 381), (389, 373)]

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_10

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body2_222 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_36

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 397)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337)]

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 353)]

def body2_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413)]

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_49

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 413), (417, 413)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_10

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(421, 285), (417, 353)]

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_10

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body2_249 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_253 body2_10

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_36

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_49

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_260

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_261

def pass2 : WordLangProgHOL (BitVec 64) := body2_262
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 45)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 41), (67, 49)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 63), (77, 67)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body3_10, 841, 2)) (some 80) ([2, 4]) (some (2, body3_18, 841, 3))

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_23

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_23

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_32

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body3_68 body3_35

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_23

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_23

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_32

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 185)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165)]

def body3_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_23

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_23

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_32

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body3_93 body3_35

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_23

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_23

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 317)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 333)]

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body3_105 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_23

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385)]

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body3_120 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_23

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 397)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body3_131 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_130

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 353)]

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413)]

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_135 body3_32

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_136

def body3_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body3_137 body3_35

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_23

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_32

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_145

def pass3 : WordLangProgHOL (BitVec 64) := body3_146
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 45)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 41), (67, 49)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 63), (77, 67)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body4_10, 841, 2)) (some 80) ([2, 4]) (some (2, body4_18, 841, 3))

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_23

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_23

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_32

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body4_68 body4_35

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_23

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_23

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_32

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 185)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165)]

def body4_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_23

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_23

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_32

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body4_93 body4_35

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_23

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_23

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 317)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 333)]

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body4_105 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_23

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385)]

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body4_120 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_23

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 397)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body4_131 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_130

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 353)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413)]

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_135 body4_32

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_136

def body4_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body4_137 body4_35

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_23

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_32

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_145

def pass4 : WordLangProgHOL (BitVec 64) := body4_146
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 45)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 41), (67, 49)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 63), (77, 67)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body5_10, 841, 2)) (some 80) ([2, 4]) (some (2, body5_18, 841, 3))

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_23

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_23

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_32

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body5_68 body5_35

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_23

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_23

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_32

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 185)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165)]

def body5_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_23

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_23

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_32

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body5_93 body5_35

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_23

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_23

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 317)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 333)]

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body5_105 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_23

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385)]

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body5_120 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_23

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 397)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body5_131 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_130

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 353)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413)]

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_135 body5_32

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_136

def body5_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body5_137 body5_35

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_23

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_32

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_145

def pass5 : WordLangProgHOL (BitVec 64) := body5_146
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 45)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 41), (67, 49)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 63), (77, 67)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body6_10, 841, 2)) (some 80) ([2, 4]) (some (2, body6_18, 841, 3))

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_23

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_23

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_32

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body6_68 body6_35

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_23

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_23

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_32

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 185)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165)]

def body6_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_23

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_23

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_32

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body6_93 body6_35

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_23

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_23

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 317)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 333)]

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body6_105 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_23

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385)]

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body6_120 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_23

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 397)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body6_131 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_130

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 353)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413)]

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_135 body6_32

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_136

def body6_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body6_137 body6_35

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_23

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_32

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_145

def pass6 : WordLangProgHOL (BitVec 64) := body6_146
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2), (41, 0), (45, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57), (63, 41), (67, 49)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 2), (81, 2), (73, 63), (77, 67)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (85, 2), (73, 63), (77, 67)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body7_3, 841, 2)) (some 80) ([2, 4]) (some (2, body7_6, 841, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_13

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body7_16 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137), (149, 145)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149), (165, 161)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_13

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body7_33 body7_17

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_13

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body7_44 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_13

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body7_53 body7_17

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 317)]

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 333)]

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body7_60 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369)]

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385)]

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body7_71 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337), (401, 397)]

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body7_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 353), (413, 353)]

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_13

def body7_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body7_80 body7_17

def body7_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body7_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_83 body7_13

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_82 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_81 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_77 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_76 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_106

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_107

def body7_109 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_108

def body7_110 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_109

def body7_111 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_110

def body7_112 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_111

def body7_113 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_112

def body7_114 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_113

def body7_115 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_114

def body7_116 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_115

def body7_117 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_116

def body7_118 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_117

def body7_119 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_118

def body7_120 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_119

def body7_121 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_120

def body7_122 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_121

def body7_123 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_122

def pass7 : WordLangProgHOL (BitVec 64) := body7_123
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 2), (41, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 18#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 49), (4, 57), (63, 41), (67, 49)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 2), (73, 63), (77, 67)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (73, 63), (77, 67)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body8_3, 841, 2)) (some 80) ([2, 4]) (some (2, body8_6, 841, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 113)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 73 [2]

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_13

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 97 (Flapjack.WordRegImm.reg 101) body8_16 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 77)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 18#64)))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 145 (Flapjack.WordLangAddr.addr 141 0#64))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 137), (149, 145)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 157 153 (Flapjack.WordRegImm.imm 19#64)))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 149), (165, 161)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 165)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 18#64)

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 201)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_13

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 185 (Flapjack.WordRegImm.reg 189) body8_33 body8_17

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 225)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_13

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(237, 165)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body8_44 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 169)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_13

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 257 (Flapjack.WordRegImm.reg 261) body8_53 body8_17

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 237)]

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1#64)

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 317)]

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 333)]

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 297 (Flapjack.WordRegImm.reg 301) body8_60 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 17#64)

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 297)]

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 1#64)

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 369)]

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 0#64)

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 385)]

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 349 (Flapjack.WordRegImm.reg 353) body8_71 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 337), (401, 397)]

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 409 401 (Flapjack.WordRegImm.reg 405)))

def body8_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 353)]

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_13

def body8_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.imm 0#64) body8_80 body8_17

def body8_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body8_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 425)]

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_83 body8_13

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_82 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_81 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_77 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_76 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_106

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_107

def body8_109 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_108

def body8_110 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_109

def body8_111 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_110

def body8_112 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_111

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_112

def body8_114 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_113

def body8_115 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_114

def body8_116 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_115

def body8_117 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_116

def body8_118 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_117

def body8_119 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_118

def body8_120 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_119

def body8_121 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_120

def body8_122 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_121

def body8_123 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_122

def pass8 : WordLangProgHOL (BitVec 64) := body8_123
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (4, 46)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 841, 2)) (some 80) ([2, 4]) (some (2, body10_6, 841, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_13

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) body10_15 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 18#64)))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 19#64)))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18#64)

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_13

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) body10_29 body10_16

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_15

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def body10_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) body10_35 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_15 body10_16

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_42

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 0) body10_44 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_49

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 6) body10_51 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_12

def body10_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) body10_59 body10_16

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_60 body10_15

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_96

def pass10 : WordLangProgHOL (BitVec 64) := body10_97
end InitECandidate.Proofs.SmallStages.Compact841
