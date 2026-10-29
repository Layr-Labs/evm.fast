import InitECandidate.Proofs.WordStages.Source318
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody334_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody334_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody334_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 28])

def sourceBody334_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody334_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody334_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 2)) (some 177) ([32, 20]) (some (32, sourceBody334_4, 334, 3))

def sourceBody334_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody334_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_5 sourceBody334_6

def sourceBody334_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_7 sourceBody334_0

def sourceBody334_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_3 sourceBody334_8

def sourceBody334_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_2 sourceBody334_9

def sourceBody334_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 22])

def sourceBody334_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody334_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_12 sourceBody334_0

def sourceBody334_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_13 sourceBody334_0

def sourceBody334_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_11 sourceBody334_14

def sourceBody334_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_15

def sourceBody334_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody334_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody334_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody334_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 4)) (some 89) ([20, 30]) (some (20, sourceBody334_19, 334, 5))

def sourceBody334_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_20 sourceBody334_6

def sourceBody334_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_21 sourceBody334_0

def sourceBody334_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_18 sourceBody334_22

def sourceBody334_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_17 sourceBody334_23

def sourceBody334_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_24

def sourceBody334_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_25

def sourceBody334_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_16 sourceBody334_26

def sourceBody334_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 152#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody334_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody334_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 6)) (some 89) ([20, 30]) (some (20, sourceBody334_19, 334, 7))

def sourceBody334_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_30 sourceBody334_6

def sourceBody334_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_31 sourceBody334_0

def sourceBody334_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_29 sourceBody334_32

def sourceBody334_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_28 sourceBody334_33

def sourceBody334_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_34

def sourceBody334_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_35

def sourceBody334_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_27 sourceBody334_36

def sourceBody334_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 152#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody334_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody334_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 8)) (some 89) ([20, 30]) (some (20, sourceBody334_19, 334, 9))

def sourceBody334_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_40 sourceBody334_6

def sourceBody334_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_41 sourceBody334_0

def sourceBody334_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_39 sourceBody334_42

def sourceBody334_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_38 sourceBody334_43

def sourceBody334_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_44

def sourceBody334_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_45

def sourceBody334_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_37 sourceBody334_46

def sourceBody334_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 152#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody334_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody334_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 10)) (some 89) ([20, 30]) (some (20, sourceBody334_19, 334, 11))

def sourceBody334_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_50 sourceBody334_6

def sourceBody334_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_51 sourceBody334_0

def sourceBody334_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_49 sourceBody334_52

def sourceBody334_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_48 sourceBody334_53

def sourceBody334_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_54

def sourceBody334_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_55

def sourceBody334_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_47 sourceBody334_56

def sourceBody334_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody334_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody334_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody334_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody334_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody334_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.WordRegImm.reg 24) sourceBody334_61 sourceBody334_62

def sourceBody334_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_63 sourceBody334_6

def sourceBody334_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody334_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 152#64]),
      Flapjack.WordLangExpHOL.var 32])

def sourceBody334_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody334_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody334_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody334_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody334_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody334_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 34) sourceBody334_70 sourceBody334_71

def sourceBody334_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_72 sourceBody334_6

def sourceBody334_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody334_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody334_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody334_75 sourceBody334_0

def sourceBody334_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_76 sourceBody334_6

def sourceBody334_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_77 sourceBody334_0

def sourceBody334_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_74 sourceBody334_78

def sourceBody334_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_73 sourceBody334_79

def sourceBody334_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_69 sourceBody334_80

def sourceBody334_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_68 sourceBody334_81

def sourceBody334_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_67 sourceBody334_82

def sourceBody334_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_66 sourceBody334_83

def sourceBody334_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody334_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody334_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_86 sourceBody334_0

def sourceBody334_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_87 sourceBody334_0

def sourceBody334_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_85 sourceBody334_88

def sourceBody334_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_89

def sourceBody334_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_84 sourceBody334_90

def sourceBody334_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody334_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_91 sourceBody334_92

def sourceBody334_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody334_93 sourceBody334_75

def sourceBody334_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_94 sourceBody334_6

def sourceBody334_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_95 sourceBody334_0

def sourceBody334_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_65 sourceBody334_96

def sourceBody334_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_64 sourceBody334_97

def sourceBody334_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_60 sourceBody334_98

def sourceBody334_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_59 sourceBody334_99

def sourceBody334_101 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody334_100 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody334_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_101 sourceBody334_6

def sourceBody334_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_6 sourceBody334_102

def sourceBody334_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 28])

def sourceBody334_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 152#64]),
      Flapjack.WordLangExpHOL.var 32])

def sourceBody334_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 32])

def sourceBody334_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody334_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 12)) (some 176) ([30, 24, 34]) (some (30, sourceBody334_107, 334, 13))

def sourceBody334_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_108 sourceBody334_6

def sourceBody334_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_109 sourceBody334_0

def sourceBody334_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_106 sourceBody334_110

def sourceBody334_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_105 sourceBody334_111

def sourceBody334_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_104 sourceBody334_112

def sourceBody334_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 20])

def sourceBody334_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody334_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_115 sourceBody334_0

def sourceBody334_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_116 sourceBody334_0

def sourceBody334_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_114 sourceBody334_117

def sourceBody334_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_118

def sourceBody334_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 28])

def sourceBody334_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody334_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody334_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody334_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 14)) (some 176) ([24, 34, 18]) (some (24, sourceBody334_123, 334, 15))

def sourceBody334_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_124 sourceBody334_6

def sourceBody334_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_125 sourceBody334_0

def sourceBody334_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_122 sourceBody334_126

def sourceBody334_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_121 sourceBody334_127

def sourceBody334_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_120 sourceBody334_128

def sourceBody334_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 30])

def sourceBody334_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody334_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_131 sourceBody334_0

def sourceBody334_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_132 sourceBody334_0

def sourceBody334_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_130 sourceBody334_133

def sourceBody334_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_134

def sourceBody334_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 28])

def sourceBody334_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody334_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody334_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody334_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody334_0, 334, 16)) (some 176) ([34, 18, 26]) (some (34, sourceBody334_139, 334, 17))

def sourceBody334_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_140 sourceBody334_6

def sourceBody334_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_141 sourceBody334_0

def sourceBody334_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_138 sourceBody334_142

def sourceBody334_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_137 sourceBody334_143

def sourceBody334_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_136 sourceBody334_144

def sourceBody334_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 24])

def sourceBody334_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody334_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_147 sourceBody334_0

def sourceBody334_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_148 sourceBody334_0

def sourceBody334_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_146 sourceBody334_149

def sourceBody334_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_150

def sourceBody334_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody334_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 248#64)

def sourceBody334_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 18 (Flapjack.WordLangAddr.addr 34 0#64))

def sourceBody334_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_154 sourceBody334_0

def sourceBody334_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_153 sourceBody334_155

def sourceBody334_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_152 sourceBody334_156

def sourceBody334_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_151 sourceBody334_157

def sourceBody334_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody334_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody334_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_160 sourceBody334_155

def sourceBody334_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_159 sourceBody334_161

def sourceBody334_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_158 sourceBody334_162

def sourceBody334_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody334_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody334_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_165 sourceBody334_0

def sourceBody334_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_164 sourceBody334_166

def sourceBody334_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_163 sourceBody334_167

def sourceBody334_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_145 sourceBody334_168

def sourceBody334_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_169

def sourceBody334_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_170

def sourceBody334_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_135 sourceBody334_171

def sourceBody334_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_129 sourceBody334_172

def sourceBody334_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_173

def sourceBody334_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_174

def sourceBody334_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_119 sourceBody334_175

def sourceBody334_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_113 sourceBody334_176

def sourceBody334_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_177

def sourceBody334_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_178

def sourceBody334_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_103 sourceBody334_179

def sourceBody334_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_58 sourceBody334_180

def sourceBody334_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_181

def sourceBody334_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_57 sourceBody334_182

def sourceBody334_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_10 sourceBody334_183

def sourceBody334_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_184

def sourceBody334_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_185

def sourceBody334_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_1 sourceBody334_186

def sourceBody334_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody334_0 sourceBody334_187

def source334 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (334, 9, sourceBody334_188)
end InitECandidate.Proofs.WordStages
