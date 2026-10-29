import InitECandidate.Proofs.WordStages.Source591
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody607_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody607_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody607_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody607_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody607_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody607_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody607_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 20) sourceBody607_5 sourceBody607_3

def sourceBody607_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody607_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_6 sourceBody607_7

def sourceBody607_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody607_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody607_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody607_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody607_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 239#64)

def sourceBody607_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody607_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody607_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 6) sourceBody607_14 sourceBody607_15

def sourceBody607_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_16 sourceBody607_7

def sourceBody607_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody607_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody607_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody607_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_20 sourceBody607_0

def sourceBody607_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_21 sourceBody607_0

def sourceBody607_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_19 sourceBody607_22

def sourceBody607_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_23

def sourceBody607_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody607_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody607_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_25 sourceBody607_26

def sourceBody607_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_24 sourceBody607_27

def sourceBody607_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody607_28 sourceBody607_0

def sourceBody607_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_29 sourceBody607_7

def sourceBody607_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_30 sourceBody607_0

def sourceBody607_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_18 sourceBody607_31

def sourceBody607_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_17 sourceBody607_32

def sourceBody607_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_13 sourceBody607_33

def sourceBody607_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_12 sourceBody607_34

def sourceBody607_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_11 sourceBody607_35

def sourceBody607_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_10 sourceBody607_36

def sourceBody607_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody607_37 sourceBody607_0

def sourceBody607_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_38 sourceBody607_7

def sourceBody607_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_39 sourceBody607_0

def sourceBody607_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_9 sourceBody607_40

def sourceBody607_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_8 sourceBody607_41

def sourceBody607_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_4 sourceBody607_42

def sourceBody607_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_3 sourceBody607_43

def sourceBody607_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 65536#64)

def sourceBody607_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody607_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_46 sourceBody607_22

def sourceBody607_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_47

def sourceBody607_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_48 sourceBody607_27

def sourceBody607_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody607_49 sourceBody607_0

def sourceBody607_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_50 sourceBody607_7

def sourceBody607_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_51 sourceBody607_0

def sourceBody607_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_9 sourceBody607_52

def sourceBody607_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_8 sourceBody607_53

def sourceBody607_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_4 sourceBody607_54

def sourceBody607_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_45 sourceBody607_55

def sourceBody607_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_44 sourceBody607_56

def sourceBody607_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody607_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody607_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody607_0, 607, 2)) (some 465) ([12]) (some (12, sourceBody607_59, 607, 3))

def sourceBody607_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_60 sourceBody607_7

def sourceBody607_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_61 sourceBody607_0

def sourceBody607_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_58 sourceBody607_62

def sourceBody607_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody607_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 20 6))

def sourceBody607_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody607_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody607_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody607_0, 607, 4)) (some 470) ([10]) (some (20, sourceBody607_67, 607, 5))

def sourceBody607_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_68 sourceBody607_7

def sourceBody607_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_69 sourceBody607_0

def sourceBody607_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_66 sourceBody607_70

def sourceBody607_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_65 sourceBody607_71

def sourceBody607_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_64 sourceBody607_72

def sourceBody607_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_12 sourceBody607_73

def sourceBody607_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_74

def sourceBody607_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_75

def sourceBody607_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1530#64)

def sourceBody607_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody607_0, 607, 6)) (some 471) ([10]) (some (20, sourceBody607_67, 607, 7))

def sourceBody607_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_78 sourceBody607_7

def sourceBody607_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_79 sourceBody607_0

def sourceBody607_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_66 sourceBody607_80

def sourceBody607_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_65 sourceBody607_81

def sourceBody607_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_77 sourceBody607_82

def sourceBody607_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_4 sourceBody607_83

def sourceBody607_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_84

def sourceBody607_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_85

def sourceBody607_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_76 sourceBody607_86

def sourceBody607_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody607_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody607_0, 607, 8)) (some 68) ([20]) (some (20, sourceBody607_67, 607, 9))

def sourceBody607_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_89 sourceBody607_7

def sourceBody607_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_90 sourceBody607_0

def sourceBody607_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_88 sourceBody607_91

def sourceBody607_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody607_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody607_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody607_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody607_0, 607, 10)) (some 77) ([6, 14, 10]) (some (6, sourceBody607_95, 607, 11))

def sourceBody607_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_96 sourceBody607_7

def sourceBody607_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_97 sourceBody607_0

def sourceBody607_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_94 sourceBody607_98

def sourceBody607_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_93 sourceBody607_99

def sourceBody607_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_9 sourceBody607_100

def sourceBody607_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_101

def sourceBody607_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_102

def sourceBody607_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody607_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody607_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody607_0, 607, 12)) (some 431) ([6, 14, 10]) (some (6, sourceBody607_95, 607, 13))

def sourceBody607_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_106 sourceBody607_7

def sourceBody607_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_107 sourceBody607_0

def sourceBody607_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_94 sourceBody607_108

def sourceBody607_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_105 sourceBody607_109

def sourceBody607_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_104 sourceBody607_110

def sourceBody607_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_111

def sourceBody607_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_112

def sourceBody607_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_103 sourceBody607_113

def sourceBody607_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody607_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_115 sourceBody607_0

def sourceBody607_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_15 sourceBody607_116

def sourceBody607_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_114 sourceBody607_117

def sourceBody607_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_92 sourceBody607_118

def sourceBody607_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_119

def sourceBody607_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_120

def sourceBody607_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_87 sourceBody607_121

def sourceBody607_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_63 sourceBody607_122

def sourceBody607_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_123

def sourceBody607_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_124

def sourceBody607_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_57 sourceBody607_125

def sourceBody607_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_2 sourceBody607_126

def sourceBody607_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_127

def sourceBody607_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_1 sourceBody607_128

def sourceBody607_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody607_0 sourceBody607_129

def source607 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (607, 3, sourceBody607_130)
end InitECandidate.Proofs.WordStages
