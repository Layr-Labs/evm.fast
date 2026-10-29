import InitECandidate.Proofs.WordStages.Source850
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody866_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody866_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody866_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody866_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody866_0, 866, 2)) (some 68) ([14]) (some (14, sourceBody866_2, 866, 3))

def sourceBody866_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody866_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_3 sourceBody866_4

def sourceBody866_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_5 sourceBody866_0

def sourceBody866_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_1 sourceBody866_6

def sourceBody866_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody866_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody866_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody866_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_10 sourceBody866_0

def sourceBody866_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_9 sourceBody866_11

def sourceBody866_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_8 sourceBody866_12

def sourceBody866_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody866_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody866_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody866_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody866_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody866_0, 866, 4)) (some 77) ([12, 16, 8]) (some (12, sourceBody866_17, 866, 5))

def sourceBody866_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_18 sourceBody866_4

def sourceBody866_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_19 sourceBody866_0

def sourceBody866_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_16 sourceBody866_20

def sourceBody866_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_15 sourceBody866_21

def sourceBody866_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_14 sourceBody866_22

def sourceBody866_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_23

def sourceBody866_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_24

def sourceBody866_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_13 sourceBody866_25

def sourceBody866_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody866_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 56#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 4#64)])

def sourceBody866_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody866_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody866_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 8

def sourceBody866_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_31 sourceBody866_0

def sourceBody866_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_30 sourceBody866_32

def sourceBody866_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_33 sourceBody866_0

def sourceBody866_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_29 sourceBody866_34

def sourceBody866_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_35

def sourceBody866_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_28 sourceBody866_36

def sourceBody866_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_37

def sourceBody866_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 56#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody866_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody866_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_40 sourceBody866_34

def sourceBody866_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_41

def sourceBody866_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_39 sourceBody866_42

def sourceBody866_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_43

def sourceBody866_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_38 sourceBody866_44

def sourceBody866_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody866_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody866_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_47 sourceBody866_34

def sourceBody866_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_48

def sourceBody866_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_46 sourceBody866_49

def sourceBody866_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_50

def sourceBody866_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_45 sourceBody866_51

def sourceBody866_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody866_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody866_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_54 sourceBody866_0

def sourceBody866_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_53 sourceBody866_55

def sourceBody866_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_52 sourceBody866_56

def sourceBody866_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_27 sourceBody866_57

def sourceBody866_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_58

def sourceBody866_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_26 sourceBody866_59

def sourceBody866_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_7 sourceBody866_60

def sourceBody866_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_61

def sourceBody866_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody866_0 sourceBody866_62

def source866 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (866, 4, sourceBody866_63)
end InitECandidate.Proofs.WordStages
