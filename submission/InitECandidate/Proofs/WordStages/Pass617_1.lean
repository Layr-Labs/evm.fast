import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass617_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word617_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word617_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word617_1_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 112, 20, 94]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word617_1_0, 617, 2)) (some 471) ([]) (some (58, word617_1_1, 617, 3))

def word617_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word617_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_2 word617_1_3

def word617_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word617_1_6 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 4)) (some 471) ([]) (some (48, word617_1_5, 617, 5))

def word617_1_7 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_4 word617_1_6

def word617_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_7 word617_1_3

def word617_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 58)]

def word617_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_8 word617_1_9

def word617_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 132)]

def word617_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_10 word617_1_11

def word617_1_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 10)]

def word617_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_12 word617_1_13

def word617_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 84)]

def word617_1_16 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_14 word617_1_15

def word617_1_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word617_1_18 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 6)) (some 462) ([122, 30, 104, 68]) (some (122, word617_1_17, 617, 7))

def word617_1_19 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_16 word617_1_18

def word617_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_19 word617_1_3

def word617_1_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 142

def word617_1_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 8)) (some 471) ([]) (some (142, word617_1_21, 617, 9))

def word617_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_20 word617_1_22

def word617_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_23 word617_1_3

def word617_1_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word617_1_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 10)) (some 471) ([]) (some (118, word617_1_25, 617, 11))

def word617_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_24 word617_1_26

def word617_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_27 word617_1_3

def word617_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word617_1_30 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 12)) (some 471) ([]) (some (138, word617_1_29, 617, 13))

def word617_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_28 word617_1_30

def word617_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_31 word617_1_3

def word617_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word617_1_34 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 14)) (some 471) ([]) (some (128, word617_1_33, 617, 15))

def word617_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_32 word617_1_34

def word617_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_35 word617_1_3

def word617_1_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 146

def word617_1_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 16)) (some 471) ([]) (some (146, word617_1_37, 617, 17))

def word617_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_36 word617_1_38

def word617_1_40 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_39 word617_1_3

def word617_1_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 149 Flapjack.WordStore.heapLength

def word617_1_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 149 149 (Flapjack.WordRegImm.imm 1#64)))

def word617_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_41 word617_1_42

def word617_1_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 149 149

def word617_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_43 word617_1_44

def word617_1_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 149 18446744073709551360#64))

def word617_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_45 word617_1_46

def word617_1_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 146 (Flapjack.WordLangAddr.addr 149 112#64))

def word617_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_48

def word617_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_40 word617_1_49

def word617_1_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 122)]

def word617_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_50 word617_1_51

def word617_1_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 30)]

def word617_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_52 word617_1_53

def word617_1_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 104)]

def word617_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_54 word617_1_55

def word617_1_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 68)]

def word617_1_58 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_56 word617_1_57

def word617_1_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word617_1_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 18)) (some 102) ([78, 42, 116, 24]) (some (78, word617_1_59, 617, 19))

def word617_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_58 word617_1_60

def word617_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_61 word617_1_3

def word617_1_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 146)]

def word617_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 149 144#64))

def word617_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_63 word617_1_64

def word617_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_62 word617_1_65

def word617_1_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 116 0#64)

def word617_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_66 word617_1_67

def word617_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 1#64)

def word617_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_69 word617_1_3

def word617_1_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 0#64)

def word617_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_70 word617_1_71

def word617_1_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 1#64)

def word617_1_74 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_72 word617_1_73

def word617_1_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 1#64)

def word617_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_74 word617_1_75

def word617_1_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word617_1_78 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_77 word617_1_3

def word617_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_78 word617_1_71

def word617_1_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 0#64)

def word617_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_79 word617_1_80

def word617_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_81 word617_1_71

def word617_1_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 116) word617_1_76 word617_1_82

def word617_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_68 word617_1_83

def word617_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_84 word617_1_3

def word617_1_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def word617_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_85 word617_1_86

def word617_1_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 88 0#64)

def word617_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_87 word617_1_88

def word617_1_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def word617_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_90 word617_1_3

def word617_1_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 126 0#64)

def word617_1_93 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_91 word617_1_92

def word617_1_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 1#64)

def word617_1_95 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_93 word617_1_94

def word617_1_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 126 1#64)

def word617_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_95 word617_1_96

def word617_1_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word617_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_98 word617_1_3

def word617_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_99 word617_1_92

def word617_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def word617_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_100 word617_1_101

def word617_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_102 word617_1_92

def word617_1_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 88) word617_1_97 word617_1_103

def word617_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_89 word617_1_104

def word617_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_105 word617_1_3

def word617_1_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 126)]

def word617_1_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 98)]

def word617_1_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 106 149 (Flapjack.WordRegImm.reg 150)))

def word617_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_108 word617_1_109

def word617_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_107 word617_1_110

def word617_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_106 word617_1_111

def word617_1_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 8#64)

def word617_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 78)]

def word617_1_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 149)

def word617_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_114 word617_1_115

def word617_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_113 word617_1_116

def word617_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_117 word617_1_113

def word617_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_118 word617_1_59

def word617_1_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 106 (Flapjack.WordRegImm.imm 0#64) word617_1_119 word617_1_0

def word617_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_120 word617_1_0

def word617_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_112 word617_1_121

def word617_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_122 word617_1_3

def word617_1_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 142)]

def word617_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_123 word617_1_124

def word617_1_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 6)]

def word617_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_125 word617_1_126

def word617_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 80)]

def word617_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_127 word617_1_128

def word617_1_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 44)]

def word617_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_129 word617_1_130

def word617_1_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 118)]

def word617_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_131 word617_1_132

def word617_1_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 26)]

def word617_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_133 word617_1_134

def word617_1_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(88, 100)]

def word617_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_135 word617_1_136

def word617_1_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 64)]

def word617_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_137 word617_1_138

def word617_1_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(126, 138)]

def word617_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_139 word617_1_140

def word617_1_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 16)]

def word617_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_141 word617_1_142

def word617_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(106, 90)]

def word617_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_143 word617_1_144

def word617_1_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 54)]

def word617_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_145 word617_1_146

def word617_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(144, 128)]

def word617_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_147 word617_1_148

def word617_1_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 34)]

def word617_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_149 word617_1_150

def word617_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 108)]

def word617_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_151 word617_1_152

def word617_1_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 72)]

def word617_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_153 word617_1_154

def word617_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word617_1_157 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 20)) (some 477) ([116, 24, 98, 62, 136, 14, 88, 52, 126, 32, 106, 70, 144, 8, 82, 46]) (some (116, word617_1_156, 617, 21))

def word617_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_155 word617_1_157

def word617_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_158 word617_1_3

def word617_1_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 48)]

def word617_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_159 word617_1_160

def word617_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word617_1_163 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 22)) (some 489) ([24]) (some (24, word617_1_162, 617, 23))

def word617_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_161 word617_1_163

def word617_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_164 word617_1_3

def word617_1_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 100#64)

def word617_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_165 word617_1_166

def word617_1_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 116)]

def word617_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_167 word617_1_168

def word617_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 136 0#64)

def word617_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_169 word617_1_170

def word617_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_73 word617_1_3

def word617_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_172 word617_1_90

def word617_1_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 3000#64)

def word617_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_173 word617_1_174

def word617_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_80 word617_1_3

def word617_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_176 word617_1_98

def word617_1_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 62 (Flapjack.WordRegImm.reg 136) word617_1_175 word617_1_177

def word617_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_171 word617_1_178

def word617_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_179 word617_1_3

def word617_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_180 word617_1_71

def word617_1_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 4)]

def word617_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_181 word617_1_182

def word617_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_183 word617_1_98

def word617_1_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 136 1#64)

def word617_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_185 word617_1_3

def word617_1_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 88 1#64)

def word617_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_186 word617_1_187

def word617_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 11300#64)

def word617_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_188 word617_1_189

def word617_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_170 word617_1_3

def word617_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_191 word617_1_88

def word617_1_193 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 136 (Flapjack.WordRegImm.reg 14) word617_1_190 word617_1_192

def word617_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_184 word617_1_193

def word617_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_194 word617_1_3

def word617_1_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 98)]

def word617_1_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 24)]

def word617_1_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 136 149 (Flapjack.WordRegImm.reg 150)))

def word617_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_197 word617_1_198

def word617_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_196 word617_1_199

def word617_1_201 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_195 word617_1_200

def word617_1_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 78)]

def word617_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_201 word617_1_202

def word617_1_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 136

def word617_1_205 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 24)) (some 459) ([136, 14]) (some (136, word617_1_204, 617, 25))

def word617_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_203 word617_1_205

def word617_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_206 word617_1_3

def word617_1_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 62)]

def word617_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_207 word617_1_208

def word617_1_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word617_1_211 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 26)) (some 466) ([14]) (some (14, word617_1_210, 617, 27))

def word617_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_209 word617_1_211

def word617_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_212 word617_1_3

def word617_1_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 116)]

def word617_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_213 word617_1_214

def word617_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_215 word617_1_88

def word617_1_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 1#64)

def word617_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_91 word617_1_217

def word617_1_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 48)]

def word617_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_218 word617_1_219

def word617_1_221 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 28)) (some 490) ([14]) (some (14, word617_1_210, 617, 29))

def word617_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_220 word617_1_221

def word617_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_222 word617_1_3

def word617_1_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 0#64)

def word617_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_99 word617_1_224

def word617_1_226 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 88) word617_1_223 word617_1_225

def word617_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_216 word617_1_226

def word617_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_227 word617_1_3

def word617_1_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 48)]

def word617_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_228 word617_1_229

def word617_1_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word617_1_232 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 30)) (some 587) ([52]) (some (52, word617_1_231, 617, 31))

def word617_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_230 word617_1_232

def word617_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_233 word617_1_3

def word617_1_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 14)]

def word617_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_234 word617_1_235

def word617_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 136)]

def word617_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_236 word617_1_237

def word617_1_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 106 0#64)

def word617_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_238 word617_1_239

def word617_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_94 word617_1_3

def word617_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 1#64)

def word617_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_241 word617_1_242

def word617_1_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 88)]

def word617_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_243 word617_1_244

def word617_1_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word617_1_247 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 32)) (some 466) ([32]) (some (32, word617_1_246, 617, 33))

def word617_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_245 word617_1_247

def word617_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_248 word617_1_3

def word617_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 52)]

def word617_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_249 word617_1_250

def word617_1_252 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 34)) (some 490) ([32]) (some (32, word617_1_246, 617, 35))

def word617_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_251 word617_1_252

def word617_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_253 word617_1_3

def word617_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_101 word617_1_3

def word617_1_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 0#64)

def word617_1_257 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_255 word617_1_256

def word617_1_258 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.reg 106) word617_1_254 word617_1_257

def word617_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_240 word617_1_258

def word617_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_259 word617_1_3

def word617_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(106, 52)]

def word617_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_260 word617_1_261

def word617_1_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word617_1_264 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 36)) (some 561) ([106]) (some (106, word617_1_263, 617, 37))

def word617_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_262 word617_1_264

def word617_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_265 word617_1_3

def word617_1_267 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_266 word617_1_239

def word617_1_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(144, 4)]

def word617_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_267 word617_1_268

def word617_1_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word617_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_269 word617_1_270

def word617_1_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 144 1#64)

def word617_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_272 word617_1_3

def word617_1_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 82 1#64)

def word617_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_273 word617_1_274

def word617_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(144, 48)]

def word617_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_275 word617_1_276

def word617_1_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 144

def word617_1_279 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 38)) (some 414) ([144]) (some (144, word617_1_278, 617, 39))

def word617_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_277 word617_1_279

def word617_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_280 word617_1_3

def word617_1_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 70)]

def word617_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_281 word617_1_282

def word617_1_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 82 0#64)

def word617_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_283 word617_1_284

def word617_1_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def word617_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_286 word617_1_3

def word617_1_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 1#64)

def word617_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_287 word617_1_288

def word617_1_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 106 1#64)

def word617_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_289 word617_1_290

def word617_1_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 183600#64)

def word617_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_291 word617_1_292

def word617_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_293 word617_1_292

def word617_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_294 word617_1_292

def word617_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_295 word617_1_292

def word617_1_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word617_1_298 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 40)) (some 467) ([8]) (some (8, word617_1_297, 617, 41))

def word617_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_296 word617_1_298

def word617_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_299 word617_1_3

def word617_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_270 word617_1_3

def word617_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 0#64)

def word617_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_301 word617_1_302

def word617_1_304 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 82) word617_1_300 word617_1_303

def word617_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_285 word617_1_304

def word617_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_305 word617_1_3

def word617_1_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 144 0#64)

def word617_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_307 word617_1_3

def word617_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_308 word617_1_284

def word617_1_310 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 144 (Flapjack.WordRegImm.reg 8) word617_1_306 word617_1_309

def word617_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_271 word617_1_310

def word617_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_311 word617_1_3

def word617_1_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(144, 38)]

def word617_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_312 word617_1_313

def word617_1_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 112)]

def word617_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_314 word617_1_315

def word617_1_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 20)]

def word617_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_316 word617_1_317

def word617_1_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 94)]

def word617_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_318 word617_1_319

def word617_1_321 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 42)) (some 458) ([144, 8, 82, 46]) (some (144, word617_1_278, 617, 43))

def word617_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_320 word617_1_321

def word617_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_322 word617_1_3

def word617_1_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 122)]

def word617_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_323 word617_1_324

def word617_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 30)]

def word617_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_325 word617_1_326

def word617_1_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 104)]

def word617_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_327 word617_1_328

def word617_1_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 68)]

def word617_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_329 word617_1_330

def word617_1_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 70)]

def word617_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_331 word617_1_332

def word617_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 149 64#64))

def word617_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_334

def word617_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_333 word617_1_335

def word617_1_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 0#64)

def word617_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_336 word617_1_337

def word617_1_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word617_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_338 word617_1_339

def word617_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_340 word617_1_339

def word617_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_341 word617_1_337

def word617_1_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 82

def word617_1_344 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 44)) (some 616) ([82, 46, 120, 28, 102, 66, 140, 18]) (some (82, word617_1_343, 617, 45))

def word617_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_342 word617_1_344

def word617_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_345 word617_1_3

def word617_1_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 144)]

def word617_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_346 word617_1_347

def word617_1_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word617_1_350 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 46)) (some 466) ([46]) (some (46, word617_1_349, 617, 47))

def word617_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_348 word617_1_350

def word617_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_351 word617_1_3

def word617_1_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 82 149 (Flapjack.WordRegImm.imm 184#64)))

def word617_1_354 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_353

def word617_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_352 word617_1_354

def word617_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 149 184#64))

def word617_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_356

def word617_1_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 8)]

def word617_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 46 149 (Flapjack.WordRegImm.reg 150)))

def word617_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_358 word617_1_359

def word617_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_357 word617_1_360

def word617_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_355 word617_1_361

def word617_1_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 46)]

def word617_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_362 word617_1_363

def word617_1_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 82)]

def word617_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 120 (Flapjack.WordLangAddr.addr 149 0#64))

def word617_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_365 word617_1_366

def word617_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_364 word617_1_367

def word617_1_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 42)]

def word617_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_368 word617_1_369

def word617_1_371 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 48)) (some 478) ([46]) (some (46, word617_1_349, 617, 49))

def word617_1_372 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_370 word617_1_371

def word617_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_372 word617_1_3

def word617_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 82 (Flapjack.WordLangAddr.addr 149 72#64))

def word617_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_374

def word617_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_373 word617_1_375

def word617_1_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 46 149 (Flapjack.WordRegImm.imm 72#64)))

def word617_1_378 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_377

def word617_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_376 word617_1_378

def word617_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 120 0#64)

def word617_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_379 word617_1_380

def word617_1_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def word617_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_381 word617_1_382

def word617_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 46)]

def word617_1_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 149 0#64))

def word617_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_384 word617_1_385

def word617_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_383 word617_1_386

def word617_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 120 (Flapjack.WordLangAddr.addr 149 32#64))

def word617_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_63 word617_1_388

def word617_1_390 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_387 word617_1_389

def word617_1_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 120

def word617_1_392 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 50)) (some 403) ([120]) (some (120, word617_1_391, 617, 51))

def word617_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_390 word617_1_392

def word617_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_393 word617_1_3

def word617_1_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 149 8#64))

def word617_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_384 word617_1_395

def word617_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_394 word617_1_396

def word617_1_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 102 (Flapjack.WordLangAddr.addr 149 16#64))

def word617_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_384 word617_1_398

def word617_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_397 word617_1_399

def word617_1_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 149 24#64))

def word617_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_384 word617_1_401

def word617_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_400 word617_1_402

def word617_1_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 140 (Flapjack.WordLangAddr.addr 149 32#64))

def word617_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_384 word617_1_404

def word617_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_403 word617_1_405

def word617_1_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 122)]

def word617_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_406 word617_1_407

def word617_1_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 30)]

def word617_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_408 word617_1_409

def word617_1_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 104)]

def word617_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_410 word617_1_411

def word617_1_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 68)]

def word617_1_414 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_412 word617_1_413

def word617_1_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word617_1_416 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 52)) (some 106) ([28, 102, 66, 140, 18, 92, 56, 130]) (some (28, word617_1_415, 617, 53))

def word617_1_417 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_414 word617_1_416

def word617_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_417 word617_1_3

def word617_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_418 word617_1_382

def word617_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 120)]

def word617_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_419 word617_1_420

def word617_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_421 word617_1_337

def word617_1_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 1#64)

def word617_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_423 word617_1_3

def word617_1_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def word617_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_424 word617_1_425

def word617_1_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 0#64)

def word617_1_428 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_426 word617_1_427

def word617_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_428 word617_1_337

def word617_1_430 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_429 word617_1_339

def word617_1_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 92 0#64)

def word617_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_430 word617_1_431

def word617_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_432 word617_1_431

def word617_1_434 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_433 word617_1_339

def word617_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_434 word617_1_337

def word617_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_435 word617_1_427

def word617_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_436 word617_1_431

def word617_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_437 word617_1_339

def word617_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_438 word617_1_337

def word617_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_439 word617_1_427

def word617_1_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word617_1_442 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_1_0, 617, 54)) (some 472) ([66, 140, 18, 92]) (some (66, word617_1_441, 617, 55))

def word617_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_440 word617_1_442

def word617_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_443 word617_1_3

def word617_1_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 102 (Flapjack.WordLangAddr.addr 149 18446744073709551352#64))

def word617_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_45 word617_1_445

def word617_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_444 word617_1_446

def word617_1_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 102)]

def word617_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_447 word617_1_448

def word617_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_449 word617_1_339

def word617_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_450 word617_1_339

def word617_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_451 word617_1_339

def word617_1_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 140

def word617_1_454 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_1_0, 617, 56)) (some 609) ([140, 18]) (some (140, word617_1_453, 617, 57))

def word617_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_452 word617_1_454

def word617_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_455 word617_1_3

def word617_1_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 149 (Flapjack.WordRegImm.imm 64#64)))

def word617_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_457

def word617_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_456 word617_1_458

def word617_1_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 8)]

def word617_1_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 150 Flapjack.WordStore.heapLength

def word617_1_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 150 150 (Flapjack.WordRegImm.imm 1#64)))

def word617_1_463 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_461 word617_1_462

def word617_1_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 150 150

def word617_1_465 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_463 word617_1_464

def word617_1_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 150 (Flapjack.WordLangAddr.addr 150 18446744073709551360#64))

def word617_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_465 word617_1_466

def word617_1_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 150 (Flapjack.WordLangAddr.addr 150 64#64))

def word617_1_469 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_467 word617_1_468

def word617_1_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 140 149 (Flapjack.WordRegImm.reg 150)))

def word617_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_469 word617_1_470

def word617_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_460 word617_1_471

def word617_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_459 word617_1_472

def word617_1_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 140)]

def word617_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_473 word617_1_474

def word617_1_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 66)]

def word617_1_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 149 0#64))

def word617_1_478 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_476 word617_1_477

def word617_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_475 word617_1_478

def word617_1_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 149 (Flapjack.WordRegImm.imm 72#64)))

def word617_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_47 word617_1_480

def word617_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_479 word617_1_481

def word617_1_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 150 (Flapjack.WordLangAddr.addr 150 72#64))

def word617_1_484 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_467 word617_1_483

def word617_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_484 word617_1_470

def word617_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_365 word617_1_485

def word617_1_487 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_482 word617_1_486

def word617_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_487 word617_1_474

def word617_1_489 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_488 word617_1_478

def word617_1_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 106)]

def word617_1_491 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_489 word617_1_490

def word617_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_491 word617_1_339

def word617_1_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 1#64)

def word617_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_493 word617_1_3

def word617_1_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 92 1#64)

def word617_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_494 word617_1_495

def word617_1_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 183600#64)

def word617_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_496 word617_1_497

def word617_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_498 word617_1_497

def word617_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_499 word617_1_497

def word617_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_500 word617_1_497

def word617_1_502 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word617_1_0, 617, 58)) (some 468) ([140]) (some (140, word617_1_453, 617, 59))

def word617_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_501 word617_1_502

def word617_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_503 word617_1_3

def word617_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_337 word617_1_3

def word617_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_505 word617_1_431

def word617_1_507 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 140 (Flapjack.WordRegImm.reg 18) word617_1_504 word617_1_506

def word617_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_492 word617_1_507

def word617_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_508 word617_1_3

def word617_1_510 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_427 word617_1_3

def word617_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_510 word617_1_339

def word617_1_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 142)]

def word617_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_511 word617_1_512

def word617_1_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 6)]

def word617_1_515 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_513 word617_1_514

def word617_1_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 80)]

def word617_1_517 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_515 word617_1_516

def word617_1_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 44)]

def word617_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_517 word617_1_518

def word617_1_520 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 60)) (some 458) ([66, 140, 18, 92]) (some (66, word617_1_441, 617, 61))

def word617_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_519 word617_1_520

def word617_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_521 word617_1_3

def word617_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 118)]

def word617_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_522 word617_1_523

def word617_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 26)]

def word617_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_524 word617_1_525

def word617_1_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 100)]

def word617_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_526 word617_1_527

def word617_1_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 64)]

def word617_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_528 word617_1_529

def word617_1_531 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 62)) (some 458) ([140, 18, 92, 56]) (some (140, word617_1_453, 617, 63))

def word617_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_530 word617_1_531

def word617_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_532 word617_1_3

def word617_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 138)]

def word617_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_533 word617_1_534

def word617_1_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 16)]

def word617_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_535 word617_1_536

def word617_1_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 90)]

def word617_1_539 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_537 word617_1_538

def word617_1_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 54)]

def word617_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_539 word617_1_540

def word617_1_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word617_1_543 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 64)) (some 458) ([18, 92, 56, 130]) (some (18, word617_1_542, 617, 65))

def word617_1_544 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_541 word617_1_543

def word617_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_544 word617_1_3

def word617_1_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 128)]

def word617_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_545 word617_1_546

def word617_1_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 34)]

def word617_1_549 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_547 word617_1_548

def word617_1_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 108)]

def word617_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_549 word617_1_550

def word617_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 72)]

def word617_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_551 word617_1_552

def word617_1_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def word617_1_555 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word617_1_0, 617, 66)) (some 458) ([92, 56, 130, 36]) (some (92, word617_1_554, 617, 67))

def word617_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_553 word617_1_555

def word617_1_557 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_556 word617_1_3

def word617_1_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 8)]

def word617_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_557 word617_1_558

def word617_1_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 82)]

def word617_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_559 word617_1_560

def word617_1_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 122)]

def word617_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_561 word617_1_562

def word617_1_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 30)]

def word617_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_563 word617_1_564

def word617_1_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(110, 104)]

def word617_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_565 word617_1_566

def word617_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 68)]

def word617_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_567 word617_1_568

def word617_1_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 148 (Flapjack.WordLangAddr.addr 149 32#64))

def word617_1_571 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_63 word617_1_570

def word617_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_569 word617_1_571

def word617_1_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 48)]

def word617_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_572 word617_1_573

def word617_1_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 52)]

def word617_1_576 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_574 word617_1_575

def word617_1_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def word617_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_576 word617_1_577

def word617_1_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 114 0#64)

def word617_1_580 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_578 word617_1_579

def word617_1_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 102)]

def word617_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_580 word617_1_581

def word617_1_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 66)]

def word617_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_582 word617_1_583

def word617_1_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 140)]

def word617_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_584 word617_1_585

def word617_1_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(134, 18)]

def word617_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_586 word617_1_587

def word617_1_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 126)]

def word617_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_588 word617_1_589

def word617_1_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 32)]

def word617_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_590 word617_1_591

def word617_1_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 136)]

def word617_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_592 word617_1_593

def word617_1_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 106)]

def word617_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_594 word617_1_595

def word617_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_596 word617_1_579

def word617_1_598 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_597 word617_1_577

def word617_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_598 word617_1_579

def word617_1_600 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_599 word617_1_577

def word617_1_601 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word617_1_0, 617, 68)) (some 615) ([92, 56, 130, 36, 110, 74, 148, 2, 76, 40, 114, 22, 96, 60, 134, 12, 86, 50, 124]) (some (92, word617_1_554, 617, 69))

def word617_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_600 word617_1_601

def word617_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_602 word617_1_3

def word617_1_604 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.reg 140) word617_1_509 word617_1_603

def word617_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_422 word617_1_604

def word617_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_605 word617_1_3

def word617_1_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 28)]

def word617_1_608 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_606 word617_1_607

def word617_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_608 word617_1_337

def word617_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_426 word617_1_423

def word617_1_611 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_610 word617_1_423

def word617_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_611 word617_1_423

def word617_1_613 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word617_1_0, 617, 70)) (some 486) ([66]) (some (66, word617_1_441, 617, 71))

def word617_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_612 word617_1_613

def word617_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_614 word617_1_3

def word617_1_616 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 66 (Flapjack.WordRegImm.reg 140) word617_1_615 word617_1_511

def word617_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_609 word617_1_616

def word617_1_618 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_617 word617_1_3

def word617_1_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 102 0#64)

def word617_1_620 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_618 word617_1_619

def word617_1_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def word617_1_622 : WordLangProgHOL (BitVec 64) :=
.seq word617_1_620 word617_1_621

def pass617_1 : WordLangProgHOL (BitVec 64) :=
word617_1_622
theorem pass617_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass617_0) + 1) (pass617_0) = pass617_1 := by
  kernel_rfl
#print axioms pass617_1_eq
end InitECandidate.Proofs.WordStages
