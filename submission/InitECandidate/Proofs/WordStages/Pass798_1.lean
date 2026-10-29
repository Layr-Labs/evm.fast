import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass798_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word798_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word798_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word798_1_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([126]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 2)) (some 69) ([]) (some (26, word798_1_1, 798, 3))

def word798_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word798_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_2 word798_1_3

def word798_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 106 720#64)

def word798_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_4 word798_1_5

def word798_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word798_1_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 4)) (some 68) ([106]) (some (106, word798_1_7, 798, 5))

def word798_1_9 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_5 word798_1_8

def word798_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_6 word798_1_9

def word798_1_11 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_10 word798_1_3

def word798_1_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(167, 4)]

def word798_1_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 106 (Flapjack.WordLangAddr.addr 167 0#64))

def word798_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_13

def word798_1_15 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_11 word798_1_14

def word798_1_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 167 8#64))

def word798_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_16

def word798_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_15 word798_1_17

def word798_1_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 148 (Flapjack.WordLangAddr.addr 167 16#64))

def word798_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_19

def word798_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_18 word798_1_20

def word798_1_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 167 24#64))

def word798_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_22

def word798_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_21 word798_1_23

def word798_1_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 96 (Flapjack.WordLangAddr.addr 167 32#64))

def word798_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_25

def word798_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_24 word798_1_26

def word798_1_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 56 (Flapjack.WordLangAddr.addr 167 40#64))

def word798_1_29 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_28

def word798_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_27 word798_1_29

def word798_1_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 138 (Flapjack.WordLangAddr.addr 167 48#64))

def word798_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_31

def word798_1_33 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_30 word798_1_32

def word798_1_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 167 56#64))

def word798_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_34

def word798_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_33 word798_1_35

def word798_1_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 116 (Flapjack.WordLangAddr.addr 167 64#64))

def word798_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_37

def word798_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_36 word798_1_38

def word798_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 76 (Flapjack.WordLangAddr.addr 167 72#64))

def word798_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_40

def word798_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_39 word798_1_41

def word798_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 158 (Flapjack.WordLangAddr.addr 167 80#64))

def word798_1_44 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_43

def word798_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_42 word798_1_44

def word798_1_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 167 88#64))

def word798_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_46

def word798_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_45 word798_1_47

def word798_1_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 90 (Flapjack.WordLangAddr.addr 167 96#64))

def word798_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_49

def word798_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_48 word798_1_50

def word798_1_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 167 104#64))

def word798_1_53 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_52

def word798_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_51 word798_1_53

def word798_1_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 132 (Flapjack.WordLangAddr.addr 167 112#64))

def word798_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_55

def word798_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_54 word798_1_56

def word798_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 167 120#64))

def word798_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_58

def word798_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_57 word798_1_59

def word798_1_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 112 (Flapjack.WordLangAddr.addr 167 128#64))

def word798_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_61

def word798_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_60 word798_1_62

def word798_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 72 (Flapjack.WordLangAddr.addr 167 136#64))

def word798_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_12 word798_1_64

def word798_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_63 word798_1_65

def word798_1_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(154, 90)]

def word798_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_66 word798_1_67

def word798_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 50)]

def word798_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_68 word798_1_69

def word798_1_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 132)]

def word798_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_70 word798_1_71

def word798_1_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 32)]

def word798_1_74 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_72 word798_1_73

def word798_1_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(144, 112)]

def word798_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_74 word798_1_75

def word798_1_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 72)]

def word798_1_78 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_76 word798_1_77

def word798_1_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 26)]

def word798_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_78 word798_1_79

def word798_1_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 154)]

def word798_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_80 word798_1_81

def word798_1_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(164, 22)]

def word798_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_82 word798_1_83

def word798_1_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 102)]

def word798_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_84 word798_1_85

def word798_1_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(88, 62)]

def word798_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_86 word798_1_87

def word798_1_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 144)]

def word798_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_88 word798_1_89

def word798_1_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 42)]

def word798_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_90 word798_1_91

def word798_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 82)]

def word798_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_92 word798_1_93

def word798_1_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(167, 122)]

def word798_1_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 167 0#64))

def word798_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_96

def word798_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_94 word798_1_97

def word798_1_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 164)]

def word798_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_98 word798_1_99

def word798_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 167 8#64))

def word798_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_101

def word798_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_100 word798_1_102

def word798_1_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 8)]

def word798_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_103 word798_1_104

def word798_1_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 167 16#64))

def word798_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_106

def word798_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_105 word798_1_107

def word798_1_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 88)]

def word798_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_108 word798_1_109

def word798_1_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 167 24#64))

def word798_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_111

def word798_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_110 word798_1_112

def word798_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 48)]

def word798_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_113 word798_1_114

def word798_1_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 167 32#64))

def word798_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_116

def word798_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_115 word798_1_117

def word798_1_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 130)]

def word798_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_118 word798_1_119

def word798_1_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 167 40#64))

def word798_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_121

def word798_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_120 word798_1_122

def word798_1_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 122 1#64)

def word798_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_123 word798_1_124

def word798_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_125 word798_1_3

def word798_1_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(164, 122)]

def word798_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 15#64)

def word798_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_127 word798_1_128

def word798_1_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 164 1#64)

def word798_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_130 word798_1_3

def word798_1_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 88 1#64)

def word798_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_131 word798_1_132

def word798_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_133 word798_1_81

def word798_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_134 word798_1_83

def word798_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_135 word798_1_85

def word798_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_136 word798_1_87

def word798_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_137 word798_1_89

def word798_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_138 word798_1_91

def word798_1_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 90)]

def word798_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_139 word798_1_140

def word798_1_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(110, 50)]

def word798_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_141 word798_1_142

def word798_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 132)]

def word798_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_143 word798_1_144

def word798_1_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 32)]

def word798_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_145 word798_1_146

def word798_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 112)]

def word798_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_147 word798_1_148

def word798_1_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(100, 72)]

def word798_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_149 word798_1_150

def word798_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 82

def word798_1_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([154, 22, 102, 62, 144, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 6)) (some 714) ([82, 164, 8, 88, 48, 130, 30, 110, 70, 152, 20, 100]) (some (82, word798_1_152, 798, 7))

def word798_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_151 word798_1_153

def word798_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_154 word798_1_3

def word798_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 122)]

def word798_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_155 word798_1_156

def word798_1_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 164 48#64)

def word798_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_157 word798_1_158

def word798_1_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 82 164))

def word798_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_159 word798_1_160

def word798_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(167, 8)]

def word798_1_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(168, 26)]

def word798_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 88 167 (Flapjack.WordRegImm.reg 168)))

def word798_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_163 word798_1_164

def word798_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_162 word798_1_165

def word798_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_161 word798_1_166

def word798_1_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 154)]

def word798_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_167 word798_1_168

def word798_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 22)]

def word798_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_169 word798_1_170

def word798_1_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 102)]

def word798_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_171 word798_1_172

def word798_1_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(110, 62)]

def word798_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_173 word798_1_174

def word798_1_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 144)]

def word798_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_175 word798_1_176

def word798_1_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 42)]

def word798_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_177 word798_1_178

def word798_1_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 48)]

def word798_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_179 word798_1_180

def word798_1_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(167, 88)]

def word798_1_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 167 0#64))

def word798_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_182 word798_1_183

def word798_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_181 word798_1_184

def word798_1_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 130)]

def word798_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_185 word798_1_186

def word798_1_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 167 8#64))

def word798_1_189 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_182 word798_1_188

def word798_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_187 word798_1_189

def word798_1_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 30)]

def word798_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_190 word798_1_191

def word798_1_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 167 16#64))

def word798_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_182 word798_1_193

def word798_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_192 word798_1_194

def word798_1_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 110)]

def word798_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_195 word798_1_196

def word798_1_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 167 24#64))

def word798_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_182 word798_1_198

def word798_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_197 word798_1_199

def word798_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 70)]

def word798_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_200 word798_1_201

def word798_1_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 167 32#64))

def word798_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_182 word798_1_203

def word798_1_205 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_202 word798_1_204

def word798_1_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 152)]

def word798_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_205 word798_1_206

def word798_1_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 167 40#64))

def word798_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_182 word798_1_208

def word798_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_207 word798_1_209

def word798_1_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 82 167 (Flapjack.WordRegImm.imm 1#64)))

def word798_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_95 word798_1_211

def word798_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_210 word798_1_212

def word798_1_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 82)]

def word798_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_213 word798_1_214

def word798_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word798_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_215 word798_1_216

def word798_1_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 164 0#64)

def word798_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_218 word798_1_3

def word798_1_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 88 0#64)

def word798_1_221 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_219 word798_1_220

def word798_1_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word798_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_221 word798_1_222

def word798_1_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 164 (Flapjack.WordRegImm.reg 8) word798_1_217 word798_1_223

def word798_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_129 word798_1_224

def word798_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_225 word798_1_3

def word798_1_227 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
  PUnit.unit Flapjack.Spt.ln) word798_1_226 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
  PUnit.unit Flapjack.Spt.ln)

def word798_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_126 word798_1_227

def word798_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_228 word798_1_3

def word798_1_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 167 Flapjack.WordStore.heapLength

def word798_1_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 167 167 (Flapjack.WordRegImm.imm 1#64)))

def word798_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_230 word798_1_231

def word798_1_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 167 167

def word798_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_232 word798_1_233

def word798_1_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 167 (Flapjack.WordLangAddr.addr 167 18446744073709551224#64))

def word798_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_234 word798_1_235

def word798_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 167 (Flapjack.WordRegImm.imm 1904#64)))

def word798_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_236 word798_1_237

def word798_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_229 word798_1_238

def word798_1_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 110 12#64)

def word798_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_239 word798_1_240

def word798_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 106)]

def word798_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_241 word798_1_242

def word798_1_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 66)]

def word798_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_243 word798_1_244

def word798_1_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 148)]

def word798_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_245 word798_1_246

def word798_1_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(100, 16)]

def word798_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_247 word798_1_248

def word798_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 96)]

def word798_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_249 word798_1_250

def word798_1_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(142, 56)]

def word798_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_251 word798_1_252

def word798_1_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 26)]

def word798_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_253 word798_1_254

def word798_1_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word798_1_257 : WordLangProgHOL (BitVec 64) :=
.call (some (([82, 164, 8, 88, 48, 130]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 8)) (some 797) ([30, 110, 70, 152, 20, 100, 60, 142, 40]) (some (30, word798_1_256, 798, 9))

def word798_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_240 word798_1_257

def word798_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_255 word798_1_258

def word798_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_259 word798_1_3

def word798_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 168 2480#64)

def word798_1_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 60 167 (Flapjack.WordRegImm.reg 168)))

def word798_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_261 word798_1_262

def word798_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_236 word798_1_263

def word798_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_260 word798_1_264

def word798_1_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 142 11#64)

def word798_1_267 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_265 word798_1_266

def word798_1_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 106)]

def word798_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_267 word798_1_268

def word798_1_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 66)]

def word798_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_269 word798_1_270

def word798_1_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 148)]

def word798_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_271 word798_1_272

def word798_1_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(162, 16)]

def word798_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_273 word798_1_274

def word798_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 96)]

def word798_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_275 word798_1_276

def word798_1_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(94, 56)]

def word798_1_279 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_277 word798_1_278

def word798_1_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 26)]

def word798_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_279 word798_1_280

def word798_1_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word798_1_283 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 110, 70, 152, 20, 100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 10)) (some 797) ([60, 142, 40, 120, 80, 162, 14, 94, 54]) (some (60, word798_1_282, 798, 11))

def word798_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_266 word798_1_283

def word798_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_281 word798_1_284

def word798_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_285 word798_1_3

def word798_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 168 3008#64)

def word798_1_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 167 (Flapjack.WordRegImm.reg 168)))

def word798_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_287 word798_1_288

def word798_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_236 word798_1_289

def word798_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_286 word798_1_290

def word798_1_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 16#64)

def word798_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_291 word798_1_292

def word798_1_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 106)]

def word798_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_293 word798_1_294

def word798_1_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 66)]

def word798_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_295 word798_1_296

def word798_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 148)]

def word798_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_297 word798_1_298

def word798_1_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 16)]

def word798_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_299 word798_1_300

def word798_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 96)]

def word798_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_301 word798_1_302

def word798_1_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 56)]

def word798_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_303 word798_1_304

def word798_1_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 26)]

def word798_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_305 word798_1_306

def word798_1_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word798_1_309 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 142, 40, 120, 80, 162]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 12)) (some 797) ([14, 94, 54, 136, 34, 114, 74, 156, 24]) (some (14, word798_1_308, 798, 13))

def word798_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_292 word798_1_309

def word798_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_307 word798_1_310

def word798_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_311 word798_1_3

def word798_1_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 168 3776#64)

def word798_1_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 74 167 (Flapjack.WordRegImm.reg 168)))

def word798_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_313 word798_1_314

def word798_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_236 word798_1_315

def word798_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_312 word798_1_316

def word798_1_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 16#64)

def word798_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_317 word798_1_318

def word798_1_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 106)]

def word798_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_319 word798_1_320

def word798_1_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 66)]

def word798_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_321 word798_1_322

def word798_1_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 148)]

def word798_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_323 word798_1_324

def word798_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(146, 16)]

def word798_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_325 word798_1_326

def word798_1_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 96)]

def word798_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_327 word798_1_328

def word798_1_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 56)]

def word798_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_329 word798_1_330

def word798_1_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(84, 26)]

def word798_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_331 word798_1_332

def word798_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def word798_1_335 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 94, 54, 136, 34, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 14)) (some 797) ([74, 156, 24, 104, 64, 146, 44, 124, 84]) (some (74, word798_1_334, 798, 15))

def word798_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_318 word798_1_335

def word798_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_333 word798_1_336

def word798_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_337 word798_1_3

def word798_1_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 30)]

def word798_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_338 word798_1_339

def word798_1_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 110)]

def word798_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_340 word798_1_341

def word798_1_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 70)]

def word798_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_342 word798_1_343

def word798_1_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 152)]

def word798_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_344 word798_1_345

def word798_1_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 20)]

def word798_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_346 word798_1_347

def word798_1_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(146, 100)]

def word798_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_348 word798_1_349

def word798_1_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 90)]

def word798_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_350 word798_1_351

def word798_1_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 50)]

def word798_1_354 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_352 word798_1_353

def word798_1_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(84, 132)]

def word798_1_356 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_354 word798_1_355

def word798_1_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(166, 32)]

def word798_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_356 word798_1_357

def word798_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 112)]

def word798_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_358 word798_1_359

def word798_1_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 72)]

def word798_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_360 word798_1_361

def word798_1_363 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 110, 70, 152, 20, 100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 16)) (some 714) ([74, 156, 24, 104, 64, 146, 44, 124, 84, 166, 6, 86]) (some (74, word798_1_334, 798, 17))

def word798_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_362 word798_1_363

def word798_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_364 word798_1_3

def word798_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 60)]

def word798_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_365 word798_1_366

def word798_1_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 142)]

def word798_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_367 word798_1_368

def word798_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 40)]

def word798_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_369 word798_1_370

def word798_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 120)]

def word798_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_371 word798_1_372

def word798_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 80)]

def word798_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_373 word798_1_374

def word798_1_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(146, 162)]

def word798_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_375 word798_1_376

def word798_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 138)]

def word798_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_377 word798_1_378

def word798_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 36)]

def word798_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_379 word798_1_380

def word798_1_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(84, 116)]

def word798_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_381 word798_1_382

def word798_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(166, 76)]

def word798_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_383 word798_1_384

def word798_1_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 158)]

def word798_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_385 word798_1_386

def word798_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 10)]

def word798_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_387 word798_1_388

def word798_1_390 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 142, 40, 120, 80, 162]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 18)) (some 714) ([74, 156, 24, 104, 64, 146, 44, 124, 84, 166, 6, 86]) (some (74, word798_1_334, 798, 19))

def word798_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_389 word798_1_390

def word798_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_391 word798_1_3

def word798_1_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 14)]

def word798_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_392 word798_1_393

def word798_1_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 94)]

def word798_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_394 word798_1_395

def word798_1_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 54)]

def word798_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_396 word798_1_397

def word798_1_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 136)]

def word798_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_398 word798_1_399

def word798_1_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 34)]

def word798_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_400 word798_1_401

def word798_1_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(146, 114)]

def word798_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_402 word798_1_403

def word798_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_404 word798_1_351

def word798_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_405 word798_1_353

def word798_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_406 word798_1_355

def word798_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_407 word798_1_357

def word798_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_408 word798_1_359

def word798_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_409 word798_1_361

def word798_1_411 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 94, 54, 136, 34, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 20)) (some 714) ([74, 156, 24, 104, 64, 146, 44, 124, 84, 166, 6, 86]) (some (74, word798_1_334, 798, 21))

def word798_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_410 word798_1_411

def word798_1_413 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_412 word798_1_3

def word798_1_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 82)]

def word798_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_413 word798_1_414

def word798_1_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 164)]

def word798_1_417 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_415 word798_1_416

def word798_1_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(84, 8)]

def word798_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_417 word798_1_418

def word798_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(166, 88)]

def word798_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_419 word798_1_420

def word798_1_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def word798_1_423 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_421 word798_1_422

def word798_1_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 130)]

def word798_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_423 word798_1_424

def word798_1_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 14)]

def word798_1_427 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_425 word798_1_426

def word798_1_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 94)]

def word798_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_427 word798_1_428

def word798_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 54)]

def word798_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_429 word798_1_430

def word798_1_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 136)]

def word798_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_431 word798_1_432

def word798_1_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 34)]

def word798_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_433 word798_1_434

def word798_1_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 114)]

def word798_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_435 word798_1_436

def word798_1_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word798_1_439 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 156, 24, 104, 64, 146]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 22)) (some 714) ([44, 124, 84, 166, 6, 86, 46, 128, 28, 108, 68, 150]) (some (44, word798_1_438, 798, 23))

def word798_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_437 word798_1_439

def word798_1_441 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_440 word798_1_3

def word798_1_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 30)]

def word798_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_441 word798_1_442

def word798_1_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 110)]

def word798_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_443 word798_1_444

def word798_1_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 70)]

def word798_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_445 word798_1_446

def word798_1_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 152)]

def word798_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_447 word798_1_448

def word798_1_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 20)]

def word798_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_449 word798_1_450

def word798_1_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 100)]

def word798_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_451 word798_1_452

def word798_1_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 60)]

def word798_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_453 word798_1_454

def word798_1_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 142)]

def word798_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_455 word798_1_456

def word798_1_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 40)]

def word798_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_457 word798_1_458

def word798_1_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 120)]

def word798_1_461 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_459 word798_1_460

def word798_1_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 80)]

def word798_1_463 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_461 word798_1_462

def word798_1_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 162)]

def word798_1_465 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_463 word798_1_464

def word798_1_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word798_1_467 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 124, 84, 166, 6, 86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 24)) (some 714) ([46, 128, 28, 108, 68, 150, 18, 98, 58, 140, 38, 118]) (some (46, word798_1_466, 798, 25))

def word798_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_465 word798_1_467

def word798_1_469 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_468 word798_1_3

def word798_1_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 30)]

def word798_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_469 word798_1_470

def word798_1_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 110)]

def word798_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_471 word798_1_472

def word798_1_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 70)]

def word798_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_473 word798_1_474

def word798_1_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 152)]

def word798_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_475 word798_1_476

def word798_1_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 20)]

def word798_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_477 word798_1_478

def word798_1_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 100)]

def word798_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_479 word798_1_480

def word798_1_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 14)]

def word798_1_483 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_481 word798_1_482

def word798_1_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 94)]

def word798_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_483 word798_1_484

def word798_1_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 54)]

def word798_1_487 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_485 word798_1_486

def word798_1_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 136)]

def word798_1_489 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_487 word798_1_488

def word798_1_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 34)]

def word798_1_491 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_489 word798_1_490

def word798_1_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(134, 114)]

def word798_1_493 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_491 word798_1_492

def word798_1_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word798_1_495 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 128, 28, 108, 68, 150]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word798_1_0, 798, 26)) (some 714) ([18, 98, 58, 140, 38, 118, 78, 160, 12, 92, 52, 134]) (some (18, word798_1_494, 798, 27))

def word798_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_493 word798_1_495

def word798_1_497 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_496 word798_1_3

def word798_1_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 2)]

def word798_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_497 word798_1_498

def word798_1_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 74)]

def word798_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_499 word798_1_500

def word798_1_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 156)]

def word798_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_501 word798_1_502

def word798_1_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 24)]

def word798_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_503 word798_1_504

def word798_1_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 104)]

def word798_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_505 word798_1_506

def word798_1_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 64)]

def word798_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_507 word798_1_508

def word798_1_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 146)]

def word798_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_509 word798_1_510

def word798_1_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 98)]

def word798_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_511 word798_1_512

def word798_1_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(167, 18)]

def word798_1_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 160 (Flapjack.WordLangAddr.addr 167 0#64))

def word798_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_514 word798_1_515

def word798_1_517 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_513 word798_1_516

def word798_1_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 58)]

def word798_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_517 word798_1_518

def word798_1_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 160 (Flapjack.WordLangAddr.addr 167 8#64))

def word798_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_514 word798_1_520

def word798_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_519 word798_1_521

def word798_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 140)]

def word798_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_522 word798_1_523

def word798_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 160 (Flapjack.WordLangAddr.addr 167 16#64))

def word798_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_514 word798_1_525

def word798_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_524 word798_1_526

def word798_1_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 38)]

def word798_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_527 word798_1_528

def word798_1_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 160 (Flapjack.WordLangAddr.addr 167 24#64))

def word798_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_514 word798_1_530

def word798_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_529 word798_1_531

def word798_1_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 118)]

def word798_1_534 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_532 word798_1_533

def word798_1_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 160 (Flapjack.WordLangAddr.addr 167 32#64))

def word798_1_536 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_514 word798_1_535

def word798_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_534 word798_1_536

def word798_1_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 78)]

def word798_1_539 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_537 word798_1_538

def word798_1_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 160 (Flapjack.WordLangAddr.addr 167 40#64))

def word798_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_514 word798_1_540

def word798_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_539 word798_1_541

def word798_1_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(167, 2)]

def word798_1_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 167 (Flapjack.WordRegImm.imm 48#64)))

def word798_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_543 word798_1_544

def word798_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_542 word798_1_545

def word798_1_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 44)]

def word798_1_548 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_546 word798_1_547

def word798_1_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 124)]

def word798_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_548 word798_1_549

def word798_1_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 84)]

def word798_1_552 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_550 word798_1_551

def word798_1_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 166)]

def word798_1_554 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_552 word798_1_553

def word798_1_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 6)]

def word798_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_554 word798_1_555

def word798_1_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 86)]

def word798_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_556 word798_1_557

def word798_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_558 word798_1_512

def word798_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_559 word798_1_516

def word798_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_560 word798_1_518

def word798_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_561 word798_1_521

def word798_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_562 word798_1_523

def word798_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_563 word798_1_526

def word798_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_564 word798_1_528

def word798_1_566 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_565 word798_1_531

def word798_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_566 word798_1_533

def word798_1_568 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_567 word798_1_536

def word798_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_568 word798_1_538

def word798_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_569 word798_1_541

def word798_1_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 167 (Flapjack.WordRegImm.imm 96#64)))

def word798_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_543 word798_1_571

def word798_1_573 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_570 word798_1_572

def word798_1_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 46)]

def word798_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_573 word798_1_574

def word798_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 128)]

def word798_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_575 word798_1_576

def word798_1_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 28)]

def word798_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_577 word798_1_578

def word798_1_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 108)]

def word798_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_579 word798_1_580

def word798_1_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 68)]

def word798_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_581 word798_1_582

def word798_1_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 150)]

def word798_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_583 word798_1_584

def word798_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_585 word798_1_512

def word798_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_586 word798_1_516

def word798_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_587 word798_1_518

def word798_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_588 word798_1_521

def word798_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_589 word798_1_523

def word798_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_590 word798_1_526

def word798_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_591 word798_1_528

def word798_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_592 word798_1_531

def word798_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_593 word798_1_533

def word798_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_594 word798_1_536

def word798_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_595 word798_1_538

def word798_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_596 word798_1_541

def word798_1_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 126)]

def word798_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_597 word798_1_598

def word798_1_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 98

def word798_1_601 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word798_1_0, 798, 28)) (some 70) ([98]) (some (98, word798_1_600, 798, 29))

def word798_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_599 word798_1_601

def word798_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_602 word798_1_3

def word798_1_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word798_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_603 word798_1_604

def word798_1_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word798_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word798_1_605 word798_1_606

def pass798_1 : WordLangProgHOL (BitVec 64) :=
word798_1_607
theorem pass798_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass798_0) + 1) (pass798_0) = pass798_1 := by
  kernel_rfl
#print axioms pass798_1_eq
end InitECandidate.Proofs.WordStages
