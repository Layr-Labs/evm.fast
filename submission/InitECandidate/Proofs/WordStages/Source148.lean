import InitECandidate.Proofs.WordStages.Source132
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody148_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody148_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody148_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody148_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody148_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody148_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody148_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody148_0, 148, 2)) (some 139) ([28, 12, 22, 16]) (some (28, sourceBody148_5, 148, 3))

def sourceBody148_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody148_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_6 sourceBody148_7

def sourceBody148_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_8 sourceBody148_0

def sourceBody148_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_4 sourceBody148_9

def sourceBody148_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_3 sourceBody148_10

def sourceBody148_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_2 sourceBody148_11

def sourceBody148_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_1 sourceBody148_12

def sourceBody148_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody148_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody148_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody148_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody148_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody148_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 16) sourceBody148_17 sourceBody148_18

def sourceBody148_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_19 sourceBody148_7

def sourceBody148_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody148_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.var 28])

def sourceBody148_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody148_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody148_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody148_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody148_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 12)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody148_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody148_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody148_0, 148, 4)) (some 103) ([16, 26, 14, 24, 20]) (some (16, sourceBody148_28, 148, 5))

def sourceBody148_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_29 sourceBody148_7

def sourceBody148_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_30 sourceBody148_0

def sourceBody148_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_27 sourceBody148_31

def sourceBody148_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_26 sourceBody148_32

def sourceBody148_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_25 sourceBody148_33

def sourceBody148_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_24 sourceBody148_34

def sourceBody148_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_23 sourceBody148_35

def sourceBody148_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 28])

def sourceBody148_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 7#64])
          (Flapjack.WordLangExpHOL.const 3#64)),
      Flapjack.WordLangExpHOL.const 255#64])

def sourceBody148_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 26 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody148_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_39 sourceBody148_0

def sourceBody148_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_38 sourceBody148_40

def sourceBody148_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_37 sourceBody148_41

def sourceBody148_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody148_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody148_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_44 sourceBody148_0

def sourceBody148_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_45 sourceBody148_0

def sourceBody148_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_43 sourceBody148_46

def sourceBody148_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_47

def sourceBody148_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_42 sourceBody148_48

def sourceBody148_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_36 sourceBody148_49

def sourceBody148_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_50

def sourceBody148_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_51

def sourceBody148_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_22 sourceBody148_52

def sourceBody148_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_53

def sourceBody148_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody148_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_54 sourceBody148_55

def sourceBody148_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody148_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody148_56 sourceBody148_57

def sourceBody148_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_58 sourceBody148_7

def sourceBody148_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_59 sourceBody148_0

def sourceBody148_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_21 sourceBody148_60

def sourceBody148_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_20 sourceBody148_61

def sourceBody148_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_16 sourceBody148_62

def sourceBody148_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_15 sourceBody148_63

def sourceBody148_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody148_64 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody148_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_65 sourceBody148_7

def sourceBody148_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_7 sourceBody148_66

def sourceBody148_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody148_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody148_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_69 sourceBody148_0

def sourceBody148_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_68 sourceBody148_70

def sourceBody148_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_67 sourceBody148_71

def sourceBody148_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_14 sourceBody148_72

def sourceBody148_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_73

def sourceBody148_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_13 sourceBody148_74

def sourceBody148_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_75

def sourceBody148_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody148_0 sourceBody148_76

def source148 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (148, 6, sourceBody148_77)
end InitECandidate.Proofs.WordStages
