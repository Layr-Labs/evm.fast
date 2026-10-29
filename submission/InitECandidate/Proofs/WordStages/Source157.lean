import InitECandidate.Proofs.WordStages.Source141
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody157_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody157_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody157_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody157_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody157_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody157_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody157_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 14) sourceBody157_4 sourceBody157_5

def sourceBody157_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody157_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_6 sourceBody157_7

def sourceBody157_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody157_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody157_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 136#64)

def sourceBody157_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 14) sourceBody157_4 sourceBody157_5

def sourceBody157_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_12 sourceBody157_7

def sourceBody157_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 24])

def sourceBody157_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 24]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24])])

def sourceBody157_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody157_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 14

def sourceBody157_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_17 sourceBody157_0

def sourceBody157_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_16 sourceBody157_18

def sourceBody157_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_19 sourceBody157_0

def sourceBody157_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_15 sourceBody157_20

def sourceBody157_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_21

def sourceBody157_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_14 sourceBody157_22

def sourceBody157_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_23

def sourceBody157_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody157_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody157_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_26 sourceBody157_0

def sourceBody157_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_27 sourceBody157_0

def sourceBody157_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_25 sourceBody157_28

def sourceBody157_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_29

def sourceBody157_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_24 sourceBody157_30

def sourceBody157_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody157_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_31 sourceBody157_32

def sourceBody157_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody157_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody157_33 sourceBody157_34

def sourceBody157_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_35 sourceBody157_7

def sourceBody157_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_36 sourceBody157_0

def sourceBody157_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_9 sourceBody157_37

def sourceBody157_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_13 sourceBody157_38

def sourceBody157_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_11 sourceBody157_39

def sourceBody157_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_10 sourceBody157_40

def sourceBody157_42 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody157_41 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def sourceBody157_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_42 sourceBody157_7

def sourceBody157_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_7 sourceBody157_43

def sourceBody157_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24])

def sourceBody157_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody157_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody157_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody157_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody157_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody157_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody157_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody157_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody157_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody157_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody157_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody157_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody157_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody157_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody157_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody157_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_60 sourceBody157_0

def sourceBody157_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_59 sourceBody157_61

def sourceBody157_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_58 sourceBody157_62

def sourceBody157_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_57 sourceBody157_63

def sourceBody157_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_56 sourceBody157_64

def sourceBody157_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_55 sourceBody157_65

def sourceBody157_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_54 sourceBody157_66

def sourceBody157_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_53 sourceBody157_67

def sourceBody157_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_52 sourceBody157_68

def sourceBody157_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_51 sourceBody157_69

def sourceBody157_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_50 sourceBody157_70

def sourceBody157_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_49 sourceBody157_71

def sourceBody157_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_48 sourceBody157_72

def sourceBody157_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_47 sourceBody157_73

def sourceBody157_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_46 sourceBody157_74

def sourceBody157_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_45 sourceBody157_75

def sourceBody157_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 24]),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.var 20,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
            (Flapjack.WordLangExpHOL.const 8#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
            (Flapjack.WordLangExpHOL.const 16#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
            (Flapjack.WordLangExpHOL.const 24#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
              [Flapjack.WordLangExpHOL.var 18,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
                  (Flapjack.WordLangExpHOL.const 8#64),
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                  (Flapjack.WordLangExpHOL.const 16#64),
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
                  (Flapjack.WordLangExpHOL.const 24#64)])
            (Flapjack.WordLangExpHOL.const 32#64)]])

def sourceBody157_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody157_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 16

def sourceBody157_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_79 sourceBody157_0

def sourceBody157_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_78 sourceBody157_80

def sourceBody157_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_81 sourceBody157_0

def sourceBody157_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_77 sourceBody157_82

def sourceBody157_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_76 sourceBody157_83

def sourceBody157_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_14 sourceBody157_84

def sourceBody157_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_85

def sourceBody157_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_86 sourceBody157_30

def sourceBody157_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_87 sourceBody157_32

def sourceBody157_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody157_88 sourceBody157_34

def sourceBody157_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_89 sourceBody157_7

def sourceBody157_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_90 sourceBody157_0

def sourceBody157_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_9 sourceBody157_91

def sourceBody157_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_13 sourceBody157_92

def sourceBody157_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_11 sourceBody157_93

def sourceBody157_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_10 sourceBody157_94

def sourceBody157_96 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody157_95 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def sourceBody157_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_96 sourceBody157_7

def sourceBody157_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_7 sourceBody157_97

def sourceBody157_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody157_44 sourceBody157_98

def sourceBody157_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_99 sourceBody157_7

def sourceBody157_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_100 sourceBody157_0

def sourceBody157_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_9 sourceBody157_101

def sourceBody157_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_8 sourceBody157_102

def sourceBody157_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_3 sourceBody157_103

def sourceBody157_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_2 sourceBody157_104

def sourceBody157_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody157_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody157_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody157_0, 157, 2)) (some 156) ([20]) (some (20, sourceBody157_107, 157, 3))

def sourceBody157_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_108 sourceBody157_7

def sourceBody157_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_109 sourceBody157_0

def sourceBody157_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_106 sourceBody157_110

def sourceBody157_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_111

def sourceBody157_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_112

def sourceBody157_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_105 sourceBody157_113

def sourceBody157_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody157_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody157_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_116 sourceBody157_0

def sourceBody157_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_115 sourceBody157_117

def sourceBody157_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_114 sourceBody157_118

def sourceBody157_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_1 sourceBody157_119

def sourceBody157_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody157_0 sourceBody157_120

def source157 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (157, 3, sourceBody157_121)
end InitECandidate.Proofs.WordStages
