import InitECandidate.Proofs.WordStages.Source121
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody137_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody137_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody137_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody137_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody137_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody137_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody137_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody137_4 sourceBody137_5

def sourceBody137_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody137_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_6 sourceBody137_7

def sourceBody137_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody137_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody137_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody137_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_11 sourceBody137_0

def sourceBody137_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_12 sourceBody137_0

def sourceBody137_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_10 sourceBody137_13

def sourceBody137_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_14

def sourceBody137_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody137_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody137_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_17 sourceBody137_0

def sourceBody137_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_18 sourceBody137_0

def sourceBody137_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_16 sourceBody137_19

def sourceBody137_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_20

def sourceBody137_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_15 sourceBody137_21

def sourceBody137_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody137_22 sourceBody137_0

def sourceBody137_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_23 sourceBody137_7

def sourceBody137_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_24 sourceBody137_0

def sourceBody137_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_9 sourceBody137_25

def sourceBody137_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_8 sourceBody137_26

def sourceBody137_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_3 sourceBody137_27

def sourceBody137_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_2 sourceBody137_28

def sourceBody137_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 16#64))

def sourceBody137_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody137_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_31 sourceBody137_13

def sourceBody137_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_32

def sourceBody137_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 16#64))

def sourceBody137_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_34 sourceBody137_19

def sourceBody137_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_35

def sourceBody137_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_33 sourceBody137_36

def sourceBody137_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody137_37 sourceBody137_0

def sourceBody137_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_38 sourceBody137_7

def sourceBody137_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_39 sourceBody137_0

def sourceBody137_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_9 sourceBody137_40

def sourceBody137_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_8 sourceBody137_41

def sourceBody137_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_3 sourceBody137_42

def sourceBody137_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_30 sourceBody137_43

def sourceBody137_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_29 sourceBody137_44

def sourceBody137_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody137_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody137_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_47 sourceBody137_13

def sourceBody137_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_48

def sourceBody137_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody137_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_50 sourceBody137_19

def sourceBody137_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_51

def sourceBody137_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_49 sourceBody137_52

def sourceBody137_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody137_53 sourceBody137_0

def sourceBody137_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_54 sourceBody137_7

def sourceBody137_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_55 sourceBody137_0

def sourceBody137_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_9 sourceBody137_56

def sourceBody137_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_8 sourceBody137_57

def sourceBody137_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_3 sourceBody137_58

def sourceBody137_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_46 sourceBody137_59

def sourceBody137_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_45 sourceBody137_60

def sourceBody137_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody137_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody137_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_63 sourceBody137_13

def sourceBody137_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_64

def sourceBody137_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody137_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_66 sourceBody137_19

def sourceBody137_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_67

def sourceBody137_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_65 sourceBody137_68

def sourceBody137_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody137_69 sourceBody137_0

def sourceBody137_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_70 sourceBody137_7

def sourceBody137_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_71 sourceBody137_0

def sourceBody137_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_9 sourceBody137_72

def sourceBody137_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_8 sourceBody137_73

def sourceBody137_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_3 sourceBody137_74

def sourceBody137_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_62 sourceBody137_75

def sourceBody137_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_61 sourceBody137_76

def sourceBody137_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody137_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody137_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_79 sourceBody137_13

def sourceBody137_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_80

def sourceBody137_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody137_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_82 sourceBody137_19

def sourceBody137_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_83

def sourceBody137_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_81 sourceBody137_84

def sourceBody137_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody137_85 sourceBody137_0

def sourceBody137_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_86 sourceBody137_7

def sourceBody137_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_87 sourceBody137_0

def sourceBody137_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_9 sourceBody137_88

def sourceBody137_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_8 sourceBody137_89

def sourceBody137_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_3 sourceBody137_90

def sourceBody137_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_78 sourceBody137_91

def sourceBody137_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_77 sourceBody137_92

def sourceBody137_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody137_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody137_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_95 sourceBody137_13

def sourceBody137_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_96

def sourceBody137_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody137_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_98 sourceBody137_19

def sourceBody137_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_99

def sourceBody137_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_97 sourceBody137_100

def sourceBody137_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody137_101 sourceBody137_0

def sourceBody137_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_102 sourceBody137_7

def sourceBody137_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_103 sourceBody137_0

def sourceBody137_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_9 sourceBody137_104

def sourceBody137_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_8 sourceBody137_105

def sourceBody137_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_3 sourceBody137_106

def sourceBody137_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_94 sourceBody137_107

def sourceBody137_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_93 sourceBody137_108

def sourceBody137_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 2])

def sourceBody137_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody137_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_111 sourceBody137_0

def sourceBody137_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_110 sourceBody137_112

def sourceBody137_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_109 sourceBody137_113

def sourceBody137_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_1 sourceBody137_114

def sourceBody137_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody137_0 sourceBody137_115

def source137 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (137, 2, sourceBody137_116)
end InitECandidate.Proofs.WordStages
