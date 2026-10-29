import InitECandidate.Proofs.WordStages.Source829
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody845_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody845_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody845_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody845_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody845_0, 845, 2)) (some 68) ([24]) (some (24, sourceBody845_2, 845, 3))

def sourceBody845_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody845_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_3 sourceBody845_4

def sourceBody845_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_5 sourceBody845_0

def sourceBody845_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_1 sourceBody845_6

def sourceBody845_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody845_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody845_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody845_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody845_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody845_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody845_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody845_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody845_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody845_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody845_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody845_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody845_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody845_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody845_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody845_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody845_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody845_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody845_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 20,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 18,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody845_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody845_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody845_0, 845, 4)) (some 177) ([22, 16]) (some (20, sourceBody845_27, 845, 5))

def sourceBody845_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_28 sourceBody845_4

def sourceBody845_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_29 sourceBody845_0

def sourceBody845_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_26 sourceBody845_30

def sourceBody845_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_25 sourceBody845_31

def sourceBody845_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_24 sourceBody845_32

def sourceBody845_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_23 sourceBody845_33

def sourceBody845_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_22 sourceBody845_34

def sourceBody845_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_21 sourceBody845_35

def sourceBody845_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_20 sourceBody845_36

def sourceBody845_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_19 sourceBody845_37

def sourceBody845_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_18 sourceBody845_38

def sourceBody845_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_17 sourceBody845_39

def sourceBody845_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_16 sourceBody845_40

def sourceBody845_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_15 sourceBody845_41

def sourceBody845_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_14 sourceBody845_42

def sourceBody845_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_13 sourceBody845_43

def sourceBody845_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_12 sourceBody845_44

def sourceBody845_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_11 sourceBody845_45

def sourceBody845_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_10 sourceBody845_46

def sourceBody845_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_9 sourceBody845_47

def sourceBody845_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 6])

def sourceBody845_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody845_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_50 sourceBody845_0

def sourceBody845_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_51 sourceBody845_0

def sourceBody845_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_49 sourceBody845_52

def sourceBody845_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_53

def sourceBody845_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody845_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody845_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody845_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody845_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody845_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody845_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody845_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody845_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody845_0, 845, 6)) (some 177) ([22, 16]) (some (20, sourceBody845_27, 845, 7))

def sourceBody845_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_63 sourceBody845_4

def sourceBody845_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_64 sourceBody845_0

def sourceBody845_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_26 sourceBody845_65

def sourceBody845_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_25 sourceBody845_66

def sourceBody845_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_24 sourceBody845_67

def sourceBody845_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_62 sourceBody845_68

def sourceBody845_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_22 sourceBody845_69

def sourceBody845_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_61 sourceBody845_70

def sourceBody845_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_20 sourceBody845_71

def sourceBody845_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_60 sourceBody845_72

def sourceBody845_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_18 sourceBody845_73

def sourceBody845_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_59 sourceBody845_74

def sourceBody845_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_16 sourceBody845_75

def sourceBody845_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_58 sourceBody845_76

def sourceBody845_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_14 sourceBody845_77

def sourceBody845_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_57 sourceBody845_78

def sourceBody845_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_12 sourceBody845_79

def sourceBody845_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_56 sourceBody845_80

def sourceBody845_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_10 sourceBody845_81

def sourceBody845_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_55 sourceBody845_82

def sourceBody845_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_54 sourceBody845_83

def sourceBody845_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_84 sourceBody845_54

def sourceBody845_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody845_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody845_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody845_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody845_0, 845, 8)) (some 176) ([20, 14, 28]) (some (20, sourceBody845_27, 845, 9))

def sourceBody845_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_89 sourceBody845_4

def sourceBody845_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_90 sourceBody845_0

def sourceBody845_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_88 sourceBody845_91

def sourceBody845_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_87 sourceBody845_92

def sourceBody845_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_86 sourceBody845_93

def sourceBody845_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_85 sourceBody845_94

def sourceBody845_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_95 sourceBody845_54

def sourceBody845_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64])

def sourceBody845_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody845_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody845_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody845_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody845_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody845_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody845_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody845_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody845_0, 845, 10)) (some 177) ([22, 16]) (some (20, sourceBody845_27, 845, 11))

def sourceBody845_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_105 sourceBody845_4

def sourceBody845_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_106 sourceBody845_0

def sourceBody845_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_26 sourceBody845_107

def sourceBody845_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_25 sourceBody845_108

def sourceBody845_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_24 sourceBody845_109

def sourceBody845_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_104 sourceBody845_110

def sourceBody845_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_22 sourceBody845_111

def sourceBody845_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_103 sourceBody845_112

def sourceBody845_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_20 sourceBody845_113

def sourceBody845_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_102 sourceBody845_114

def sourceBody845_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_18 sourceBody845_115

def sourceBody845_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_101 sourceBody845_116

def sourceBody845_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_16 sourceBody845_117

def sourceBody845_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_100 sourceBody845_118

def sourceBody845_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_14 sourceBody845_119

def sourceBody845_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_99 sourceBody845_120

def sourceBody845_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_12 sourceBody845_121

def sourceBody845_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_98 sourceBody845_122

def sourceBody845_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_10 sourceBody845_123

def sourceBody845_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_97 sourceBody845_124

def sourceBody845_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_96 sourceBody845_125

def sourceBody845_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_126 sourceBody845_54

def sourceBody845_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody845_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody845_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody845_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody845_0, 845, 12)) (some 840) ([14, 28]) (some (14, sourceBody845_130, 845, 13))

def sourceBody845_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_131 sourceBody845_4

def sourceBody845_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_132 sourceBody845_0

def sourceBody845_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_129 sourceBody845_133

def sourceBody845_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_128 sourceBody845_134

def sourceBody845_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody845_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 28]

def sourceBody845_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_137 sourceBody845_0

def sourceBody845_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_136 sourceBody845_138

def sourceBody845_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_128 sourceBody845_139

def sourceBody845_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_135 sourceBody845_140

def sourceBody845_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_141

def sourceBody845_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_142

def sourceBody845_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_127 sourceBody845_143

def sourceBody845_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_48 sourceBody845_144

def sourceBody845_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_145

def sourceBody845_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_146

def sourceBody845_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_8 sourceBody845_147

def sourceBody845_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_148

def sourceBody845_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_7 sourceBody845_149

def sourceBody845_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_150

def sourceBody845_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody845_0 sourceBody845_151

def source845 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (845, 2, sourceBody845_152)
end InitECandidate.Proofs.WordStages
