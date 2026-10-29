import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source617
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word617_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word617_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word617_0_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 112, 20, 94]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word617_0_0, 617, 2)) (some 471) ([]) (some (58, word617_0_1, 617, 3))

def word617_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word617_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_2 word617_0_3

def word617_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word617_0_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([58, 132, 10, 84]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 4)) (some 471) ([]) (some (48, word617_0_5, 617, 5))

def word617_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_4 word617_0_6

def word617_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_7 word617_0_3

def word617_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 58)

def word617_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_8 word617_0_9

def word617_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 132)

def word617_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_10 word617_0_11

def word617_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 10)

def word617_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_12 word617_0_13

def word617_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 84)

def word617_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_14 word617_0_15

def word617_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word617_0_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 6)) (some 462) ([122, 30, 104, 68]) (some (122, word617_0_17, 617, 7))

def word617_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_16 word617_0_18

def word617_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_19 word617_0_3

def word617_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 142

def word617_0_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([122, 30, 104, 68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 8)) (some 471) ([]) (some (142, word617_0_21, 617, 9))

def word617_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_20 word617_0_22

def word617_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_23 word617_0_3

def word617_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word617_0_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([142, 6, 80, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 10)) (some 471) ([]) (some (118, word617_0_25, 617, 11))

def word617_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_24 word617_0_26

def word617_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_27 word617_0_3

def word617_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word617_0_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([118, 26, 100, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 12)) (some 471) ([]) (some (138, word617_0_29, 617, 13))

def word617_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_28 word617_0_30

def word617_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_31 word617_0_3

def word617_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word617_0_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([138, 16, 90, 54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 14)) (some 471) ([]) (some (128, word617_0_33, 617, 15))

def word617_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_32 word617_0_34

def word617_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_35 word617_0_3

def word617_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 146

def word617_0_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([128, 34, 108, 72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 16)) (some 471) ([]) (some (146, word617_0_37, 617, 17))

def word617_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_36 word617_0_38

def word617_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_39 word617_0_3

def word617_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def word617_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_40 word617_0_41

def word617_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 122)

def word617_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_42 word617_0_43

def word617_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def word617_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_44 word617_0_45

def word617_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 104)

def word617_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_46 word617_0_47

def word617_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 68)

def word617_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_48 word617_0_49

def word617_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word617_0_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 18)) (some 102) ([78, 42, 116, 24]) (some (78, word617_0_51, 617, 19))

def word617_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_50 word617_0_52

def word617_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_53 word617_0_3

def word617_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 146, Flapjack.WordLangExpHOL.const 144#64]))

def word617_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_54 word617_0_55

def word617_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_56 word617_0_57

def word617_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_59 word617_0_3

def word617_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_60 word617_0_61

def word617_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_62 word617_0_63

def word617_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_64 word617_0_65

def word617_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_67 word617_0_3

def word617_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_68 word617_0_61

def word617_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_69 word617_0_70

def word617_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_71 word617_0_61

def word617_0_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 116) word617_0_66 word617_0_72

def word617_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_58 word617_0_73

def word617_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_74 word617_0_3

def word617_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def word617_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_75 word617_0_76

def word617_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_77 word617_0_78

def word617_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_80 word617_0_3

def word617_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_81 word617_0_82

def word617_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_83 word617_0_84

def word617_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_85 word617_0_86

def word617_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_88 word617_0_3

def word617_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_89 word617_0_82

def word617_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_90 word617_0_91

def word617_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_92 word617_0_82

def word617_0_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 88) word617_0_87 word617_0_93

def word617_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_79 word617_0_94

def word617_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_95 word617_0_3

def word617_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 98, Flapjack.WordLangExpHOL.var 126])

def word617_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_96 word617_0_97

def word617_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 8#64)

def word617_0_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 78)

def word617_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_99 word617_0_100

def word617_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_101 word617_0_99

def word617_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_102 word617_0_51

def word617_0_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 106 (Flapjack.WordRegImm.imm 0#64) word617_0_103 word617_0_0

def word617_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_104 word617_0_0

def word617_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_98 word617_0_105

def word617_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_106 word617_0_3

def word617_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 142)

def word617_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_107 word617_0_108

def word617_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def word617_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_109 word617_0_110

def word617_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 80)

def word617_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_111 word617_0_112

def word617_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 44)

def word617_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_113 word617_0_114

def word617_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 118)

def word617_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_115 word617_0_116

def word617_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def word617_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_117 word617_0_118

def word617_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 100)

def word617_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_119 word617_0_120

def word617_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 64)

def word617_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_121 word617_0_122

def word617_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 138)

def word617_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_123 word617_0_124

def word617_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def word617_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_125 word617_0_126

def word617_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 90)

def word617_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_127 word617_0_128

def word617_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 54)

def word617_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_129 word617_0_130

def word617_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 128)

def word617_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_131 word617_0_132

def word617_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 34)

def word617_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_133 word617_0_134

def word617_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 108)

def word617_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_135 word617_0_136

def word617_0_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 72)

def word617_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_137 word617_0_138

def word617_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word617_0_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([78, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 20)) (some 477) ([116, 24, 98, 62, 136, 14, 88, 52, 126, 32, 106, 70, 144, 8, 82, 46]) (some (116, word617_0_140, 617, 21))

def word617_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_139 word617_0_141

def word617_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_142 word617_0_3

def word617_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def word617_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_143 word617_0_144

def word617_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word617_0_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([116]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 22)) (some 489) ([24]) (some (24, word617_0_146, 617, 23))

def word617_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_145 word617_0_147

def word617_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_148 word617_0_3

def word617_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 100#64)

def word617_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_149 word617_0_150

def word617_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 116)

def word617_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_151 word617_0_152

def word617_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_153 word617_0_154

def word617_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_63 word617_0_3

def word617_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_156 word617_0_80

def word617_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3000#64)

def word617_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_157 word617_0_158

def word617_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_70 word617_0_3

def word617_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_160 word617_0_88

def word617_0_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 62 (Flapjack.WordRegImm.reg 136) word617_0_159 word617_0_161

def word617_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_155 word617_0_162

def word617_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_163 word617_0_3

def word617_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_164 word617_0_61

def word617_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 4)

def word617_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_165 word617_0_166

def word617_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_167 word617_0_88

def word617_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_169 word617_0_3

def word617_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_170 word617_0_171

def word617_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 11300#64)

def word617_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_172 word617_0_173

def word617_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_154 word617_0_3

def word617_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_175 word617_0_78

def word617_0_177 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 136 (Flapjack.WordRegImm.reg 14) word617_0_174 word617_0_176

def word617_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_168 word617_0_177

def word617_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_178 word617_0_3

def word617_0_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 98])

def word617_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_179 word617_0_180

def word617_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 78)

def word617_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_181 word617_0_182

def word617_0_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 136

def word617_0_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 24)) (some 459) ([136, 14]) (some (136, word617_0_184, 617, 25))

def word617_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_183 word617_0_185

def word617_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_186 word617_0_3

def word617_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 62)

def word617_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_187 word617_0_188

def word617_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word617_0_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([136]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 26)) (some 466) ([14]) (some (14, word617_0_190, 617, 27))

def word617_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_189 word617_0_191

def word617_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_192 word617_0_3

def word617_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 116)

def word617_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_193 word617_0_194

def word617_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_195 word617_0_78

def word617_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_81 word617_0_197

def word617_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 48)

def word617_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_198 word617_0_199

def word617_0_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([136]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 28)) (some 490) ([14]) (some (14, word617_0_190, 617, 29))

def word617_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_200 word617_0_201

def word617_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_202 word617_0_3

def word617_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_89 word617_0_204

def word617_0_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 88) word617_0_203 word617_0_205

def word617_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_196 word617_0_206

def word617_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_207 word617_0_3

def word617_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 48)

def word617_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_208 word617_0_209

def word617_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word617_0_212 : WordLangProgHOL (BitVec 64) :=
.call (some (([136, 14, 88]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 30)) (some 587) ([52]) (some (52, word617_0_211, 617, 31))

def word617_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_210 word617_0_212

def word617_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_213 word617_0_3

def word617_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 14)

def word617_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_214 word617_0_215

def word617_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 136)

def word617_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_216 word617_0_217

def word617_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_218 word617_0_219

def word617_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_84 word617_0_3

def word617_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_221 word617_0_222

def word617_0_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 88)

def word617_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_223 word617_0_224

def word617_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word617_0_227 : WordLangProgHOL (BitVec 64) :=
.call (some (([126]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 32)) (some 466) ([32]) (some (32, word617_0_226, 617, 33))

def word617_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_225 word617_0_227

def word617_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_228 word617_0_3

def word617_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 52)

def word617_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_229 word617_0_230

def word617_0_232 : WordLangProgHOL (BitVec 64) :=
.call (some (([126]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 34)) (some 490) ([32]) (some (32, word617_0_226, 617, 35))

def word617_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_231 word617_0_232

def word617_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_233 word617_0_3

def word617_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_91 word617_0_3

def word617_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_235 word617_0_236

def word617_0_238 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.reg 106) word617_0_234 word617_0_237

def word617_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_220 word617_0_238

def word617_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_239 word617_0_3

def word617_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 52)

def word617_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_240 word617_0_241

def word617_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word617_0_244 : WordLangProgHOL (BitVec 64) :=
.call (some (([126, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 36)) (some 561) ([106]) (some (106, word617_0_243, 617, 37))

def word617_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_242 word617_0_244

def word617_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_245 word617_0_3

def word617_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_246 word617_0_219

def word617_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 4)

def word617_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_247 word617_0_248

def word617_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_249 word617_0_250

def word617_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_252 word617_0_3

def word617_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_253 word617_0_254

def word617_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 48)

def word617_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_255 word617_0_256

def word617_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 144

def word617_0_259 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 38)) (some 414) ([144]) (some (144, word617_0_258, 617, 39))

def word617_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_257 word617_0_259

def word617_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_260 word617_0_3

def word617_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 70)

def word617_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_261 word617_0_262

def word617_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_263 word617_0_264

def word617_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_266 word617_0_3

def word617_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_267 word617_0_268

def word617_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_269 word617_0_270

def word617_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 183600#64)

def word617_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_271 word617_0_272

def word617_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_273 word617_0_272

def word617_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_274 word617_0_272

def word617_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_275 word617_0_272

def word617_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word617_0_278 : WordLangProgHOL (BitVec 64) :=
.call (some (([144]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 40)) (some 467) ([8]) (some (8, word617_0_277, 617, 41))

def word617_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_276 word617_0_278

def word617_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_279 word617_0_3

def word617_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_250 word617_0_3

def word617_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_281 word617_0_282

def word617_0_284 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 82) word617_0_280 word617_0_283

def word617_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_265 word617_0_284

def word617_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_285 word617_0_3

def word617_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_287 word617_0_3

def word617_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_288 word617_0_264

def word617_0_290 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 144 (Flapjack.WordRegImm.reg 8) word617_0_286 word617_0_289

def word617_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_251 word617_0_290

def word617_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_291 word617_0_3

def word617_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 38)

def word617_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_292 word617_0_293

def word617_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 112)

def word617_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_294 word617_0_295

def word617_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 20)

def word617_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_296 word617_0_297

def word617_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 94)

def word617_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_298 word617_0_299

def word617_0_301 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 42)) (some 458) ([144, 8, 82, 46]) (some (144, word617_0_258, 617, 43))

def word617_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_300 word617_0_301

def word617_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_302 word617_0_3

def word617_0_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 122)

def word617_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_303 word617_0_304

def word617_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def word617_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_305 word617_0_306

def word617_0_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 104)

def word617_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_307 word617_0_308

def word617_0_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 68)

def word617_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_309 word617_0_310

def word617_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 70)

def word617_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_311 word617_0_312

def word617_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def word617_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_313 word617_0_314

def word617_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_315 word617_0_316

def word617_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_317 word617_0_318

def word617_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_319 word617_0_318

def word617_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_320 word617_0_316

def word617_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 82

def word617_0_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([144, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 44)) (some 616) ([82, 46, 120, 28, 102, 66, 140, 18]) (some (82, word617_0_322, 617, 45))

def word617_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_321 word617_0_323

def word617_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_324 word617_0_3

def word617_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 144)

def word617_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_325 word617_0_326

def word617_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word617_0_329 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 46)) (some 466) ([46]) (some (46, word617_0_328, 617, 47))

def word617_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_327 word617_0_329

def word617_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_330 word617_0_3

def word617_0_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def word617_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_331 word617_0_332

def word617_0_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.var 8])

def word617_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_333 word617_0_334

def word617_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 46)

def word617_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_335 word617_0_336

def word617_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 82) 120

def word617_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_337 word617_0_338

def word617_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 42)

def word617_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_339 word617_0_340

def word617_0_342 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 48)) (some 478) ([46]) (some (46, word617_0_328, 617, 49))

def word617_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_341 word617_0_342

def word617_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_343 word617_0_3

def word617_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 72#64]))

def word617_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_344 word617_0_345

def word617_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def word617_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_346 word617_0_347

def word617_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_348 word617_0_349

def word617_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_350 word617_0_351

def word617_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 46) 28

def word617_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_352 word617_0_353

def word617_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 146, Flapjack.WordLangExpHOL.const 32#64]))

def word617_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_354 word617_0_355

def word617_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 120

def word617_0_358 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 50)) (some 403) ([120]) (some (120, word617_0_357, 617, 51))

def word617_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_356 word617_0_358

def word617_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_359 word617_0_3

def word617_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 8#64]))

def word617_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_360 word617_0_361

def word617_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word617_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_362 word617_0_363

def word617_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word617_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_364 word617_0_365

def word617_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word617_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_366 word617_0_367

def word617_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 122)

def word617_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_368 word617_0_369

def word617_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 30)

def word617_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_370 word617_0_371

def word617_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 104)

def word617_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_372 word617_0_373

def word617_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 68)

def word617_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_374 word617_0_375

def word617_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word617_0_378 : WordLangProgHOL (BitVec 64) :=
.call (some (([120]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 52)) (some 106) ([28, 102, 66, 140, 18, 92, 56, 130]) (some (28, word617_0_377, 617, 53))

def word617_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_376 word617_0_378

def word617_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_379 word617_0_3

def word617_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_380 word617_0_351

def word617_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 120)

def word617_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_381 word617_0_382

def word617_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_383 word617_0_316

def word617_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_385 word617_0_3

def word617_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_386 word617_0_387

def word617_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_388 word617_0_389

def word617_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_390 word617_0_316

def word617_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_391 word617_0_318

def word617_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_392 word617_0_393

def word617_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_394 word617_0_393

def word617_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_395 word617_0_318

def word617_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_396 word617_0_316

def word617_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_397 word617_0_389

def word617_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_398 word617_0_393

def word617_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_399 word617_0_318

def word617_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_400 word617_0_316

def word617_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_401 word617_0_389

def word617_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word617_0_404 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 54)) (some 472) ([66, 140, 18, 92]) (some (66, word617_0_403, 617, 55))

def word617_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_402 word617_0_404

def word617_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_405 word617_0_3

def word617_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def word617_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_406 word617_0_407

def word617_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 102)

def word617_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_408 word617_0_409

def word617_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_410 word617_0_318

def word617_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_411 word617_0_318

def word617_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_412 word617_0_318

def word617_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 140

def word617_0_415 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 56)) (some 609) ([140, 18]) (some (140, word617_0_414, 617, 57))

def word617_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_413 word617_0_415

def word617_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_416 word617_0_3

def word617_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def word617_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_417 word617_0_418

def word617_0_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.var 8])

def word617_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_419 word617_0_420

def word617_0_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 140)

def word617_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_421 word617_0_422

def word617_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 66) 18

def word617_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_423 word617_0_424

def word617_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def word617_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_425 word617_0_426

def word617_0_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 72#64]),
      Flapjack.WordLangExpHOL.var 82])

def word617_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_427 word617_0_428

def word617_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_429 word617_0_422

def word617_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_430 word617_0_424

def word617_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 106)

def word617_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_431 word617_0_432

def word617_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_433 word617_0_318

def word617_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_435 word617_0_3

def word617_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_436 word617_0_437

def word617_0_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 183600#64)

def word617_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_438 word617_0_439

def word617_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_440 word617_0_439

def word617_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_441 word617_0_439

def word617_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_442 word617_0_439

def word617_0_444 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 58)) (some 468) ([140]) (some (140, word617_0_414, 617, 59))

def word617_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_443 word617_0_444

def word617_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_445 word617_0_3

def word617_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_316 word617_0_3

def word617_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_447 word617_0_393

def word617_0_449 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 140 (Flapjack.WordRegImm.reg 18) word617_0_446 word617_0_448

def word617_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_434 word617_0_449

def word617_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_450 word617_0_3

def word617_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_389 word617_0_3

def word617_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_452 word617_0_318

def word617_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 142)

def word617_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_453 word617_0_454

def word617_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 6)

def word617_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_455 word617_0_456

def word617_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 80)

def word617_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_457 word617_0_458

def word617_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 44)

def word617_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_459 word617_0_460

def word617_0_462 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 60)) (some 458) ([66, 140, 18, 92]) (some (66, word617_0_403, 617, 61))

def word617_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_461 word617_0_462

def word617_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_463 word617_0_3

def word617_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 118)

def word617_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_464 word617_0_465

def word617_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def word617_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_466 word617_0_467

def word617_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 100)

def word617_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_468 word617_0_469

def word617_0_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 64)

def word617_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_470 word617_0_471

def word617_0_473 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 62)) (some 458) ([140, 18, 92, 56]) (some (140, word617_0_414, 617, 63))

def word617_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_472 word617_0_473

def word617_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_474 word617_0_3

def word617_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 138)

def word617_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_475 word617_0_476

def word617_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 16)

def word617_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_477 word617_0_478

def word617_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 90)

def word617_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_479 word617_0_480

def word617_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 54)

def word617_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_481 word617_0_482

def word617_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word617_0_485 : WordLangProgHOL (BitVec 64) :=
.call (some (([140]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 64)) (some 458) ([18, 92, 56, 130]) (some (18, word617_0_484, 617, 65))

def word617_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_483 word617_0_485

def word617_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_486 word617_0_3

def word617_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 128)

def word617_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_487 word617_0_488

def word617_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 34)

def word617_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_489 word617_0_490

def word617_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 108)

def word617_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_491 word617_0_492

def word617_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 72)

def word617_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_493 word617_0_494

def word617_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def word617_0_497 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_0_0, 617, 66)) (some 458) ([92, 56, 130, 36]) (some (92, word617_0_496, 617, 67))

def word617_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_495 word617_0_497

def word617_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_498 word617_0_3

def word617_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 8)

def word617_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_499 word617_0_500

def word617_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 82)

def word617_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_501 word617_0_502

def word617_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 122)

def word617_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_503 word617_0_504

def word617_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def word617_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_505 word617_0_506

def word617_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 104)

def word617_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_507 word617_0_508

def word617_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 68)

def word617_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_509 word617_0_510

def word617_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 146, Flapjack.WordLangExpHOL.const 32#64]))

def word617_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_511 word617_0_512

def word617_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 48)

def word617_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_513 word617_0_514

def word617_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 52)

def word617_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_515 word617_0_516

def word617_0_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word617_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_517 word617_0_518

def word617_0_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_519 word617_0_520

def word617_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 102)

def word617_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_521 word617_0_522

def word617_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 66)

def word617_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_523 word617_0_524

def word617_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 140)

def word617_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_525 word617_0_526

def word617_0_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 18)

def word617_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_527 word617_0_528

def word617_0_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 126)

def word617_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_529 word617_0_530

def word617_0_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 32)

def word617_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_531 word617_0_532

def word617_0_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 136)

def word617_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_533 word617_0_534

def word617_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 106)

def word617_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_535 word617_0_536

def word617_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_537 word617_0_520

def word617_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_538 word617_0_518

def word617_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_539 word617_0_520

def word617_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_540 word617_0_518

def word617_0_542 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word617_0_0, 617, 68)) (some 615) ([92, 56, 130, 36, 110, 74, 148, 2, 76, 40, 114, 22, 96, 60, 134, 12, 86, 50, 124]) (some (92, word617_0_496, 617, 69))

def word617_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_541 word617_0_542

def word617_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_543 word617_0_3

def word617_0_545 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.reg 140) word617_0_451 word617_0_544

def word617_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_384 word617_0_545

def word617_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_546 word617_0_3

def word617_0_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 28)

def word617_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_547 word617_0_548

def word617_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_549 word617_0_316

def word617_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_388 word617_0_385

def word617_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_551 word617_0_385

def word617_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_552 word617_0_385

def word617_0_554 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word617_0_0, 617, 70)) (some 486) ([66]) (some (66, word617_0_403, 617, 71))

def word617_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_553 word617_0_554

def word617_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_555 word617_0_3

def word617_0_557 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 66 (Flapjack.WordRegImm.reg 140) word617_0_556 word617_0_453

def word617_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_550 word617_0_557

def word617_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_558 word617_0_3

def word617_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 0#64)

def word617_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_559 word617_0_560

def word617_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def word617_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word617_0_561 word617_0_562

def pass617_0 : WordLangProgHOL (BitVec 64) :=
word617_0_563
theorem pass617_0_eq : WordSimp.compileExp (source617.2.2) = pass617_0 := by
  kernel_rfl
#print axioms pass617_0_eq
end InitECandidate.Proofs.WordStages
