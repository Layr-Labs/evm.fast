import InitECandidate.Proofs.WordStages.Source452
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody468_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody468_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 23#64)

def sourceBody468_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 28) sourceBody468_2 sourceBody468_3

def sourceBody468_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody468_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_4 sourceBody468_5

def sourceBody468_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody468_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody468_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody468_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_9 sourceBody468_10

def sourceBody468_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_8 sourceBody468_11

def sourceBody468_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody468_12 sourceBody468_10

def sourceBody468_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_13 sourceBody468_5

def sourceBody468_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_14 sourceBody468_10

def sourceBody468_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_7 sourceBody468_15

def sourceBody468_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_6 sourceBody468_16

def sourceBody468_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_1 sourceBody468_17

def sourceBody468_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_0 sourceBody468_18

def sourceBody468_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody468_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 32 (Flapjack.WordLangAddr.addr 32 0#64))

def sourceBody468_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody468_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 239#64)

def sourceBody468_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 20) sourceBody468_24 sourceBody468_25

def sourceBody468_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_26 sourceBody468_5

def sourceBody468_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody468_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 26) sourceBody468_30 sourceBody468_28

def sourceBody468_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_31 sourceBody468_5

def sourceBody468_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody468_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody468_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody468_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 30) sourceBody468_37 sourceBody468_38

def sourceBody468_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_39 sourceBody468_5

def sourceBody468_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody468_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.reg 6) sourceBody468_43 sourceBody468_41

def sourceBody468_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_44 sourceBody468_5

def sourceBody468_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody468_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody468_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 24)

def sourceBody468_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 14) sourceBody468_50 sourceBody468_51

def sourceBody468_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_52 sourceBody468_5

def sourceBody468_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody468_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def sourceBody468_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 36) sourceBody468_56 sourceBody468_54

def sourceBody468_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_57 sourceBody468_5

def sourceBody468_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 22])

def sourceBody468_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody468_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_60 sourceBody468_11

def sourceBody468_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody468_61 sourceBody468_10

def sourceBody468_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_62 sourceBody468_5

def sourceBody468_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_63 sourceBody468_10

def sourceBody468_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_59 sourceBody468_64

def sourceBody468_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_58 sourceBody468_65

def sourceBody468_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_55 sourceBody468_66

def sourceBody468_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_54 sourceBody468_67

def sourceBody468_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_53 sourceBody468_68

def sourceBody468_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_49 sourceBody468_69

def sourceBody468_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_48 sourceBody468_70

def sourceBody468_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_47 sourceBody468_71

def sourceBody468_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_46 sourceBody468_72

def sourceBody468_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_45 sourceBody468_73

def sourceBody468_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_42 sourceBody468_74

def sourceBody468_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_41 sourceBody468_75

def sourceBody468_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_40 sourceBody468_76

def sourceBody468_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_36 sourceBody468_77

def sourceBody468_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_35 sourceBody468_78

def sourceBody468_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_34 sourceBody468_79

def sourceBody468_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_33 sourceBody468_80

def sourceBody468_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_32 sourceBody468_81

def sourceBody468_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_29 sourceBody468_82

def sourceBody468_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_28 sourceBody468_83

def sourceBody468_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_27 sourceBody468_84

def sourceBody468_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_23 sourceBody468_85

def sourceBody468_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_22 sourceBody468_86

def sourceBody468_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_21 sourceBody468_87

def sourceBody468_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_20 sourceBody468_88

def sourceBody468_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_19 sourceBody468_89

def sourceBody468_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody468_90 sourceBody468_12

def source468 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (468, 3, sourceBody468_91)
end InitECandidate.Proofs.WordStages
