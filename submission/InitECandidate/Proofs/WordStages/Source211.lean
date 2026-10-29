import InitECandidate.Proofs.WordStages.Source195
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody211_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody211_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody211_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody211_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody211_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 40) sourceBody211_2 sourceBody211_3

def sourceBody211_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody211_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_4 sourceBody211_5

def sourceBody211_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody211_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody211_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32, 26, 40, 22]

def sourceBody211_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody211_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_12 sourceBody211_13

def sourceBody211_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_11 sourceBody211_14

def sourceBody211_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_10 sourceBody211_15

def sourceBody211_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_9 sourceBody211_16

def sourceBody211_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_8 sourceBody211_17

def sourceBody211_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody211_18 sourceBody211_13

def sourceBody211_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_19 sourceBody211_5

def sourceBody211_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_20 sourceBody211_13

def sourceBody211_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_7 sourceBody211_21

def sourceBody211_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_6 sourceBody211_22

def sourceBody211_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_1 sourceBody211_23

def sourceBody211_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_0 sourceBody211_24

def sourceBody211_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody211_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody211_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody211_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody211_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody211_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody211_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody211_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody211_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody211_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 26, 40, 22, 36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody211_13, 211, 2)) (some 115) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody211_34, 211, 3))

def sourceBody211_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_35 sourceBody211_5

def sourceBody211_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_36 sourceBody211_13

def sourceBody211_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_33 sourceBody211_37

def sourceBody211_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_32 sourceBody211_38

def sourceBody211_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_31 sourceBody211_39

def sourceBody211_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_30 sourceBody211_40

def sourceBody211_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_29 sourceBody211_41

def sourceBody211_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_28 sourceBody211_42

def sourceBody211_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_27 sourceBody211_43

def sourceBody211_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_26 sourceBody211_44

def sourceBody211_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody211_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 42, 18, 30]

def sourceBody211_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_50 sourceBody211_13

def sourceBody211_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_49 sourceBody211_51

def sourceBody211_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_48 sourceBody211_52

def sourceBody211_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_47 sourceBody211_53

def sourceBody211_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_46 sourceBody211_54

def sourceBody211_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_45 sourceBody211_55

def sourceBody211_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_56

def sourceBody211_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_57

def sourceBody211_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_58

def sourceBody211_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_59

def sourceBody211_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_60

def sourceBody211_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_61

def sourceBody211_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_62

def sourceBody211_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_63

def sourceBody211_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_64

def sourceBody211_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_13 sourceBody211_65

def sourceBody211_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody211_25 sourceBody211_66

def source211 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (211, 9, sourceBody211_67)
end InitECandidate.Proofs.WordStages
