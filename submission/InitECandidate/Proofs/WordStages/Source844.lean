import InitECandidate.Proofs.WordStages.Source828
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody844_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody844_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody844_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody844_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody844_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody844_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody844_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody844_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody844_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody844_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody844_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody844_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody844_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody844_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody844_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody844_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody844_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody844_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 22,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 26,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody844_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody844_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody844_0, 844, 2)) (some 181) ([24]) (some (22, sourceBody844_18, 844, 3))

def sourceBody844_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody844_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_19 sourceBody844_20

def sourceBody844_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_21 sourceBody844_0

def sourceBody844_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_17 sourceBody844_22

def sourceBody844_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_16 sourceBody844_23

def sourceBody844_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_15 sourceBody844_24

def sourceBody844_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_14 sourceBody844_25

def sourceBody844_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_13 sourceBody844_26

def sourceBody844_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_12 sourceBody844_27

def sourceBody844_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_11 sourceBody844_28

def sourceBody844_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_10 sourceBody844_29

def sourceBody844_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_9 sourceBody844_30

def sourceBody844_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_8 sourceBody844_31

def sourceBody844_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_7 sourceBody844_32

def sourceBody844_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_6 sourceBody844_33

def sourceBody844_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_5 sourceBody844_34

def sourceBody844_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_4 sourceBody844_35

def sourceBody844_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_3 sourceBody844_36

def sourceBody844_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_2 sourceBody844_37

def sourceBody844_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_1 sourceBody844_38

def sourceBody844_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody844_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody844_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody844_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody844_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody844_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody844_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody844_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody844_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody844_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody844_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody844_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody844_0, 844, 4)) (some 181) ([8]) (some (6, sourceBody844_50, 844, 5))

def sourceBody844_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_51 sourceBody844_20

def sourceBody844_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_52 sourceBody844_0

def sourceBody844_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_49 sourceBody844_53

def sourceBody844_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_48 sourceBody844_54

def sourceBody844_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_47 sourceBody844_55

def sourceBody844_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_16 sourceBody844_56

def sourceBody844_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_46 sourceBody844_57

def sourceBody844_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_14 sourceBody844_58

def sourceBody844_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_45 sourceBody844_59

def sourceBody844_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_12 sourceBody844_60

def sourceBody844_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_44 sourceBody844_61

def sourceBody844_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_10 sourceBody844_62

def sourceBody844_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_43 sourceBody844_63

def sourceBody844_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_8 sourceBody844_64

def sourceBody844_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_42 sourceBody844_65

def sourceBody844_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_6 sourceBody844_66

def sourceBody844_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_41 sourceBody844_67

def sourceBody844_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_4 sourceBody844_68

def sourceBody844_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_40 sourceBody844_69

def sourceBody844_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64])

def sourceBody844_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody844_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody844_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody844_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody844_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody844_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody844_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody844_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody844_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 16,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody844_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody844_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody844_0, 844, 6)) (some 181) ([20]) (some (18, sourceBody844_81, 844, 7))

def sourceBody844_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_82 sourceBody844_20

def sourceBody844_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_83 sourceBody844_0

def sourceBody844_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_80 sourceBody844_84

def sourceBody844_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_79 sourceBody844_85

def sourceBody844_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_78 sourceBody844_86

def sourceBody844_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_48 sourceBody844_87

def sourceBody844_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_77 sourceBody844_88

def sourceBody844_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_16 sourceBody844_89

def sourceBody844_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_76 sourceBody844_90

def sourceBody844_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_14 sourceBody844_91

def sourceBody844_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_75 sourceBody844_92

def sourceBody844_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_12 sourceBody844_93

def sourceBody844_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_74 sourceBody844_94

def sourceBody844_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_10 sourceBody844_95

def sourceBody844_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_73 sourceBody844_96

def sourceBody844_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_8 sourceBody844_97

def sourceBody844_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_72 sourceBody844_98

def sourceBody844_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_6 sourceBody844_99

def sourceBody844_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_71 sourceBody844_100

def sourceBody844_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 21#64,
      Flapjack.WordLangExpHOL.var 6])

def sourceBody844_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody844_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody844_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody844_0, 844, 8)) (some 180) ([26]) (some (26, sourceBody844_104, 844, 9))

def sourceBody844_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_105 sourceBody844_20

def sourceBody844_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_106 sourceBody844_0

def sourceBody844_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_103 sourceBody844_107

def sourceBody844_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 14])

def sourceBody844_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody844_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_110 sourceBody844_0

def sourceBody844_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_109 sourceBody844_111

def sourceBody844_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_108 sourceBody844_112

def sourceBody844_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_113

def sourceBody844_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_114

def sourceBody844_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_102 sourceBody844_115

def sourceBody844_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_116

def sourceBody844_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_101 sourceBody844_117

def sourceBody844_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_118

def sourceBody844_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_119

def sourceBody844_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_70 sourceBody844_120

def sourceBody844_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_121

def sourceBody844_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_122

def sourceBody844_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_39 sourceBody844_123

def sourceBody844_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_124

def sourceBody844_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody844_0 sourceBody844_125

def source844 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (844, 2, sourceBody844_126)
end InitECandidate.Proofs.WordStages
