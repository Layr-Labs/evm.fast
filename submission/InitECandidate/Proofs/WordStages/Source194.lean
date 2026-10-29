import InitECandidate.Proofs.WordStages.Source178
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody194_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody194_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody194_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody194_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody194_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody194_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody194_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody194_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 12) sourceBody194_5 sourceBody194_6

def sourceBody194_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_7 sourceBody194_2

def sourceBody194_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody194_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody194_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody194_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody194_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 22 6))

def sourceBody194_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody194_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]),
      Flapjack.WordLangExpHOL.var 14])

def sourceBody194_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody194_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody194_0, 194, 2)) (some 193) ([10, 20]) (some (22, sourceBody194_16, 194, 3))

def sourceBody194_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_17 sourceBody194_2

def sourceBody194_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_18 sourceBody194_0

def sourceBody194_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_15 sourceBody194_19

def sourceBody194_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_14 sourceBody194_20

def sourceBody194_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_13 sourceBody194_21

def sourceBody194_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_12 sourceBody194_22

def sourceBody194_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_9 sourceBody194_23

def sourceBody194_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_0 sourceBody194_24

def sourceBody194_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_0 sourceBody194_25

def sourceBody194_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_11 sourceBody194_26

def sourceBody194_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_0 sourceBody194_27

def sourceBody194_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_10 sourceBody194_28

def sourceBody194_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_0 sourceBody194_29

def sourceBody194_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody194_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_30 sourceBody194_31

def sourceBody194_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody194_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody194_32 sourceBody194_33

def sourceBody194_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_34 sourceBody194_2

def sourceBody194_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_35 sourceBody194_0

def sourceBody194_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_9 sourceBody194_36

def sourceBody194_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_8 sourceBody194_37

def sourceBody194_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_4 sourceBody194_38

def sourceBody194_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_3 sourceBody194_39

def sourceBody194_41 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody194_40 (Flapjack.Spt.ls PUnit.unit)

def sourceBody194_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_41 sourceBody194_2

def sourceBody194_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_2 sourceBody194_42

def sourceBody194_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody194_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody194_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_45 sourceBody194_0

def sourceBody194_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_44 sourceBody194_46

def sourceBody194_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_43 sourceBody194_47

def sourceBody194_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_1 sourceBody194_48

def sourceBody194_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody194_0 sourceBody194_49

def source194 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (194, 3, sourceBody194_50)
end InitECandidate.Proofs.WordStages
