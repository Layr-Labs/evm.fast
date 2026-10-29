import InitECandidate.Proofs.WordStages.Source274
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody290_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody290_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody290_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody290_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody290_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody290_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody290_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody290_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 16) sourceBody290_5 sourceBody290_6

def sourceBody290_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody290_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_7 sourceBody290_8

def sourceBody290_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody290_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody290_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody290_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody290_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_13 sourceBody290_0

def sourceBody290_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_12 sourceBody290_14

def sourceBody290_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_11 sourceBody290_15

def sourceBody290_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody290_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody290_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody290_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.var 22])

def sourceBody290_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody290_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_21 sourceBody290_0

def sourceBody290_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_20 sourceBody290_22

def sourceBody290_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_19 sourceBody290_23

def sourceBody290_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_18 sourceBody290_24

def sourceBody290_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_17 sourceBody290_25

def sourceBody290_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody290_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_27 sourceBody290_0

def sourceBody290_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_28 sourceBody290_0

def sourceBody290_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_26 sourceBody290_29

def sourceBody290_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody290_16 sourceBody290_30

def sourceBody290_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_31 sourceBody290_8

def sourceBody290_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_32 sourceBody290_0

def sourceBody290_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_10 sourceBody290_33

def sourceBody290_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_9 sourceBody290_34

def sourceBody290_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_4 sourceBody290_35

def sourceBody290_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_3 sourceBody290_36

def sourceBody290_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody290_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody290_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody290_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody290_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 12) sourceBody290_41 sourceBody290_4

def sourceBody290_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_42 sourceBody290_8

def sourceBody290_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody290_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 14])

def sourceBody290_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody290_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody290_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody290_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 22])

def sourceBody290_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.var 16])

def sourceBody290_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 20 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody290_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_51 sourceBody290_0

def sourceBody290_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_50 sourceBody290_52

def sourceBody290_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_49 sourceBody290_53

def sourceBody290_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_48 sourceBody290_54

def sourceBody290_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_47 sourceBody290_55

def sourceBody290_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_46 sourceBody290_56

def sourceBody290_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_45 sourceBody290_57

def sourceBody290_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody290_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody290_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_60 sourceBody290_0

def sourceBody290_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_61 sourceBody290_0

def sourceBody290_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_59 sourceBody290_62

def sourceBody290_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_0 sourceBody290_63

def sourceBody290_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_58 sourceBody290_64

def sourceBody290_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody290_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody290_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_67 sourceBody290_0

def sourceBody290_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_68 sourceBody290_0

def sourceBody290_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_66 sourceBody290_69

def sourceBody290_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_0 sourceBody290_70

def sourceBody290_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_65 sourceBody290_71

def sourceBody290_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody290_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_72 sourceBody290_73

def sourceBody290_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody290_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody290_74 sourceBody290_75

def sourceBody290_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_76 sourceBody290_8

def sourceBody290_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_77 sourceBody290_0

def sourceBody290_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_44 sourceBody290_78

def sourceBody290_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_43 sourceBody290_79

def sourceBody290_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_40 sourceBody290_80

def sourceBody290_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_39 sourceBody290_81

def sourceBody290_83 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody290_82 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody290_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_83 sourceBody290_8

def sourceBody290_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_8 sourceBody290_84

def sourceBody290_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody290_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody290_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_87 sourceBody290_0

def sourceBody290_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_86 sourceBody290_88

def sourceBody290_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_85 sourceBody290_89

def sourceBody290_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_38 sourceBody290_90

def sourceBody290_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_0 sourceBody290_91

def sourceBody290_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_37 sourceBody290_92

def sourceBody290_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_2 sourceBody290_93

def sourceBody290_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_0 sourceBody290_94

def sourceBody290_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_1 sourceBody290_95

def sourceBody290_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody290_0 sourceBody290_96

def source290 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (290, 5, sourceBody290_97)
end InitECandidate.Proofs.WordStages
