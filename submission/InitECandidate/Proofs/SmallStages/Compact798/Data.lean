import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact798
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 26
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))
              25 Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln) (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)))
              26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))) 22
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              26 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) 26
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))
              22 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              25 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2), (29, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 21), (39, 29), (43, 25)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 35), (53, 39), (57, 43)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 65)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_13, 798, 2)) (some 69) ([]) (some (2, body2_25, 798, 3))

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 96#64)

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(87, 49), (91, 73), (95, 53), (99, 57)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 87), (109, 91), (113, 95), (117, 99)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_5

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 121)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_16

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 125)]

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_45, 798, 4)) (some 68) ([2]) (some (2, body2_56, 798, 5))

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_32 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_29

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 96#64)

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_5

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 189)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 2)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 193)]

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_16

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 193)]

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_77, 798, 6)) (some 68) ([2]) (some (2, body2_88, 798, 7))

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_29

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 177)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 181)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 205), (227, 185), (231, 197)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_5

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 257)]

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_16

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 261)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_110, 798, 8)) (some 751) ([2, 4]) (some (2, body2_121, 798, 9))

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_29

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 237), (287, 241), (291, 245), (295, 277), (299, 273)]

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273), (4, 277)]

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_5

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_16

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 329)]

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_142, 798, 10)) (some 751) ([2, 4]) (some (2, body2_153, 798, 11))

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_29

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 341)]

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(355, 305), (359, 309), (363, 313), (367, 345)]

def body2_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345), (6, 349)]

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(389, 2)]

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_5

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 389)]

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_16

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 393)]

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_176, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body2_187, 798, 13))

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_29

def body2_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_203 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 373), (439, 377), (443, 381), (447, 409)]

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405), (4, 409), (6, 429)]

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 2)]

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_5

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(477, 469)]

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2)]

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 473)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_16

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 473)]

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body2_218, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body2_229, 798, 15))

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_29

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 465)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 453), (499, 457)]

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_5

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 0#64)

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_247

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_16

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_251 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_256

def body2_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 517)]

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_260

def body2_262 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_250, 798, 16)) (some 743) ([2, 4]) (some (2, body2_261, 798, 17))

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_263

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_265 body2_29

def body2_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 509)]

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_266 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(535, 505), (539, 521)]

def body2_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 529)]

def body2_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(553, 2)]

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_272 body2_5

def body2_274 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_273

def body2_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64)

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_275

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(565, 553)]

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_277

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_278

def body2_280 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_279

def body2_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2)]

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_282 body2_16

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_284

def body2_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(561, 557)]

def body2_287 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_286

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_288

def body2_290 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_289

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_285 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_280, 798, 18)) (some 70) ([2]) (some (2, body2_291, 798, 19))

def body2_293 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_292

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_269 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_268 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_295 body2_29

def body2_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(569, 549)]

def body2_298 : WordLangProgHOL (BitVec 64) :=
.seq body2_296 body2_297

def body2_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 569)]

def body2_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_300

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_298 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_302

def pass2 : WordLangProgHOL (BitVec 64) := body2_303
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2), (29, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 21), (39, 29), (43, 25)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 35), (53, 39), (57, 43)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_6, 798, 2)) (some 69) ([]) (some (2, body3_14, 798, 3))

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(87, 49), (91, 73), (95, 53), (99, 57)]

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 87), (109, 91), (113, 95), (117, 99)]

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 121)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_9

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_26, 798, 4)) (some 68) ([2]) (some (2, body3_33, 798, 5))

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_17

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 189)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 2)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 193)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_9

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_47, 798, 6)) (some 68) ([2]) (some (2, body3_54, 798, 7))

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_17

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 177)]

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 181)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 205), (227, 185), (231, 197)]

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_9

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_67, 798, 8)) (some 751) ([2, 4]) (some (2, body3_72, 798, 9))

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_17

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 237), (287, 241), (291, 245), (295, 277), (299, 273)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273), (4, 277)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_9

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_84, 798, 10)) (some 751) ([2, 4]) (some (2, body3_89, 798, 11))

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_17

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 341)]

def body3_98 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_97

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(355, 305), (359, 309), (363, 313), (367, 345)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345), (6, 349)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_9

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_103, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body3_108, 798, 13))

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_17

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 373), (439, 377), (443, 381), (447, 409)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405), (4, 409), (6, 429)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 473)]

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_9

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body3_130, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body3_135, 798, 15))

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_136

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_17

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 465)]

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 453), (499, 457)]

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body3_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_149 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_9

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body3_158 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_157

def body3_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_151, 798, 16)) (some 743) ([2, 4]) (some (2, body3_158, 798, 17))

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_17

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 509)]

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(535, 505), (539, 521)]

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 529)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2)]

def body3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_170 body3_9

def body3_172 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_171

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_168, 798, 18)) (some 70) ([2]) (some (2, body3_173, 798, 19))

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_17

def body3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(569, 549)]

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_178 body3_179

def body3_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 569)]

def body3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body3_183 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_182

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_180 body3_183

def body3_185 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_184

def pass3 : WordLangProgHOL (BitVec 64) := body3_185
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2), (29, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 21), (39, 29), (43, 25)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 35), (53, 39), (57, 43)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_6, 798, 2)) (some 69) ([]) (some (2, body4_14, 798, 3))

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(87, 49), (91, 73), (95, 53), (99, 57)]

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 87), (109, 91), (113, 95), (117, 99)]

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 121)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_9

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_26, 798, 4)) (some 68) ([2]) (some (2, body4_33, 798, 5))

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_17

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 189)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 2)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 193)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_9

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_47, 798, 6)) (some 68) ([2]) (some (2, body4_54, 798, 7))

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_17

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 177)]

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 181)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 205), (227, 185), (231, 197)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_9

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_67, 798, 8)) (some 751) ([2, 4]) (some (2, body4_72, 798, 9))

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_17

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 237), (287, 241), (291, 245), (295, 277), (299, 273)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273), (4, 277)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_9

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_84, 798, 10)) (some 751) ([2, 4]) (some (2, body4_89, 798, 11))

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_17

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 341)]

def body4_98 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_97

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(355, 305), (359, 309), (363, 313), (367, 345)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345), (6, 349)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_9

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_103, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body4_108, 798, 13))

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_17

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 373), (439, 377), (443, 381), (447, 409)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405), (4, 409), (6, 429)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 473)]

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_9

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body4_130, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body4_135, 798, 15))

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_136

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_17

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 465)]

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 453), (499, 457)]

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body4_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_149 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_9

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body4_158 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_157

def body4_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_151, 798, 16)) (some 743) ([2, 4]) (some (2, body4_158, 798, 17))

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_17

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 509)]

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(535, 505), (539, 521)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 529)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2)]

def body4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_170 body4_9

def body4_172 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_171

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_168, 798, 18)) (some 70) ([2]) (some (2, body4_173, 798, 19))

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_17

def body4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(569, 549)]

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_178 body4_179

def body4_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 569)]

def body4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body4_183 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_182

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_180 body4_183

def body4_185 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_184

def pass4 : WordLangProgHOL (BitVec 64) := body4_185
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2), (29, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 21), (39, 29), (43, 25)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 35), (53, 39), (57, 43)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_6, 798, 2)) (some 69) ([]) (some (2, body5_14, 798, 3))

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(87, 49), (91, 73), (95, 53), (99, 57)]

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 87), (109, 91), (113, 95), (117, 99)]

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 121)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_9

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_26, 798, 4)) (some 68) ([2]) (some (2, body5_33, 798, 5))

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_17

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 189)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 2)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 193)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_9

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_47, 798, 6)) (some 68) ([2]) (some (2, body5_54, 798, 7))

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_17

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 177)]

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 181)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 205), (227, 185), (231, 197)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_9

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_67, 798, 8)) (some 751) ([2, 4]) (some (2, body5_72, 798, 9))

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_17

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 237), (287, 241), (291, 245), (295, 277), (299, 273)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273), (4, 277)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_9

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_84, 798, 10)) (some 751) ([2, 4]) (some (2, body5_89, 798, 11))

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_17

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 341)]

def body5_98 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_97

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(355, 305), (359, 309), (363, 313), (367, 345)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 345), (6, 349)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_9

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_103, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body5_108, 798, 13))

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_17

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 373), (439, 377), (443, 381), (447, 409)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 409), (4, 409), (6, 429)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 473)]

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_9

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body5_130, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body5_135, 798, 15))

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_136

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_17

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 465)]

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 453), (499, 457)]

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body5_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_149 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_9

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body5_158 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_157

def body5_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_151, 798, 16)) (some 743) ([2, 4]) (some (2, body5_158, 798, 17))

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_17

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 509)]

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(535, 505), (539, 521)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 529)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2)]

def body5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_170 body5_9

def body5_172 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_171

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_168, 798, 18)) (some 70) ([2]) (some (2, body5_173, 798, 19))

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_17

def body5_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(569, 549)]

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_178 body5_179

def body5_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 569)]

def body5_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body5_183 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_182

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_180 body5_183

def body5_185 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_184

def pass5 : WordLangProgHOL (BitVec 64) := body5_185
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2), (29, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 21), (39, 29), (43, 25)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 35), (53, 39), (57, 43)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_6, 798, 2)) (some 69) ([]) (some (2, body6_14, 798, 3))

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(87, 49), (91, 73), (95, 53), (99, 57)]

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 87), (109, 91), (113, 95), (117, 99)]

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 121)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125)]

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_9

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_26, 798, 4)) (some 68) ([2]) (some (2, body6_33, 798, 5))

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_17

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 189)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 2)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 193)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_9

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_47, 798, 6)) (some 68) ([2]) (some (2, body6_54, 798, 7))

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_17

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 177)]

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 181)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 205), (227, 185), (231, 197)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_9

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_67, 798, 8)) (some 751) ([2, 4]) (some (2, body6_72, 798, 9))

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_17

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 237), (287, 241), (291, 245), (295, 277), (299, 273)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273), (4, 277)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_9

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_84, 798, 10)) (some 751) ([2, 4]) (some (2, body6_89, 798, 11))

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_17

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 341)]

def body6_98 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_97

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(355, 305), (359, 309), (363, 313), (367, 345)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 345), (6, 349)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_9

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_103, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body6_108, 798, 13))

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_17

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 373), (439, 377), (443, 381), (447, 409)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 409), (4, 409), (6, 429)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 473)]

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_9

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body6_130, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body6_135, 798, 15))

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_136

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_17

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 465)]

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 453), (499, 457)]

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body6_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_149 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_9

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body6_158 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_157

def body6_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_151, 798, 16)) (some 743) ([2, 4]) (some (2, body6_158, 798, 17))

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_17

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 509)]

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(535, 505), (539, 521)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 529)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2)]

def body6_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_170 body6_9

def body6_172 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_171

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_168, 798, 18)) (some 70) ([2]) (some (2, body6_173, 798, 19))

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_17

def body6_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(569, 549)]

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_178 body6_179

def body6_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 569)]

def body6_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body6_183 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_182

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_180 body6_183

def body6_185 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_184

def pass6 : WordLangProgHOL (BitVec 64) := body6_185
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(35, 0), (39, 4), (43, 2), (21, 0), (25, 2), (29, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2), (61, 2), (49, 35), (53, 39), (57, 43)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (65, 2), (49, 35), (53, 39), (57, 43)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_1, 798, 2)) (some 69) ([]) (some (2, body7_4, 798, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (87, 49), (91, 73), (95, 53), (99, 57)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 2), (121, 2), (105, 87), (109, 91), (113, 95), (117, 99)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (125, 2), (105, 87), (109, 91), (113, 95), (117, 99)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_3

def body7_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_9, 798, 4)) (some 68) ([2]) (some (2, body7_11, 798, 5))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141), (147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2), (189, 2), (169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (193, 2), (169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_3

def body7_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_15, 798, 6)) (some 68) ([2]) (some (2, body7_17, 798, 7))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 177), (4, 181), (215, 169), (219, 173), (223, 177), (227, 185), (231, 197), (209, 181), (205, 177)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (261, 2), (237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_3

def body7_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_20, 798, 8)) (some 751) ([2, 4]) (some (2, body7_22, 798, 9))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 253), (4, 249), (283, 237), (287, 241), (291, 245), (295, 249), (299, 253), (277, 249), (273, 253)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (329, 2), (305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_3

def body7_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_25, 798, 10)) (some 751) ([2, 4]) (some (2, body7_27, 798, 11))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 321), (4, 321), (6, 317), (355, 305), (359, 309), (363, 313), (367, 321), (349, 317), (345, 321), (341, 321)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (393, 2), (373, 355), (377, 359), (381, 363), (385, 367)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_3

def body7_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_30, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body7_32, 798, 13))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 385), (405, 385)]

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 409), (4, 409), (6, 429), (435, 373), (439, 377), (443, 381), (447, 409)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (473, 2), (453, 435), (457, 439), (461, 443), (465, 447)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_3

def body7_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body7_41, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body7_43, 798, 15))

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461), (4, 465), (495, 453), (499, 457), (489, 465), (485, 461)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 2), (513, 2), (505, 495), (509, 499)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (517, 2), (505, 495), (509, 499)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_3

def body7_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_46, 798, 16)) (some 743) ([2, 4]) (some (2, body7_48, 798, 17))

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 509), (535, 505), (539, 521), (529, 509)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (557, 2), (545, 535), (549, 539)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_3

def body7_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_51, 798, 18)) (some 70) ([2]) (some (2, body7_53, 798, 19))

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549), (569, 549)]

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_91

def pass7 : WordLangProgHOL (BitVec 64) := body7_92
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(35, 0), (39, 4), (43, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2), (49, 35), (53, 39), (57, 43)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (49, 35), (53, 39), (57, 43)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_1, 798, 2)) (some 69) ([]) (some (2, body8_4, 798, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 96#64)

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (87, 49), (91, 73), (95, 53), (99, 57)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 2), (105, 87), (109, 91), (113, 95), (117, 99)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 87), (109, 91), (113, 95), (117, 99)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_3

def body8_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_9, 798, 4)) (some 68) ([2]) (some (2, body8_11, 798, 5))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 96#64)

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141), (147, 105), (151, 109), (155, 133), (159, 113), (163, 117)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2), (169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (169, 147), (173, 151), (177, 155), (181, 159), (185, 163)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_3

def body8_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_15, 798, 6)) (some 68) ([2]) (some (2, body8_17, 798, 7))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177), (4, 181), (215, 169), (219, 173), (223, 177), (227, 185), (231, 197)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_3

def body8_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_20, 798, 8)) (some 751) ([2, 4]) (some (2, body8_22, 798, 9))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 253), (4, 249), (283, 237), (287, 241), (291, 245), (295, 249), (299, 253)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_3

def body8_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_25, 798, 10)) (some 751) ([2, 4]) (some (2, body8_27, 798, 11))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321), (4, 321), (6, 317), (355, 305), (359, 309), (363, 313), (367, 321)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 355), (377, 359), (381, 363), (385, 367)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (373, 355), (377, 359), (381, 363), (385, 367)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_3

def body8_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_30, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body8_32, 798, 13))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 385)]

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551104#64))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 288#64)))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 409), (4, 409), (6, 429), (435, 373), (439, 377), (443, 381), (447, 409)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 435), (457, 439), (461, 443), (465, 447)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (453, 435), (457, 439), (461, 443), (465, 447)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_3

def body8_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body8_41, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body8_43, 798, 15))

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461), (4, 465), (495, 453), (499, 457)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 2), (505, 495), (509, 499)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (505, 495), (509, 499)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_3

def body8_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_46, 798, 16)) (some 743) ([2, 4]) (some (2, body8_48, 798, 17))

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 509), (535, 505), (539, 521)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 535), (549, 539)]

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (545, 535), (549, 539)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_3

def body8_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_51, 798, 18)) (some 70) ([2]) (some (2, body8_53, 798, 19))

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 549)]

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 545 [2]

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_91

def pass8 : WordLangProgHOL (BitVec 64) := body8_92
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (52, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (52, 52)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 52)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 798, 2)) (some 69) ([]) (some (2, body10_4, 798, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (52, 52)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_3

def body10_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_9, 798, 4)) (some 68) ([2]) (some (2, body10_11, 798, 5))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_3

def body10_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_14, 798, 6)) (some 68) ([2]) (some (2, body10_16, 798, 7))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 6)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (0, 52)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (0, 52)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_3

def body10_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_19, 798, 8)) (some 751) ([2, 4]) (some (2, body10_21, 798, 9))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 0)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (6, 50), (4, 52)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (4, 52)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_3

def body10_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_24, 798, 10)) (some 751) ([2, 4]) (some (2, body10_26, 798, 11))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 4)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50)]

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_3

def body10_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_29, 798, 12)) (some 750) ([2, 4, 6]) (some (2, body10_31, 798, 13))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 288#64)))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_3

def body10_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_39, 798, 14)) (some 745) ([2, 4, 6]) (some (2, body10_41, 798, 15))

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_3

def body10_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_44, 798, 16)) (some 743) ([2, 4]) (some (2, body10_46, 798, 17))

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_3

def body10_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_49, 798, 18)) (some 70) ([2]) (some (2, body10_51, 798, 19))

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_89

def pass10 : WordLangProgHOL (BitVec 64) := body10_90
end InitECandidate.Proofs.SmallStages.Compact798
