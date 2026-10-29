import InitECandidate.Proofs.WordStages.Source703
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody719_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody719_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody719_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody719_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody719_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 34) sourceBody719_2 sourceBody719_3

def sourceBody719_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody719_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_4 sourceBody719_5

def sourceBody719_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody719_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody719_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody719_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody719_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody719_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 10)

def sourceBody719_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody719_14 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 718) ([0, 46, 16, 34, 26, 44, 22]) (none)

def sourceBody719_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody719_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_14 sourceBody719_15

def sourceBody719_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_13 sourceBody719_16

def sourceBody719_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_12 sourceBody719_17

def sourceBody719_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_11 sourceBody719_18

def sourceBody719_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_10 sourceBody719_19

def sourceBody719_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_9 sourceBody719_20

def sourceBody719_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_8 sourceBody719_21

def sourceBody719_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody719_22 sourceBody719_15

def sourceBody719_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_23 sourceBody719_5

def sourceBody719_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_24 sourceBody719_15

def sourceBody719_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_7 sourceBody719_25

def sourceBody719_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_6 sourceBody719_26

def sourceBody719_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_1 sourceBody719_27

def sourceBody719_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_0 sourceBody719_28

def sourceBody719_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody719_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody719_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody719_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody719_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody719_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody719_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13402431016077863595#64)

def sourceBody719_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 2210141511517208575#64)

def sourceBody719_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 7435674573564081700#64)

def sourceBody719_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 7239337960414712511#64)

def sourceBody719_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 5412103778470702295#64)

def sourceBody719_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1873798617647539866#64)

def sourceBody719_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody719_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 16, 34, 26, 44, 22, 40]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody719_15, 719, 2)) (some 708) ([30, 50, 14, 32, 24, 42, 20, 38, 28, 48, 18, 36]) (some (30, sourceBody719_42, 719, 3))

def sourceBody719_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_43 sourceBody719_5

def sourceBody719_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_44 sourceBody719_15

def sourceBody719_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_41 sourceBody719_45

def sourceBody719_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_40 sourceBody719_46

def sourceBody719_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_39 sourceBody719_47

def sourceBody719_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_38 sourceBody719_48

def sourceBody719_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_37 sourceBody719_49

def sourceBody719_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_36 sourceBody719_50

def sourceBody719_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_35 sourceBody719_51

def sourceBody719_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_34 sourceBody719_52

def sourceBody719_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_33 sourceBody719_53

def sourceBody719_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_32 sourceBody719_54

def sourceBody719_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_31 sourceBody719_55

def sourceBody719_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_30 sourceBody719_56

def sourceBody719_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 46)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody719_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody719_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody719_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody719_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody719_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody719_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30, 50, 14, 32, 24, 42]

def sourceBody719_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_64 sourceBody719_15

def sourceBody719_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_63 sourceBody719_65

def sourceBody719_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_62 sourceBody719_66

def sourceBody719_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_61 sourceBody719_67

def sourceBody719_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_60 sourceBody719_68

def sourceBody719_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_59 sourceBody719_69

def sourceBody719_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_58 sourceBody719_70

def sourceBody719_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_57 sourceBody719_71

def sourceBody719_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_72

def sourceBody719_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_73

def sourceBody719_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_74

def sourceBody719_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_75

def sourceBody719_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_76

def sourceBody719_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_77

def sourceBody719_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_78

def sourceBody719_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_79

def sourceBody719_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_80

def sourceBody719_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_81

def sourceBody719_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_82

def sourceBody719_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_83

def sourceBody719_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_84

def sourceBody719_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_15 sourceBody719_85

def sourceBody719_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody719_29 sourceBody719_86

def source719 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (719, 7, sourceBody719_87)
end InitECandidate.Proofs.WordStages
