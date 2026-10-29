import InitECandidate.Proofs.WordStages.Source296
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody312_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody312_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody312_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody312_0, 312, 2)) (some 298) ([]) (some (20, sourceBody312_1, 312, 3))

def sourceBody312_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody312_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_2 sourceBody312_3

def sourceBody312_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_4 sourceBody312_0

def sourceBody312_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody312_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody312_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody312_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody312_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 18) sourceBody312_8 sourceBody312_9

def sourceBody312_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_10 sourceBody312_3

def sourceBody312_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody312_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody312_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody312_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody312_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 18

def sourceBody312_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_16 sourceBody312_0

def sourceBody312_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_15 sourceBody312_17

def sourceBody312_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_18 sourceBody312_0

def sourceBody312_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_14 sourceBody312_19

def sourceBody312_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_20

def sourceBody312_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_13 sourceBody312_21

def sourceBody312_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_22

def sourceBody312_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody312_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody312_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_25 sourceBody312_19

def sourceBody312_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_26

def sourceBody312_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_24 sourceBody312_27

def sourceBody312_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_28

def sourceBody312_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_23 sourceBody312_29

def sourceBody312_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody312_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody312_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody312_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody312_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody312_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody312_0, 312, 4)) (some 296) ([28, 18, 26, 22]) (some (28, sourceBody312_35, 312, 5))

def sourceBody312_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_36 sourceBody312_3

def sourceBody312_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_37 sourceBody312_0

def sourceBody312_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_34 sourceBody312_38

def sourceBody312_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_33 sourceBody312_39

def sourceBody312_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_32 sourceBody312_40

def sourceBody312_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_31 sourceBody312_41

def sourceBody312_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody312_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody312_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_44 sourceBody312_0

def sourceBody312_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_43 sourceBody312_45

def sourceBody312_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 32#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody312_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody312_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody312_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 22

def sourceBody312_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_50 sourceBody312_0

def sourceBody312_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_49 sourceBody312_51

def sourceBody312_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_52 sourceBody312_0

def sourceBody312_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_48 sourceBody312_53

def sourceBody312_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_54

def sourceBody312_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_47 sourceBody312_55

def sourceBody312_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_46 sourceBody312_56

def sourceBody312_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_42 sourceBody312_57

def sourceBody312_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_58

def sourceBody312_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_59

def sourceBody312_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody312_30 sourceBody312_60

def sourceBody312_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_61 sourceBody312_3

def sourceBody312_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_62 sourceBody312_0

def sourceBody312_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_12 sourceBody312_63

def sourceBody312_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_11 sourceBody312_64

def sourceBody312_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_7 sourceBody312_65

def sourceBody312_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_6 sourceBody312_66

def sourceBody312_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody312_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody312_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_69 sourceBody312_19

def sourceBody312_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_70

def sourceBody312_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_13 sourceBody312_71

def sourceBody312_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_72

def sourceBody312_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody312_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_74 sourceBody312_19

def sourceBody312_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_75

def sourceBody312_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_24 sourceBody312_76

def sourceBody312_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_77

def sourceBody312_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_73 sourceBody312_78

def sourceBody312_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody312_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody312_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody312_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody312_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody312_0, 312, 6)) (some 296) ([28, 18, 26, 22]) (some (28, sourceBody312_35, 312, 7))

def sourceBody312_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_84 sourceBody312_3

def sourceBody312_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_85 sourceBody312_0

def sourceBody312_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_83 sourceBody312_86

def sourceBody312_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_82 sourceBody312_87

def sourceBody312_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_81 sourceBody312_88

def sourceBody312_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_80 sourceBody312_89

def sourceBody312_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody312_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_91 sourceBody312_45

def sourceBody312_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_92 sourceBody312_56

def sourceBody312_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_90 sourceBody312_93

def sourceBody312_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_94

def sourceBody312_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_95

def sourceBody312_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody312_79 sourceBody312_96

def sourceBody312_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_97 sourceBody312_3

def sourceBody312_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_98 sourceBody312_0

def sourceBody312_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_12 sourceBody312_99

def sourceBody312_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_11 sourceBody312_100

def sourceBody312_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_7 sourceBody312_101

def sourceBody312_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_68 sourceBody312_102

def sourceBody312_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_67 sourceBody312_103

def sourceBody312_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody312_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody312_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_106 sourceBody312_0

def sourceBody312_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_105 sourceBody312_107

def sourceBody312_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_104 sourceBody312_108

def sourceBody312_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_5 sourceBody312_109

def sourceBody312_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_110

def sourceBody312_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody312_0 sourceBody312_111

def source312 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (312, 9, sourceBody312_112)
end InitECandidate.Proofs.WordStages
