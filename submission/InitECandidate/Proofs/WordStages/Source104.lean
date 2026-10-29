import InitECandidate.Proofs.WordStages.Source88
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody104_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody104_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody104_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody104_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody104_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 22 (Flapjack.WordRegImm.reg 12) sourceBody104_2 sourceBody104_3

def sourceBody104_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody104_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_4 sourceBody104_5

def sourceBody104_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody104_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody104_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody104_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody104_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_9 sourceBody104_10

def sourceBody104_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_8 sourceBody104_11

def sourceBody104_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody104_12 sourceBody104_10

def sourceBody104_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_13 sourceBody104_5

def sourceBody104_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_14 sourceBody104_10

def sourceBody104_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_7 sourceBody104_15

def sourceBody104_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_6 sourceBody104_16

def sourceBody104_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_1 sourceBody104_17

def sourceBody104_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_0 sourceBody104_18

def sourceBody104_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody104_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody104_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody104_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody104_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody104_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody104_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody104_10, 104, 2)) (some 103) ([22, 12, 18, 14, 20]) (some (22, sourceBody104_25, 104, 3))

def sourceBody104_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_26 sourceBody104_5

def sourceBody104_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_27 sourceBody104_10

def sourceBody104_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_24 sourceBody104_28

def sourceBody104_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_23 sourceBody104_29

def sourceBody104_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_22 sourceBody104_30

def sourceBody104_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_21 sourceBody104_31

def sourceBody104_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_20 sourceBody104_32

def sourceBody104_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody104_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody104_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_35 sourceBody104_10

def sourceBody104_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_34 sourceBody104_36

def sourceBody104_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_33 sourceBody104_37

def sourceBody104_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_10 sourceBody104_38

def sourceBody104_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_10 sourceBody104_39

def sourceBody104_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody104_19 sourceBody104_40

def source104 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (104, 6, sourceBody104_41)
end InitECandidate.Proofs.WordStages
