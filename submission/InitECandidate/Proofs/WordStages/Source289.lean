import InitECandidate.Proofs.WordStages.Source273
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody289_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody289_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody289_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody289_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody289_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 18) sourceBody289_2 sourceBody289_3

def sourceBody289_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody289_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_4 sourceBody289_5

def sourceBody289_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody289_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody289_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody289_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody289_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody289_8, 289, 2)) (some 286) ([8]) (some (8, sourceBody289_10, 289, 3))

def sourceBody289_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_11 sourceBody289_5

def sourceBody289_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_12 sourceBody289_8

def sourceBody289_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_9 sourceBody289_13

def sourceBody289_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_14

def sourceBody289_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_15

def sourceBody289_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody289_16 sourceBody289_8

def sourceBody289_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_17 sourceBody289_5

def sourceBody289_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_18 sourceBody289_8

def sourceBody289_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_7 sourceBody289_19

def sourceBody289_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_6 sourceBody289_20

def sourceBody289_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_1 sourceBody289_21

def sourceBody289_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_0 sourceBody289_22

def sourceBody289_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody289_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody289_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_25 sourceBody289_8

def sourceBody289_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_24 sourceBody289_26

def sourceBody289_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 22)

def sourceBody289_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody289_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody289_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody289_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody289_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody289_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody289_8, 289, 4)) (some 68) ([16]) (some (16, sourceBody289_33, 289, 5))

def sourceBody289_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_34 sourceBody289_5

def sourceBody289_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_35 sourceBody289_8

def sourceBody289_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_32 sourceBody289_36

def sourceBody289_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody289_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody289_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody289_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody289_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody289_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 10) sourceBody289_41 sourceBody289_42

def sourceBody289_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_43 sourceBody289_5

def sourceBody289_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody289_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody289_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody289_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 24 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody289_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_48 sourceBody289_8

def sourceBody289_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_47 sourceBody289_49

def sourceBody289_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_46 sourceBody289_50

def sourceBody289_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody289_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_52 sourceBody289_8

def sourceBody289_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_53 sourceBody289_8

def sourceBody289_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_51 sourceBody289_54

def sourceBody289_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody289_55 sourceBody289_8

def sourceBody289_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_56 sourceBody289_5

def sourceBody289_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_57 sourceBody289_8

def sourceBody289_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_45 sourceBody289_58

def sourceBody289_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_44 sourceBody289_59

def sourceBody289_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_40 sourceBody289_60

def sourceBody289_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_39 sourceBody289_61

def sourceBody289_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody289_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody289_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 16])

def sourceBody289_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody289_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody289_8, 289, 6)) (some 288) ([24, 10, 20]) (some (24, sourceBody289_66, 289, 7))

def sourceBody289_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_67 sourceBody289_5

def sourceBody289_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_68 sourceBody289_8

def sourceBody289_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_65 sourceBody289_69

def sourceBody289_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_64 sourceBody289_70

def sourceBody289_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_63 sourceBody289_71

def sourceBody289_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_72

def sourceBody289_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_73

def sourceBody289_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_62 sourceBody289_74

def sourceBody289_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody289_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody289_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 24, 10]

def sourceBody289_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_78 sourceBody289_8

def sourceBody289_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_77 sourceBody289_79

def sourceBody289_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_76 sourceBody289_80

def sourceBody289_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_46 sourceBody289_81

def sourceBody289_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_75 sourceBody289_82

def sourceBody289_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_38 sourceBody289_83

def sourceBody289_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_84

def sourceBody289_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_37 sourceBody289_85

def sourceBody289_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_86

def sourceBody289_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_87

def sourceBody289_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_31 sourceBody289_88

def sourceBody289_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_89

def sourceBody289_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_30 sourceBody289_90

def sourceBody289_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_91

def sourceBody289_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_29 sourceBody289_92

def sourceBody289_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_8 sourceBody289_93

def sourceBody289_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_28 sourceBody289_94

def sourceBody289_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_27 sourceBody289_95

def sourceBody289_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody289_23 sourceBody289_96

def source289 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (289, 3, sourceBody289_97)
end InitECandidate.Proofs.WordStages
