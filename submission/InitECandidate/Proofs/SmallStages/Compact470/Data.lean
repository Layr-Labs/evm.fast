import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact470
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 3)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0), (49, 2), (53, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 53)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 1#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 1#64)

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(77, 57)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body2_22 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_5

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_5

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 1#64)

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_5

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125), (149, 113), (145, 121)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_16

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_5

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141), (149, 129), (145, 137)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_16

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body2_56 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_5

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 1#64)

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_5

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 1#64)

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 177), (213, 185), (209, 189)]

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_16

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_5

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 193), (213, 201), (209, 205)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_16

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body2_91 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_5

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 1#64)

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_5

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 1#64)

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 249), (277, 241), (273, 253)]

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_16

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_5

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 265), (277, 257), (273, 269)]

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_16

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body2_126 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_5

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 273)]

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_12

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 305)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_16

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(309, 105)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_16

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body2_157 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_16

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_5

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_12

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_169

def pass2 : WordLangProgHOL (BitVec 64) := body2_170
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0), (49, 2), (53, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 53)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_4

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_4

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body3_27 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_4

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 189)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 205)]

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body3_48 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_4

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 253)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 269)]

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body3_69 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_4

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 273)]

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_8

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body3_90 body3_11

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_4

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_8

def body3_98 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_97

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_98

def pass3 : WordLangProgHOL (BitVec 64) := body3_99
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0), (49, 2), (53, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 53)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_4

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_4

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body4_27 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_4

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 189)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 205)]

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body4_48 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_4

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 253)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 269)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body4_69 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_4

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 273)]

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_8

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body4_90 body4_11

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_4

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_8

def body4_98 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_97

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_98

def pass4 : WordLangProgHOL (BitVec 64) := body4_99
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0), (49, 2), (53, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 53)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_4

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_4

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body5_27 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_4

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 189)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 205)]

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body5_48 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_4

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 253)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 269)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body5_69 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_4

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 273)]

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_8

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body5_90 body5_11

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_4

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_8

def body5_98 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_97

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_98

def pass5 : WordLangProgHOL (BitVec 64) := body5_99
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0), (49, 2), (53, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 53)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_4

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_4

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body6_27 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_4

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 189)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 205)]

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body6_48 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_4

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 253)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 269)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body6_69 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_4

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 273)]

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_8

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body6_90 body6_11

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_4

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_8

def body6_98 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_97

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_98

def pass6 : WordLangProgHOL (BitVec 64) := body6_99
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 4), (45, 0), (49, 2), (53, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_6

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_7

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body7_8 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_16

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body7_18 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 189)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 205)]

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body7_32 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 253)]

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 269)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body7_46 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209), (285, 273)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_5

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body7_59 body7_9

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_5

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_94

def pass7 : WordLangProgHOL (BitVec 64) := body7_95
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 4), (45, 0), (49, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 23#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 45 [2]

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_6

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_7

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 57 (Flapjack.WordRegImm.reg 61) body8_8 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 49)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 101 (Flapjack.WordLangAddr.addr 97 0#64))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 239#64)

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 125)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_16

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 105 (Flapjack.WordRegImm.reg 109) body8_18 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 97)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 161 157 (Flapjack.WordRegImm.imm 1#64)))

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 165 (Flapjack.WordLangAddr.addr 161 0#64))

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 165)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 189)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 205)]

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 169 (Flapjack.WordRegImm.reg 173) body8_32 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 157)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 225 221 (Flapjack.WordRegImm.imm 2#64)))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 229 (Flapjack.WordLangAddr.addr 225 0#64))

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 1#64)

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 253)]

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 269)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 233 (Flapjack.WordRegImm.reg 237) body8_46 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 209), (285, 273)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 293 285 (Flapjack.WordRegImm.reg 289)))

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 153)]

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 301 293 (Flapjack.WordRegImm.reg 297)))

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 305)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_5

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 301 (Flapjack.WordRegImm.imm 0#64) body8_59 body8_9

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 313)]

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_5

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_94

def pass8 : WordLangProgHOL (BitVec 64) := body8_95
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_6

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) body10_8 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 8 0#64))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 239#64)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_15

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) body10_17 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 1#64)))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_25

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) body10_27 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 2#64)))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_35

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) body10_37 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 4 (Flapjack.WordRegImm.reg 2)))

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_6

def body10_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) body10_45 body10_9

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_8

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_75

def pass10 : WordLangProgHOL (BitVec 64) := body10_76
end InitECandidate.Proofs.SmallStages.Compact470
