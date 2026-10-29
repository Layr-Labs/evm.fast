import InitECandidate.Proofs.WordStages.Source765
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody781_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody781_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody781_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody781_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody781_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 10) sourceBody781_2 sourceBody781_3

def sourceBody781_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody781_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_4 sourceBody781_5

def sourceBody781_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody781_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody781_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody781_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody781_8, 781, 2)) (some 729) ([6, 10]) (some (6, sourceBody781_9, 781, 3))

def sourceBody781_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_10 sourceBody781_5

def sourceBody781_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_11 sourceBody781_8

def sourceBody781_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_1 sourceBody781_12

def sourceBody781_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_0 sourceBody781_13

def sourceBody781_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_8 sourceBody781_14

def sourceBody781_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_8 sourceBody781_15

def sourceBody781_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody781_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody781_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody781_8, 781, 4)) (some 729) ([6, 10]) (some (6, sourceBody781_9, 781, 5))

def sourceBody781_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_19 sourceBody781_5

def sourceBody781_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_20 sourceBody781_8

def sourceBody781_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_18 sourceBody781_21

def sourceBody781_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_17 sourceBody781_22

def sourceBody781_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_8 sourceBody781_23

def sourceBody781_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_8 sourceBody781_24

def sourceBody781_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_16 sourceBody781_25

def sourceBody781_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody781_26 sourceBody781_8

def sourceBody781_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_27 sourceBody781_5

def sourceBody781_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_28 sourceBody781_8

def sourceBody781_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_7 sourceBody781_29

def sourceBody781_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_6 sourceBody781_30

def sourceBody781_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_1 sourceBody781_31

def sourceBody781_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_0 sourceBody781_32

def sourceBody781_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody781_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody781_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody781_8, 781, 6)) (some 736) ([6, 10]) (some (6, sourceBody781_9, 781, 7))

def sourceBody781_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_36 sourceBody781_5

def sourceBody781_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_37 sourceBody781_8

def sourceBody781_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_35 sourceBody781_38

def sourceBody781_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_34 sourceBody781_39

def sourceBody781_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_8 sourceBody781_40

def sourceBody781_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_8 sourceBody781_41

def sourceBody781_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_33 sourceBody781_42

def sourceBody781_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody781_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody781_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_45 sourceBody781_8

def sourceBody781_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_44 sourceBody781_46

def sourceBody781_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody781_43 sourceBody781_47

def source781 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (781, 3, sourceBody781_48)
end InitECandidate.Proofs.WordStages
