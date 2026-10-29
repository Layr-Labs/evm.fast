import InitECandidate.Proofs.WordStages.Source106
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody122_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody122_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody122_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4294901760#64])

def sourceBody122_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody122_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody122_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody122_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody122_4 sourceBody122_5

def sourceBody122_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody122_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_6 sourceBody122_7

def sourceBody122_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody122_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody122_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody122_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_11 sourceBody122_0

def sourceBody122_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_12 sourceBody122_0

def sourceBody122_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_10 sourceBody122_13

def sourceBody122_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_14

def sourceBody122_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 16#64))

def sourceBody122_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody122_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_17 sourceBody122_0

def sourceBody122_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_18 sourceBody122_0

def sourceBody122_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_16 sourceBody122_19

def sourceBody122_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_20

def sourceBody122_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_15 sourceBody122_21

def sourceBody122_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody122_22 sourceBody122_0

def sourceBody122_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_23 sourceBody122_7

def sourceBody122_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_24 sourceBody122_0

def sourceBody122_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_9 sourceBody122_25

def sourceBody122_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_8 sourceBody122_26

def sourceBody122_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_3 sourceBody122_27

def sourceBody122_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_2 sourceBody122_28

def sourceBody122_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4278190080#64])

def sourceBody122_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody122_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_31 sourceBody122_13

def sourceBody122_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_32

def sourceBody122_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody122_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_34 sourceBody122_19

def sourceBody122_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_35

def sourceBody122_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_33 sourceBody122_36

def sourceBody122_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody122_37 sourceBody122_0

def sourceBody122_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_38 sourceBody122_7

def sourceBody122_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_39 sourceBody122_0

def sourceBody122_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_9 sourceBody122_40

def sourceBody122_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_8 sourceBody122_41

def sourceBody122_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_3 sourceBody122_42

def sourceBody122_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_30 sourceBody122_43

def sourceBody122_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_29 sourceBody122_44

def sourceBody122_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4026531840#64])

def sourceBody122_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody122_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_47 sourceBody122_13

def sourceBody122_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_48

def sourceBody122_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody122_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_50 sourceBody122_19

def sourceBody122_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_51

def sourceBody122_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_49 sourceBody122_52

def sourceBody122_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody122_53 sourceBody122_0

def sourceBody122_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_54 sourceBody122_7

def sourceBody122_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_55 sourceBody122_0

def sourceBody122_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_9 sourceBody122_56

def sourceBody122_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_8 sourceBody122_57

def sourceBody122_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_3 sourceBody122_58

def sourceBody122_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_46 sourceBody122_59

def sourceBody122_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_45 sourceBody122_60

def sourceBody122_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3221225472#64])

def sourceBody122_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody122_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_63 sourceBody122_13

def sourceBody122_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_64

def sourceBody122_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody122_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_66 sourceBody122_19

def sourceBody122_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_67

def sourceBody122_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_65 sourceBody122_68

def sourceBody122_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody122_69 sourceBody122_0

def sourceBody122_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_70 sourceBody122_7

def sourceBody122_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_71 sourceBody122_0

def sourceBody122_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_9 sourceBody122_72

def sourceBody122_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_8 sourceBody122_73

def sourceBody122_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_3 sourceBody122_74

def sourceBody122_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_62 sourceBody122_75

def sourceBody122_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_61 sourceBody122_76

def sourceBody122_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2147483648#64])

def sourceBody122_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody122_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_79 sourceBody122_13

def sourceBody122_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_80

def sourceBody122_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody122_81 sourceBody122_0

def sourceBody122_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_82 sourceBody122_7

def sourceBody122_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_83 sourceBody122_0

def sourceBody122_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_9 sourceBody122_84

def sourceBody122_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_8 sourceBody122_85

def sourceBody122_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_3 sourceBody122_86

def sourceBody122_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_78 sourceBody122_87

def sourceBody122_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_77 sourceBody122_88

def sourceBody122_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody122_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody122_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_91 sourceBody122_0

def sourceBody122_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_90 sourceBody122_92

def sourceBody122_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_89 sourceBody122_93

def sourceBody122_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_1 sourceBody122_94

def sourceBody122_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody122_0 sourceBody122_95

def source122 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (122, 2, sourceBody122_96)
end InitECandidate.Proofs.WordStages
