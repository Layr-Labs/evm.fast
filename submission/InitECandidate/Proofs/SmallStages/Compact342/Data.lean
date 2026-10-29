import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact342
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 4#64)))

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 45)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 69 61 (Flapjack.WordRegImm.reg 65)))

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 25)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 79)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2), (93, 4), (97, 6), (101, 8)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 89)]

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 101)]

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 93)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 97)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 105)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_39, 342, 2)) (some 161) ([2, 4]) (some (2, body2_57, 342, 3))

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 1#64)

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_62

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 1#64)

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_42

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 153), (157, 137)]

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 141)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 149)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(161, 117), (157, 129)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body2_89 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_62

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_62

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_62

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 197), (205, 193), (201, 189)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_24

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(209, 161), (205, 177), (201, 181)]

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_24

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body2_121 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_62

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64)

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_62

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 1#64)

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_62

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 1#64)

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_42

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 241), (257, 245), (253, 233), (249, 229)]

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_24

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(261, 169), (257, 209), (253, 217), (249, 221)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_24

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body2_154 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_62

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_62

def body2_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 121)]

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_116

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_170

def pass2 : WordLangProgHOL (BitVec 64) := body2_171
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 4#64)))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 45)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 69 61 (Flapjack.WordRegImm.reg 65)))

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 25)]

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 79)]

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2), (93, 4), (97, 6)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 89)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 93)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 97)]

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_30, 342, 2)) (some 161) ([2, 4]) (some (2, body3_42, 342, 3))

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_33

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_47

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_47

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body3_78 body3_64

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_47

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_47

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_33

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body3_97 body3_64

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_47

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_47

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 121)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_76

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_106

def pass3 : WordLangProgHOL (BitVec 64) := body3_107
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 41)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 45)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 25)]

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 79)]

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2), (93, 4), (97, 6)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 89)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 93)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 97)]

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_30, 342, 2)) (some 161) ([2, 4]) (some (2, body4_42, 342, 3))

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_33

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_47

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_47

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body4_78 body4_64

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_47

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_47

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_33

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body4_97 body4_64

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_47

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_47

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 121)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_76

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_106

def pass4 : WordLangProgHOL (BitVec 64) := body4_107
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 41)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 45)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 25)]

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 79)]

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2), (93, 4), (97, 6)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 89)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 93)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 97)]

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_30, 342, 2)) (some 161) ([2, 4]) (some (2, body5_42, 342, 3))

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_33

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_47

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_47

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body5_78 body5_64

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_47

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_47

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_33

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body5_97 body5_64

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_47

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_47

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 121)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_76

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_106

def pass5 : WordLangProgHOL (BitVec 64) := body5_107
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 37)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 41)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 45)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 25)]

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 79)]

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 2), (93, 4), (97, 6)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 89)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 93)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 97)]

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_30, 342, 2)) (some 161) ([2, 4]) (some (2, body6_42, 342, 3))

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_33

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_47

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_47

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body6_78 body6_64

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_47

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_47

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_33

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body6_97 body6_64

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_47

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_47

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 121)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_76

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_106

def pass6 : WordLangProgHOL (BitVec 64) := body6_107
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 4), (25, 0), (29, 2), (33, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49), (65, 45), (61, 41), (57, 37)]

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73), (79, 25)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 6), (121, 4), (109, 2), (89, 2), (93, 4), (97, 6), (85, 79)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 2), (85, 79)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_8, 342, 2)) (some 161) ([2, 4]) (some (2, body7_11, 342, 3))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_10

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body7_26 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body7_36 body7_27

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_10

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body7_50 body7_27

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 121), (273, 121)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_33

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_77

def pass7 : WordLangProgHOL (BitVec 64) := body7_78
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 4), (25, 0), (29, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 41 37 (Flapjack.WordRegImm.imm 4#64)))

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 29)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 49 41 (Flapjack.WordRegImm.reg 45)))

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 0#64))

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 8#64))

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 53), (4, 73), (79, 25)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 6), (121, 4), (109, 2), (85, 79)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (85, 79)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_8, 342, 2)) (some 161) ([2, 4]) (some (2, body8_11, 342, 3))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 109)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 17#64)

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 145)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 6#64)

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_10

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 129 (Flapjack.WordRegImm.reg 133) body8_26 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 125)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 85 [2]

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 181 (Flapjack.WordRegImm.reg 185) body8_36 body8_27

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 181)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 20#64)

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 17#64)

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 241)

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 6#64)

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_10

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 221 (Flapjack.WordRegImm.reg 225) body8_50 body8_27

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 121)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_33

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_77

def pass8 : WordLangProgHOL (BitVec 64) := body8_78
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 44)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_8, 342, 2)) (some 161) ([2, 4]) (some (2, body10_11, 342, 3))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_10

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_25 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) body10_33 body10_26

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 20#64)

def body10_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) body10_25 body10_26

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_30

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_62

def pass10 : WordLangProgHOL (BitVec 64) := body10_63
end InitECandidate.Proofs.SmallStages.Compact342
