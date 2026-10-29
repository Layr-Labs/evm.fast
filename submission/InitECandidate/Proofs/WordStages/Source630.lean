import InitECandidate.Proofs.WordStages.Source614
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody630_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody630_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody630_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody630_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody630_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody630_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody630_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody630_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 30 (Flapjack.WordRegImm.reg 20) sourceBody630_5 sourceBody630_6

def sourceBody630_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_7 sourceBody630_2

def sourceBody630_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def sourceBody630_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 328#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody630_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 2#64)])

def sourceBody630_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def sourceBody630_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 2#64),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody630_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody630_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 2#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody630_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 42 (Flapjack.WordLangAddr.addr 42 0#64))

def sourceBody630_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 2#64),
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody630_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody630_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_18 sourceBody630_0

def sourceBody630_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_17 sourceBody630_19

def sourceBody630_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_16 sourceBody630_20

def sourceBody630_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_15 sourceBody630_21

def sourceBody630_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_14 sourceBody630_22

def sourceBody630_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_13 sourceBody630_23

def sourceBody630_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_12 sourceBody630_24

def sourceBody630_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_11 sourceBody630_25

def sourceBody630_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 30,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 42)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody630_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody630_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 18

def sourceBody630_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_29 sourceBody630_0

def sourceBody630_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_28 sourceBody630_30

def sourceBody630_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_31 sourceBody630_0

def sourceBody630_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_27 sourceBody630_32

def sourceBody630_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_26 sourceBody630_33

def sourceBody630_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_10 sourceBody630_34

def sourceBody630_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_35

def sourceBody630_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody630_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody630_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_38 sourceBody630_0

def sourceBody630_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_39 sourceBody630_0

def sourceBody630_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_37 sourceBody630_40

def sourceBody630_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_41

def sourceBody630_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_36 sourceBody630_42

def sourceBody630_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody630_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_43 sourceBody630_44

def sourceBody630_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody630_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody630_45 sourceBody630_46

def sourceBody630_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_47 sourceBody630_2

def sourceBody630_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_48 sourceBody630_0

def sourceBody630_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_9 sourceBody630_49

def sourceBody630_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_8 sourceBody630_50

def sourceBody630_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_4 sourceBody630_51

def sourceBody630_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_3 sourceBody630_52

def sourceBody630_54 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody630_53 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody630_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_54 sourceBody630_2

def sourceBody630_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_2 sourceBody630_55

def sourceBody630_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody630_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody630_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody630_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody630_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody630_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody630_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody630_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody630_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 42)

def sourceBody630_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 8)

def sourceBody630_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody630_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody630_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody630_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody630_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody630_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.WordRegImm.reg 26) sourceBody630_70 sourceBody630_71

def sourceBody630_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_72 sourceBody630_2

def sourceBody630_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody630_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody630_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody630_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 42)

def sourceBody630_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody630_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody630_0, 630, 2)) (some 627) ([6, 26, 16, 38]) (some (6, sourceBody630_78, 630, 3))

def sourceBody630_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_79 sourceBody630_2

def sourceBody630_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_80 sourceBody630_0

def sourceBody630_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_77 sourceBody630_81

def sourceBody630_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_76 sourceBody630_82

def sourceBody630_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_75 sourceBody630_83

def sourceBody630_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_68 sourceBody630_84

def sourceBody630_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody630_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody630_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody630_0, 630, 4)) (some 628) ([26]) (some (26, sourceBody630_87, 630, 5))

def sourceBody630_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_88 sourceBody630_2

def sourceBody630_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_89 sourceBody630_0

def sourceBody630_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_86 sourceBody630_90

def sourceBody630_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 46,
          Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                            (Flapjack.WordLangExpHOL.const 1#64)],
                      Flapjack.WordLangExpHOL.const 328#64]),
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                        (Flapjack.WordLangExpHOL.load
                          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                            [Flapjack.WordLangExpHOL.load
                                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                          (Flapjack.WordLangExpHOL.const 1#64)],
                                    Flapjack.WordLangExpHOL.const 320#64]),
                              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                                  [Flapjack.WordLangExpHOL.const 0#64,
                                    Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                                      (Flapjack.WordLangExpHOL.const 4#64)])
                                (Flapjack.WordLangExpHOL.const 3#64)]))
                        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                            [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 15#64])
                          (Flapjack.WordLangExpHOL.const 2#64)),
                      Flapjack.WordLangExpHOL.const 15#64])
                  (Flapjack.WordLangExpHOL.const 3#64)]),
          Flapjack.WordLangExpHOL.var 6],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 320#64]),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                  [Flapjack.WordLangExpHOL.const 10#64,
                    Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                      (Flapjack.WordLangExpHOL.const 4#64)])
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 2#64)),
      Flapjack.WordLangExpHOL.const 15#64])

def sourceBody630_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.var 16),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                      [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 16])],
              Flapjack.WordLangExpHOL.const 4294967295#64],
          Flapjack.WordLangExpHOL.var 8],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def sourceBody630_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_95 sourceBody630_0

def sourceBody630_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_96 sourceBody630_0

def sourceBody630_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_94 sourceBody630_97

def sourceBody630_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_98

def sourceBody630_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody630_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_100 sourceBody630_0

def sourceBody630_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_101 sourceBody630_0

def sourceBody630_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_99 sourceBody630_102

def sourceBody630_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 42)

def sourceBody630_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_104 sourceBody630_0

def sourceBody630_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_105 sourceBody630_0

def sourceBody630_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_103 sourceBody630_106

def sourceBody630_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
            (Flapjack.WordLangExpHOL.const 10#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 20)
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.const 10#64])],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_108 sourceBody630_0

def sourceBody630_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_109 sourceBody630_0

def sourceBody630_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_107 sourceBody630_110

def sourceBody630_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody630_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_112 sourceBody630_0

def sourceBody630_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_113 sourceBody630_0

def sourceBody630_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_111 sourceBody630_114

def sourceBody630_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody630_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_116 sourceBody630_0

def sourceBody630_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_117 sourceBody630_0

def sourceBody630_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_115 sourceBody630_118

def sourceBody630_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 79#64, Flapjack.WordLangExpHOL.var 24])

def sourceBody630_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody630_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 40)

def sourceBody630_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 14)

def sourceBody630_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody630_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody630_0, 630, 6)) (some 627) ([12, 32, 22, 44]) (some (12, sourceBody630_124, 630, 7))

def sourceBody630_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_125 sourceBody630_2

def sourceBody630_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_126 sourceBody630_0

def sourceBody630_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_123 sourceBody630_127

def sourceBody630_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_122 sourceBody630_128

def sourceBody630_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_121 sourceBody630_129

def sourceBody630_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_120 sourceBody630_130

def sourceBody630_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody630_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody630_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody630_0, 630, 8)) (some 629) ([32]) (some (32, sourceBody630_133, 630, 9))

def sourceBody630_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_134 sourceBody630_2

def sourceBody630_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_135 sourceBody630_0

def sourceBody630_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_132 sourceBody630_136

def sourceBody630_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                            (Flapjack.WordLangExpHOL.const 1#64)],
                      Flapjack.WordLangExpHOL.const 328#64]),
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                        (Flapjack.WordLangExpHOL.load
                          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                            [Flapjack.WordLangExpHOL.load
                                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                          (Flapjack.WordLangExpHOL.const 1#64)],
                                    Flapjack.WordLangExpHOL.const 320#64]),
                              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                                  [Flapjack.WordLangExpHOL.const 5#64,
                                    Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                                      (Flapjack.WordLangExpHOL.const 4#64)])
                                (Flapjack.WordLangExpHOL.const 3#64)]))
                        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                            [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 15#64])
                          (Flapjack.WordLangExpHOL.const 2#64)),
                      Flapjack.WordLangExpHOL.const 15#64])
                  (Flapjack.WordLangExpHOL.const 3#64)]),
          Flapjack.WordLangExpHOL.var 12],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 320#64]),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                  [Flapjack.WordLangExpHOL.const 15#64,
                    Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                      (Flapjack.WordLangExpHOL.const 4#64)])
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 2#64)),
      Flapjack.WordLangExpHOL.const 15#64])

def sourceBody630_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.var 22),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                      [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 22])],
              Flapjack.WordLangExpHOL.const 4294967295#64],
          Flapjack.WordLangExpHOL.var 34],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 44)

def sourceBody630_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_141 sourceBody630_0

def sourceBody630_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_142 sourceBody630_0

def sourceBody630_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_140 sourceBody630_143

def sourceBody630_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_144

def sourceBody630_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody630_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_146 sourceBody630_0

def sourceBody630_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_147 sourceBody630_0

def sourceBody630_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_145 sourceBody630_148

def sourceBody630_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 14)

def sourceBody630_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_150 sourceBody630_0

def sourceBody630_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_151 sourceBody630_0

def sourceBody630_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_149 sourceBody630_152

def sourceBody630_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
            (Flapjack.WordLangExpHOL.const 10#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.const 10#64])],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_154 sourceBody630_0

def sourceBody630_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_155 sourceBody630_0

def sourceBody630_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_153 sourceBody630_156

def sourceBody630_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def sourceBody630_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_158 sourceBody630_0

def sourceBody630_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_159 sourceBody630_0

def sourceBody630_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_157 sourceBody630_160

def sourceBody630_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody630_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_162 sourceBody630_0

def sourceBody630_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_163 sourceBody630_0

def sourceBody630_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_161 sourceBody630_164

def sourceBody630_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody630_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 44)

def sourceBody630_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_167 sourceBody630_0

def sourceBody630_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_168 sourceBody630_0

def sourceBody630_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_166 sourceBody630_169

def sourceBody630_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_170

def sourceBody630_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_165 sourceBody630_171

def sourceBody630_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_139 sourceBody630_172

def sourceBody630_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_173

def sourceBody630_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_138 sourceBody630_174

def sourceBody630_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_175

def sourceBody630_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_137 sourceBody630_176

def sourceBody630_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_177

def sourceBody630_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_178

def sourceBody630_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_131 sourceBody630_179

def sourceBody630_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_180

def sourceBody630_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_181

def sourceBody630_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_119 sourceBody630_182

def sourceBody630_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_93 sourceBody630_183

def sourceBody630_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_184

def sourceBody630_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_92 sourceBody630_185

def sourceBody630_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_186

def sourceBody630_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_91 sourceBody630_187

def sourceBody630_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_188

def sourceBody630_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_189

def sourceBody630_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_85 sourceBody630_190

def sourceBody630_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_191

def sourceBody630_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_192

def sourceBody630_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_193 sourceBody630_44

def sourceBody630_195 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody630_194 sourceBody630_46

def sourceBody630_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_195 sourceBody630_2

def sourceBody630_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_196 sourceBody630_0

def sourceBody630_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_74 sourceBody630_197

def sourceBody630_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_73 sourceBody630_198

def sourceBody630_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_69 sourceBody630_199

def sourceBody630_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_68 sourceBody630_200

def sourceBody630_202 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody630_201 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody630_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_202 sourceBody630_2

def sourceBody630_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_2 sourceBody630_203

def sourceBody630_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody630_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody630_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody630_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody630_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody630_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody630_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 14],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody630_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 22

def sourceBody630_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_213 sourceBody630_0

def sourceBody630_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_212 sourceBody630_214

def sourceBody630_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_215 sourceBody630_0

def sourceBody630_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_211 sourceBody630_216

def sourceBody630_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_217

def sourceBody630_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_210 sourceBody630_218

def sourceBody630_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_219

def sourceBody630_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody630_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 34],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_222 sourceBody630_216

def sourceBody630_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_223

def sourceBody630_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_221 sourceBody630_224

def sourceBody630_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_225

def sourceBody630_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_220 sourceBody630_226

def sourceBody630_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody630_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 28],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_229 sourceBody630_216

def sourceBody630_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_230

def sourceBody630_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_228 sourceBody630_231

def sourceBody630_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_232

def sourceBody630_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_227 sourceBody630_233

def sourceBody630_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody630_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 18],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_236 sourceBody630_216

def sourceBody630_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_237

def sourceBody630_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_235 sourceBody630_238

def sourceBody630_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_239

def sourceBody630_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_234 sourceBody630_240

def sourceBody630_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody630_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 40],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody630_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_243 sourceBody630_216

def sourceBody630_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_244

def sourceBody630_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_242 sourceBody630_245

def sourceBody630_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_246

def sourceBody630_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_241 sourceBody630_247

def sourceBody630_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody630_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody630_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_250 sourceBody630_0

def sourceBody630_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_249 sourceBody630_251

def sourceBody630_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_248 sourceBody630_252

def sourceBody630_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_209 sourceBody630_253

def sourceBody630_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_254

def sourceBody630_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_208 sourceBody630_255

def sourceBody630_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_256

def sourceBody630_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_207 sourceBody630_257

def sourceBody630_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_258

def sourceBody630_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_206 sourceBody630_259

def sourceBody630_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_260

def sourceBody630_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_205 sourceBody630_261

def sourceBody630_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_262

def sourceBody630_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_204 sourceBody630_263

def sourceBody630_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_67 sourceBody630_264

def sourceBody630_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_265

def sourceBody630_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_66 sourceBody630_266

def sourceBody630_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_267

def sourceBody630_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_65 sourceBody630_268

def sourceBody630_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_269

def sourceBody630_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_64 sourceBody630_270

def sourceBody630_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_271

def sourceBody630_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_63 sourceBody630_272

def sourceBody630_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_273

def sourceBody630_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_62 sourceBody630_274

def sourceBody630_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_275

def sourceBody630_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_61 sourceBody630_276

def sourceBody630_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_277

def sourceBody630_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_60 sourceBody630_278

def sourceBody630_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_279

def sourceBody630_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_59 sourceBody630_280

def sourceBody630_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_281

def sourceBody630_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_58 sourceBody630_282

def sourceBody630_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_283

def sourceBody630_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_57 sourceBody630_284

def sourceBody630_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_285

def sourceBody630_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_56 sourceBody630_286

def sourceBody630_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_1 sourceBody630_287

def sourceBody630_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody630_0 sourceBody630_288

def source630 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (630, 3, sourceBody630_289)
end InitECandidate.Proofs.WordStages
