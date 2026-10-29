import InitECandidate.Proofs.WordStages.Source69
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody85_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody85_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody85_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody85_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody85_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 6) sourceBody85_2 sourceBody85_3

def sourceBody85_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody85_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_4 sourceBody85_5

def sourceBody85_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody85_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody85_9 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 84) ([0, 8]) (none)

def sourceBody85_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody85_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_9 sourceBody85_10

def sourceBody85_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_8 sourceBody85_11

def sourceBody85_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody85_12 sourceBody85_10

def sourceBody85_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_13 sourceBody85_5

def sourceBody85_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_14 sourceBody85_10

def sourceBody85_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_7 sourceBody85_15

def sourceBody85_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_6 sourceBody85_16

def sourceBody85_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_1 sourceBody85_17

def sourceBody85_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_0 sourceBody85_18

def sourceBody85_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody85_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody85_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody85_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody85_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody85_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody85_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody85_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody85_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody85_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody85_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody85_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody85_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody85_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody85_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody85_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody85_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
              (Flapjack.WordLangExpHOL.const 24#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.var 16])
        (Flapjack.WordLangExpHOL.const 32#64),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
            (Flapjack.WordLangExpHOL.const 24#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
            (Flapjack.WordLangExpHOL.const 16#64),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
            (Flapjack.WordLangExpHOL.const 8#64),
          Flapjack.WordLangExpHOL.var 14]])

def sourceBody85_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody85_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_37 sourceBody85_10

def sourceBody85_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_36 sourceBody85_38

def sourceBody85_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_35 sourceBody85_39

def sourceBody85_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_34 sourceBody85_40

def sourceBody85_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_33 sourceBody85_41

def sourceBody85_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_32 sourceBody85_42

def sourceBody85_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_31 sourceBody85_43

def sourceBody85_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_30 sourceBody85_44

def sourceBody85_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_29 sourceBody85_45

def sourceBody85_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_28 sourceBody85_46

def sourceBody85_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_27 sourceBody85_47

def sourceBody85_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_26 sourceBody85_48

def sourceBody85_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_25 sourceBody85_49

def sourceBody85_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_24 sourceBody85_50

def sourceBody85_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_23 sourceBody85_51

def sourceBody85_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_22 sourceBody85_52

def sourceBody85_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_21 sourceBody85_53

def sourceBody85_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_20 sourceBody85_54

def sourceBody85_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody85_19 sourceBody85_55

def source85 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (85, 2, sourceBody85_56)
end InitECandidate.Proofs.WordStages
