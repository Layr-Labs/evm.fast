import InitECandidate.Proofs.WordStages.Source172
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody188_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody188_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody188_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody188_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody188_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody188_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody188_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody188_4 sourceBody188_5

def sourceBody188_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody188_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_6 sourceBody188_7

def sourceBody188_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody188_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody188_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody188_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody188_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody188_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 14

def sourceBody188_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_14 sourceBody188_0

def sourceBody188_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_13 sourceBody188_15

def sourceBody188_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_16 sourceBody188_0

def sourceBody188_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_9 sourceBody188_17

def sourceBody188_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_18

def sourceBody188_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_12 sourceBody188_19

def sourceBody188_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_20

def sourceBody188_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody188_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody188_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_23 sourceBody188_0

def sourceBody188_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_22 sourceBody188_24

def sourceBody188_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_21 sourceBody188_25

def sourceBody188_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_11 sourceBody188_26

def sourceBody188_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_27

def sourceBody188_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_10 sourceBody188_28

def sourceBody188_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_29

def sourceBody188_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody188_30 sourceBody188_0

def sourceBody188_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_31 sourceBody188_7

def sourceBody188_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_32 sourceBody188_0

def sourceBody188_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_9 sourceBody188_33

def sourceBody188_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_8 sourceBody188_34

def sourceBody188_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_3 sourceBody188_35

def sourceBody188_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_2 sourceBody188_36

def sourceBody188_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody188_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody188_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody188_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody188_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody188_41 sourceBody188_3

def sourceBody188_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_42 sourceBody188_7

def sourceBody188_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody188_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody188_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody188_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody188_0, 188, 2)) (some 191) ([10]) (some (10, sourceBody188_46, 188, 3))

def sourceBody188_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_47 sourceBody188_7

def sourceBody188_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_48 sourceBody188_0

def sourceBody188_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_45 sourceBody188_49

def sourceBody188_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_50

def sourceBody188_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_51

def sourceBody188_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody188_52 sourceBody188_0

def sourceBody188_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_53 sourceBody188_7

def sourceBody188_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_54 sourceBody188_0

def sourceBody188_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_44 sourceBody188_55

def sourceBody188_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_43 sourceBody188_56

def sourceBody188_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_40 sourceBody188_57

def sourceBody188_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_39 sourceBody188_58

def sourceBody188_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody188_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody188_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody188_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_62 sourceBody188_17

def sourceBody188_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_63

def sourceBody188_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_61 sourceBody188_64

def sourceBody188_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_65

def sourceBody188_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody188_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_67 sourceBody188_24

def sourceBody188_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_66 sourceBody188_68

def sourceBody188_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_60 sourceBody188_69

def sourceBody188_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_70

def sourceBody188_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_59 sourceBody188_71

def sourceBody188_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_38 sourceBody188_72

def sourceBody188_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_73

def sourceBody188_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_37 sourceBody188_74

def sourceBody188_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_1 sourceBody188_75

def sourceBody188_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody188_0 sourceBody188_76

def source188 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (188, 2, sourceBody188_77)
end InitECandidate.Proofs.WordStages
