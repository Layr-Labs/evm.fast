import InitECandidate.Proofs.WordStages.Source107
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody123_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody123_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody123_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody123_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody123_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody123_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody123_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody123_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody123_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 16) sourceBody123_7 sourceBody123_5

def sourceBody123_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_8 sourceBody123_4

def sourceBody123_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody123_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody123_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody123_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_12 sourceBody123_0

def sourceBody123_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_13 sourceBody123_0

def sourceBody123_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_11 sourceBody123_14

def sourceBody123_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_15

def sourceBody123_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
            (Flapjack.WordLangExpHOL.var 14),
          Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody123_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody123_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_18 sourceBody123_0

def sourceBody123_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_19 sourceBody123_0

def sourceBody123_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_17 sourceBody123_20

def sourceBody123_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_21

def sourceBody123_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_16 sourceBody123_22

def sourceBody123_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody123_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody123_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 16) sourceBody123_7 sourceBody123_5

def sourceBody123_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_26 sourceBody123_4

def sourceBody123_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 6])

def sourceBody123_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_28 sourceBody123_20

def sourceBody123_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_29

def sourceBody123_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
        (Flapjack.WordLangExpHOL.var 14)])

def sourceBody123_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody123_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_32 sourceBody123_0

def sourceBody123_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_33 sourceBody123_0

def sourceBody123_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_31 sourceBody123_34

def sourceBody123_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_35

def sourceBody123_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_30 sourceBody123_36

def sourceBody123_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody123_37 sourceBody123_0

def sourceBody123_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_38 sourceBody123_4

def sourceBody123_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_39 sourceBody123_0

def sourceBody123_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_10 sourceBody123_40

def sourceBody123_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_27 sourceBody123_41

def sourceBody123_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_25 sourceBody123_42

def sourceBody123_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_24 sourceBody123_43

def sourceBody123_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_23 sourceBody123_44

def sourceBody123_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody123_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_45 sourceBody123_46

def sourceBody123_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody123_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody123_47 sourceBody123_48

def sourceBody123_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_49 sourceBody123_4

def sourceBody123_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_50 sourceBody123_0

def sourceBody123_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_10 sourceBody123_51

def sourceBody123_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_9 sourceBody123_52

def sourceBody123_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_6 sourceBody123_53

def sourceBody123_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_5 sourceBody123_54

def sourceBody123_56 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody123_55 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody123_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_56 sourceBody123_4

def sourceBody123_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_4 sourceBody123_57

def sourceBody123_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody123_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 8]

def sourceBody123_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_60 sourceBody123_0

def sourceBody123_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_24 sourceBody123_61

def sourceBody123_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_59 sourceBody123_62

def sourceBody123_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_58 sourceBody123_63

def sourceBody123_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_3 sourceBody123_64

def sourceBody123_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_65

def sourceBody123_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_2 sourceBody123_66

def sourceBody123_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_67

def sourceBody123_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_1 sourceBody123_68

def sourceBody123_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody123_0 sourceBody123_69

def source123 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (123, 4, sourceBody123_70)
end InitECandidate.Proofs.WordStages
