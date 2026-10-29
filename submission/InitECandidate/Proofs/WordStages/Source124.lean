import InitECandidate.Proofs.WordStages.Source108
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody124_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody124_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody124_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody124_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody124_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 12

def sourceBody124_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_4 sourceBody124_0

def sourceBody124_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_3 sourceBody124_5

def sourceBody124_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_6 sourceBody124_0

def sourceBody124_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_2 sourceBody124_7

def sourceBody124_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_8

def sourceBody124_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_1 sourceBody124_9

def sourceBody124_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_10

def sourceBody124_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody124_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody124_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_13 sourceBody124_7

def sourceBody124_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_14

def sourceBody124_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_12 sourceBody124_15

def sourceBody124_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_16

def sourceBody124_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_11 sourceBody124_17

def sourceBody124_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody124_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody124_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_20 sourceBody124_7

def sourceBody124_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_21

def sourceBody124_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_19 sourceBody124_22

def sourceBody124_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_23

def sourceBody124_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_18 sourceBody124_24

def sourceBody124_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody124_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody124_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_27 sourceBody124_7

def sourceBody124_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_28

def sourceBody124_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_26 sourceBody124_29

def sourceBody124_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_30

def sourceBody124_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_25 sourceBody124_31

def sourceBody124_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody124_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody124_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_34 sourceBody124_7

def sourceBody124_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_35

def sourceBody124_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_33 sourceBody124_36

def sourceBody124_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_37

def sourceBody124_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_32 sourceBody124_38

def sourceBody124_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody124_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody124_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_41 sourceBody124_7

def sourceBody124_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_42

def sourceBody124_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_40 sourceBody124_43

def sourceBody124_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_44

def sourceBody124_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_39 sourceBody124_45

def sourceBody124_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody124_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody124_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_48 sourceBody124_7

def sourceBody124_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_49

def sourceBody124_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_47 sourceBody124_50

def sourceBody124_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_51

def sourceBody124_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_46 sourceBody124_52

def sourceBody124_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody124_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody124_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_55 sourceBody124_7

def sourceBody124_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_56

def sourceBody124_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_54 sourceBody124_57

def sourceBody124_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_0 sourceBody124_58

def sourceBody124_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_53 sourceBody124_59

def sourceBody124_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody124_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody124_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_62 sourceBody124_0

def sourceBody124_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_61 sourceBody124_63

def sourceBody124_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody124_60 sourceBody124_64

def source124 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (124, 6, sourceBody124_65)
end InitECandidate.Proofs.WordStages
