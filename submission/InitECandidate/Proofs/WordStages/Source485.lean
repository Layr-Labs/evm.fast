import InitECandidate.Proofs.WordStages.Source469
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody485_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody485_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 63#64])
          (Flapjack.WordLangExpHOL.const 6#64))
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody485_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody485_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody485_0, 485, 2)) (some 74) ([10]) (some (10, sourceBody485_2, 485, 3))

def sourceBody485_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody485_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_3 sourceBody485_4

def sourceBody485_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_5 sourceBody485_0

def sourceBody485_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_1 sourceBody485_6

def sourceBody485_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody485_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 63#64])
          (Flapjack.WordLangExpHOL.const 6#64))
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody485_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody485_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody485_0, 485, 4)) (some 78) ([30, 20]) (some (30, sourceBody485_10, 485, 5))

def sourceBody485_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_11 sourceBody485_4

def sourceBody485_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_12 sourceBody485_0

def sourceBody485_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_9 sourceBody485_13

def sourceBody485_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_8 sourceBody485_14

def sourceBody485_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_15

def sourceBody485_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_16

def sourceBody485_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody485_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody485_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 42) sourceBody485_21 sourceBody485_22

def sourceBody485_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_23 sourceBody485_4

def sourceBody485_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody485_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody485_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def sourceBody485_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_27 sourceBody485_0

def sourceBody485_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_26 sourceBody485_28

def sourceBody485_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody485_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody485_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 91#64)

def sourceBody485_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 18) sourceBody485_34 sourceBody485_35

def sourceBody485_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_36 sourceBody485_4

def sourceBody485_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody485_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
          (Flapjack.WordLangExpHOL.const 6#64))
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody485_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 36,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
                (Flapjack.WordLangExpHOL.const 6#64))
              (Flapjack.WordLangExpHOL.const 3#64)]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 63#64])])

def sourceBody485_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody485_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 18

def sourceBody485_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_42 sourceBody485_0

def sourceBody485_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_41 sourceBody485_43

def sourceBody485_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_44 sourceBody485_0

def sourceBody485_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_40 sourceBody485_45

def sourceBody485_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_46

def sourceBody485_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_39 sourceBody485_47

def sourceBody485_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_48

def sourceBody485_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody485_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 18) sourceBody485_34 sourceBody485_35

def sourceBody485_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_51 sourceBody485_4

def sourceBody485_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody485_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 34) sourceBody485_55 sourceBody485_53

def sourceBody485_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_56 sourceBody485_4

def sourceBody485_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 127#64)

def sourceBody485_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody485_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 44 (Flapjack.WordRegImm.reg 6) sourceBody485_60 sourceBody485_61

def sourceBody485_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_62 sourceBody485_4

def sourceBody485_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody485_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 38) sourceBody485_66 sourceBody485_64

def sourceBody485_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_67 sourceBody485_4

def sourceBody485_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody485_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 96#64],
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody485_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_70 sourceBody485_0

def sourceBody485_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_71 sourceBody485_0

def sourceBody485_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 230#64)

def sourceBody485_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody485_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 231#64)

def sourceBody485_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 34) sourceBody485_55 sourceBody485_53

def sourceBody485_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_76 sourceBody485_4

def sourceBody485_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 14])

def sourceBody485_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.reg 6) sourceBody485_60 sourceBody485_61

def sourceBody485_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_79 sourceBody485_4

def sourceBody485_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody485_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody485_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_82 sourceBody485_0

def sourceBody485_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_83 sourceBody485_0

def sourceBody485_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody485_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody485_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 18) sourceBody485_34 sourceBody485_35

def sourceBody485_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_87 sourceBody485_4

def sourceBody485_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody485_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody485_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_90 sourceBody485_0

def sourceBody485_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_89 sourceBody485_91

def sourceBody485_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody485_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 91#64)

def sourceBody485_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 40 (Flapjack.WordRegImm.reg 14) sourceBody485_95 sourceBody485_96

def sourceBody485_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_97 sourceBody485_4

def sourceBody485_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody485_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 44) sourceBody485_101 sourceBody485_99

def sourceBody485_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_102 sourceBody485_4

def sourceBody485_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 127#64)

def sourceBody485_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody485_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 26 (Flapjack.WordRegImm.reg 16) sourceBody485_106 sourceBody485_107

def sourceBody485_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_108 sourceBody485_4

def sourceBody485_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody485_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody485_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody485_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 32) sourceBody485_112 sourceBody485_110

def sourceBody485_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_113 sourceBody485_4

def sourceBody485_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 12])

def sourceBody485_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_31 sourceBody485_0

def sourceBody485_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_116 sourceBody485_0

def sourceBody485_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody485_117 sourceBody485_0

def sourceBody485_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_118 sourceBody485_4

def sourceBody485_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_119 sourceBody485_0

def sourceBody485_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_115 sourceBody485_120

def sourceBody485_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_114 sourceBody485_121

def sourceBody485_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_111 sourceBody485_122

def sourceBody485_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_110 sourceBody485_123

def sourceBody485_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_109 sourceBody485_124

def sourceBody485_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_105 sourceBody485_125

def sourceBody485_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_104 sourceBody485_126

def sourceBody485_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_103 sourceBody485_127

def sourceBody485_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_100 sourceBody485_128

def sourceBody485_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_99 sourceBody485_129

def sourceBody485_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_98 sourceBody485_130

def sourceBody485_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_94 sourceBody485_131

def sourceBody485_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_38 sourceBody485_132

def sourceBody485_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_93 sourceBody485_133

def sourceBody485_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_92 sourceBody485_134

def sourceBody485_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody485_135 sourceBody485_0

def sourceBody485_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_136 sourceBody485_4

def sourceBody485_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_137 sourceBody485_0

def sourceBody485_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_38 sourceBody485_138

def sourceBody485_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_88 sourceBody485_139

def sourceBody485_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_86 sourceBody485_140

def sourceBody485_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_85 sourceBody485_141

def sourceBody485_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_84 sourceBody485_142

def sourceBody485_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody485_143 sourceBody485_0

def sourceBody485_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_144 sourceBody485_4

def sourceBody485_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_145 sourceBody485_0

def sourceBody485_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_81 sourceBody485_146

def sourceBody485_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_80 sourceBody485_147

def sourceBody485_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_78 sourceBody485_148

def sourceBody485_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_61 sourceBody485_149

def sourceBody485_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_77 sourceBody485_150

def sourceBody485_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_75 sourceBody485_151

def sourceBody485_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_74 sourceBody485_152

def sourceBody485_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_37 sourceBody485_153

def sourceBody485_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_73 sourceBody485_154

def sourceBody485_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_32 sourceBody485_155

def sourceBody485_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 232#64)

def sourceBody485_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 82#64)

def sourceBody485_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_158 sourceBody485_131

def sourceBody485_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_38 sourceBody485_159

def sourceBody485_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_93 sourceBody485_160

def sourceBody485_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_92 sourceBody485_161

def sourceBody485_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody485_162 sourceBody485_0

def sourceBody485_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_163 sourceBody485_4

def sourceBody485_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_164 sourceBody485_0

def sourceBody485_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_38 sourceBody485_165

def sourceBody485_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_88 sourceBody485_166

def sourceBody485_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_86 sourceBody485_167

def sourceBody485_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_85 sourceBody485_168

def sourceBody485_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_84 sourceBody485_169

def sourceBody485_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody485_170 sourceBody485_0

def sourceBody485_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_171 sourceBody485_4

def sourceBody485_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_172 sourceBody485_0

def sourceBody485_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_38 sourceBody485_173

def sourceBody485_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_37 sourceBody485_174

def sourceBody485_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_157 sourceBody485_175

def sourceBody485_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_32 sourceBody485_176

def sourceBody485_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_156 sourceBody485_177

def sourceBody485_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody485_72 sourceBody485_178

def sourceBody485_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_179 sourceBody485_4

def sourceBody485_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_180 sourceBody485_0

def sourceBody485_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_69 sourceBody485_181

def sourceBody485_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_68 sourceBody485_182

def sourceBody485_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_65 sourceBody485_183

def sourceBody485_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_64 sourceBody485_184

def sourceBody485_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_63 sourceBody485_185

def sourceBody485_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_59 sourceBody485_186

def sourceBody485_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_58 sourceBody485_187

def sourceBody485_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_57 sourceBody485_188

def sourceBody485_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_54 sourceBody485_189

def sourceBody485_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_53 sourceBody485_190

def sourceBody485_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_52 sourceBody485_191

def sourceBody485_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_50 sourceBody485_192

def sourceBody485_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_32 sourceBody485_193

def sourceBody485_195 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody485_49 sourceBody485_194

def sourceBody485_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_195 sourceBody485_4

def sourceBody485_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_196 sourceBody485_0

def sourceBody485_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_38 sourceBody485_197

def sourceBody485_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_37 sourceBody485_198

def sourceBody485_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_33 sourceBody485_199

def sourceBody485_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_32 sourceBody485_200

def sourceBody485_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 42])

def sourceBody485_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody485_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_203 sourceBody485_0

def sourceBody485_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_204 sourceBody485_0

def sourceBody485_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_202 sourceBody485_205

def sourceBody485_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_206

def sourceBody485_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_201 sourceBody485_207

def sourceBody485_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_31 sourceBody485_208

def sourceBody485_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_209

def sourceBody485_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_30 sourceBody485_210

def sourceBody485_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_29 sourceBody485_211

def sourceBody485_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody485_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_212 sourceBody485_213

def sourceBody485_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody485_216 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody485_214 sourceBody485_215

def sourceBody485_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_216 sourceBody485_4

def sourceBody485_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_217 sourceBody485_0

def sourceBody485_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_25 sourceBody485_218

def sourceBody485_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_24 sourceBody485_219

def sourceBody485_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_20 sourceBody485_220

def sourceBody485_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_19 sourceBody485_221

def sourceBody485_223 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody485_222 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody485_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_223 sourceBody485_4

def sourceBody485_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_4 sourceBody485_224

def sourceBody485_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody485_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_226 sourceBody485_0

def sourceBody485_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_8 sourceBody485_227

def sourceBody485_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_225 sourceBody485_228

def sourceBody485_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_18 sourceBody485_229

def sourceBody485_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_230

def sourceBody485_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_17 sourceBody485_231

def sourceBody485_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_7 sourceBody485_232

def sourceBody485_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_233

def sourceBody485_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody485_0 sourceBody485_234

def source485 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (485, 3, sourceBody485_235)
end InitECandidate.Proofs.WordStages
