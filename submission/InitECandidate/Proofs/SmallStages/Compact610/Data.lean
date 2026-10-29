import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact610
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 23
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 27
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 27))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                27
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                2 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 23
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 27 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              23
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 25), (39, 29)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 35), (49, 39)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 57)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_13, 610, 2)) (some 392) ([]) (some (2, body2_25, 610, 3))

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(83, 45), (87, 65), (91, 69), (95, 77)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_5

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 117)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_16

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 121)]

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_48, 610, 4)) (some 423) ([2]) (some (2, body2_59, 610, 5))

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_29

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 113)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 101), (143, 105), (147, 109), (151, 133)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_5

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 173)]

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_16

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_78, 610, 6)) (some 427) ([2]) (some (2, body2_89, 610, 7))

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_29

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(195, 157), (199, 161), (203, 165)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 2)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_5

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 221)]

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 0#64)

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2)]

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_16

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64)

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 225)]

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_108, 610, 8)) (some 432) ([2]) (some (2, body2_119, 610, 9))

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_29

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(243, 209), (247, 213), (251, 237)]

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 243), (261, 247), (265, 251)]

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_5

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 269)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_16

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 273)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_138, 610, 10)) (some 608) ([2]) (some (2, body2_149, 610, 11))

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_153 body2_29

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 1#64)

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_29

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body2_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64)))

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 285)]

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 337)]

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333)]

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 265)]

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 337)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_191

def body2_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 257), (363, 317), (367, 261), (371, 353)]

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 349), (4, 353)]

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 359), (381, 363), (385, 367), (389, 371)]

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_5

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 377), (677, 381), (673, 385), (669, 389)]

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 685 0#64)

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 689 0#64)

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 393)]

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_203 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 0#64)

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 0#64)

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_198 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2)]

def body2_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_16

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 377), (645, 381), (641, 397), (637, 389)]

def body2_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 0#64)

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(661, 385)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_220

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 665 0#64)

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_215 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 377), (415, 381), (419, 401), (423, 389)]

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(445, 2)]

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_5

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 453 0#64)

def body2_237 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_236

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 445)]

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 2)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_16

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 449)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_247

def body2_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 0#64)

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_248 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_241, 610, 13)) (some 393) ([2]) (some (2, body2_252, 610, 14))

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_29

def body2_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body2_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(497, 2)]

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_5

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64)

def body2_264 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_263

def body2_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(509, 497)]

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_262 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body2_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_16

def body2_272 : WordLangProgHOL (BitVec 64) :=
.seq body2_269 body2_271

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(505, 501)]

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_274

def body2_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)

def body2_277 : WordLangProgHOL (BitVec 64) :=
.seq body2_275 body2_276

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_277

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_278

def body2_280 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_268, 610, 15)) (some 476) ([]) (some (2, body2_279, 610, 16))

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_281

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_282

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_283 body2_29

def body2_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 489)]

def body2_286 : WordLangProgHOL (BitVec 64) :=
.seq body2_284 body2_285

def body2_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(519, 481), (523, 485), (527, 493)]

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 513)]

def body2_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body2_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(545, 2)]

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_290 body2_5

def body2_292 : WordLangProgHOL (BitVec 64) :=
.seq body2_289 body2_291

def body2_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 0#64)

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 545)]

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_294 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_296

def body2_298 : WordLangProgHOL (BitVec 64) :=
.seq body2_292 body2_297

def body2_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(549, 2)]

def body2_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 549)]

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_300 body2_16

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_289 body2_302

def body2_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(553, 549)]

def body2_305 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_304

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body2_307 : WordLangProgHOL (BitVec 64) :=
.seq body2_305 body2_306

def body2_308 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_307

def body2_309 : WordLangProgHOL (BitVec 64) :=
.seq body2_303 body2_308

def body2_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_298, 610, 17)) (some 606) ([2]) (some (2, body2_309, 610, 18))

def body2_311 : WordLangProgHOL (BitVec 64) :=
.seq body2_288 body2_310

def body2_312 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_311

def body2_313 : WordLangProgHOL (BitVec 64) :=
.seq body2_286 body2_312

def body2_314 : WordLangProgHOL (BitVec 64) :=
.seq body2_313 body2_29

def body2_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body2_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body2_317 : WordLangProgHOL (BitVec 64) :=
.seq body2_315 body2_316

def body2_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body2_319 : WordLangProgHOL (BitVec 64) :=
.seq body2_317 body2_318

def body2_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_319 body2_320

def body2_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body2_323 : WordLangProgHOL (BitVec 64) :=
.seq body2_321 body2_322

def body2_324 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_323

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body2_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body2_327 : WordLangProgHOL (BitVec 64) :=
.seq body2_325 body2_326

def body2_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body2_329 : WordLangProgHOL (BitVec 64) :=
.seq body2_327 body2_328

def body2_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body2_331 : WordLangProgHOL (BitVec 64) :=
.seq body2_329 body2_330

def body2_332 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_331

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 593)]

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577)]

def body2_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_335 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
.seq body2_334 body2_337

def body2_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body2_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body2_341 : WordLangProgHOL (BitVec 64) :=
.seq body2_339 body2_340

def body2_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_341 body2_342

def body2_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body2_345 : WordLangProgHOL (BitVec 64) :=
.seq body2_343 body2_344

def body2_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body2_347 : WordLangProgHOL (BitVec 64) :=
.seq body2_345 body2_346

def body2_348 : WordLangProgHOL (BitVec 64) :=
.seq body2_338 body2_347

def body2_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body2_350 : WordLangProgHOL (BitVec 64) :=
.seq body2_348 body2_349

def body2_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(629, 625)]

def body2_352 : WordLangProgHOL (BitVec 64) :=
.seq body2_350 body2_351

def body2_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621)]

def body2_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body2_355 : WordLangProgHOL (BitVec 64) :=
.seq body2_353 body2_354

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_352 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (641, 633), (637, 541)]

def body2_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(653, 629)]

def body2_359 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_358

def body2_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(657, 629)]

def body2_361 : WordLangProgHOL (BitVec 64) :=
.seq body2_359 body2_360

def body2_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body2_363 : WordLangProgHOL (BitVec 64) :=
.seq body2_361 body2_362

def body2_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(665, 633)]

def body2_365 : WordLangProgHOL (BitVec 64) :=
.seq body2_363 body2_364

def body2_366 : WordLangProgHOL (BitVec 64) :=
.seq body2_357 body2_365

def body2_367 : WordLangProgHOL (BitVec 64) :=
.seq body2_356 body2_366

def body2_368 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body2_225 body2_367

def body2_369 : WordLangProgHOL (BitVec 64) :=
.seq body2_368 body2_29

def body2_370 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_369

def body2_371 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_370

def body2_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (673, 661), (669, 637)]

def body2_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 653)]

def body2_374 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_373

def body2_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 657)]

def body2_376 : WordLangProgHOL (BitVec 64) :=
.seq body2_374 body2_375

def body2_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 0#64)

def body2_378 : WordLangProgHOL (BitVec 64) :=
.seq body2_376 body2_377

def body2_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(697, 641)]

def body2_380 : WordLangProgHOL (BitVec 64) :=
.seq body2_378 body2_379

def body2_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(701, 665)]

def body2_382 : WordLangProgHOL (BitVec 64) :=
.seq body2_380 body2_381

def body2_383 : WordLangProgHOL (BitVec 64) :=
.seq body2_372 body2_382

def body2_384 : WordLangProgHOL (BitVec 64) :=
.seq body2_371 body2_383

def body2_385 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_211, 610, 12)) (some 609) ([2, 4]) (some (2, body2_384, 610, 19))

def body2_386 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_385

def body2_387 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_386

def body2_388 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_387

def body2_389 : WordLangProgHOL (BitVec 64) :=
.seq body2_388 body2_29

def body2_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body2_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body2_392 : WordLangProgHOL (BitVec 64) :=
.seq body2_390 body2_391

def body2_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body2_394 : WordLangProgHOL (BitVec 64) :=
.seq body2_392 body2_393

def body2_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body2_396 : WordLangProgHOL (BitVec 64) :=
.seq body2_394 body2_395

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_389 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 677)]

def body2_399 : WordLangProgHOL (BitVec 64) :=
.seq body2_397 body2_398

def body2_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_399 body2_400

def body2_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def body2_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body2_404 : WordLangProgHOL (BitVec 64) :=
.seq body2_402 body2_403

def body2_405 : WordLangProgHOL (BitVec 64) :=
.seq body2_401 body2_404

def body2_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(733, 669)]

def body2_407 : WordLangProgHOL (BitVec 64) :=
.seq body2_405 body2_406

def body2_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 733)]

def body2_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body2_410 : WordLangProgHOL (BitVec 64) :=
.seq body2_408 body2_409

def body2_411 : WordLangProgHOL (BitVec 64) :=
.seq body2_407 body2_410

def body2_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(757, 729), (753, 681), (749, 721), (745, 673), (741, 733), (737, 733)]

def body2_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 725)]

def body2_414 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_413

def body2_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(765, 689)]

def body2_416 : WordLangProgHOL (BitVec 64) :=
.seq body2_414 body2_415

def body2_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 769 0#64)

def body2_418 : WordLangProgHOL (BitVec 64) :=
.seq body2_416 body2_417

def body2_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 773 0#64)

def body2_420 : WordLangProgHOL (BitVec 64) :=
.seq body2_418 body2_419

def body2_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(777, 725)]

def body2_422 : WordLangProgHOL (BitVec 64) :=
.seq body2_420 body2_421

def body2_423 : WordLangProgHOL (BitVec 64) :=
.seq body2_412 body2_422

def body2_424 : WordLangProgHOL (BitVec 64) :=
.seq body2_411 body2_423

def body2_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(757, 285), (753, 257), (749, 281), (745, 261), (741, 293), (737, 285)]

def body2_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64)

def body2_427 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_426

def body2_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body2_429 : WordLangProgHOL (BitVec 64) :=
.seq body2_427 body2_428

def body2_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(769, 265)]

def body2_431 : WordLangProgHOL (BitVec 64) :=
.seq body2_429 body2_430

def body2_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(773, 289)]

def body2_433 : WordLangProgHOL (BitVec 64) :=
.seq body2_431 body2_432

def body2_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 777 0#64)

def body2_435 : WordLangProgHOL (BitVec 64) :=
.seq body2_433 body2_434

def body2_436 : WordLangProgHOL (BitVec 64) :=
.seq body2_425 body2_435

def body2_437 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_436

def body2_438 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body2_424 body2_437

def body2_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 0#64)

def body2_440 : WordLangProgHOL (BitVec 64) :=
.seq body2_439 body2_29

def body2_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 785 0#64)

def body2_442 : WordLangProgHOL (BitVec 64) :=
.seq body2_440 body2_441

def body2_443 : WordLangProgHOL (BitVec 64) :=
.seq body2_438 body2_442

def body2_444 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_443

def body2_445 : WordLangProgHOL (BitVec 64) :=
.seq body2_444 body2_29

def body2_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(789, 745)]

def body2_447 : WordLangProgHOL (BitVec 64) :=
.seq body2_445 body2_446

def body2_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(795, 753), (799, 737)]

def body2_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 789)]

def body2_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body2_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(813, 2)]

def body2_452 : WordLangProgHOL (BitVec 64) :=
.seq body2_451 body2_5

def body2_453 : WordLangProgHOL (BitVec 64) :=
.seq body2_450 body2_452

def body2_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 0#64)

def body2_455 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_454

def body2_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(825, 813)]

def body2_457 : WordLangProgHOL (BitVec 64) :=
.seq body2_455 body2_456

def body2_458 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_457

def body2_459 : WordLangProgHOL (BitVec 64) :=
.seq body2_453 body2_458

def body2_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(817, 2)]

def body2_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def body2_462 : WordLangProgHOL (BitVec 64) :=
.seq body2_461 body2_16

def body2_463 : WordLangProgHOL (BitVec 64) :=
.seq body2_460 body2_462

def body2_464 : WordLangProgHOL (BitVec 64) :=
.seq body2_450 body2_463

def body2_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(821, 817)]

def body2_466 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_465

def body2_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 0#64)

def body2_468 : WordLangProgHOL (BitVec 64) :=
.seq body2_466 body2_467

def body2_469 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_468

def body2_470 : WordLangProgHOL (BitVec 64) :=
.seq body2_464 body2_469

def body2_471 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_459, 610, 20)) (some 393) ([2]) (some (2, body2_470, 610, 21))

def body2_472 : WordLangProgHOL (BitVec 64) :=
.seq body2_449 body2_471

def body2_473 : WordLangProgHOL (BitVec 64) :=
.seq body2_448 body2_472

def body2_474 : WordLangProgHOL (BitVec 64) :=
.seq body2_447 body2_473

def body2_475 : WordLangProgHOL (BitVec 64) :=
.seq body2_474 body2_29

def body2_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 809)]

def body2_477 : WordLangProgHOL (BitVec 64) :=
.seq body2_475 body2_476

def body2_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 829)]

def body2_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body2_480 : WordLangProgHOL (BitVec 64) :=
.seq body2_478 body2_479

def body2_481 : WordLangProgHOL (BitVec 64) :=
.seq body2_477 body2_480

def body2_482 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_481

def pass2 : WordLangProgHOL (BitVec 64) := body2_482
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 25), (39, 29)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 35), (49, 39)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_6, 610, 2)) (some 392) ([]) (some (2, body3_14, 610, 3))

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(83, 45), (87, 65), (91, 69), (95, 77)]

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_9

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_27, 610, 4)) (some 423) ([2]) (some (2, body3_32, 610, 5))

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_17

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 113)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 101), (143, 105), (147, 109), (151, 133)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_9

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_42, 610, 6)) (some 427) ([2]) (some (2, body3_47, 610, 7))

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_17

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(195, 157), (199, 161), (203, 165)]

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2)]

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_9

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_57, 610, 8)) (some 432) ([2]) (some (2, body3_62, 610, 9))

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_17

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(243, 209), (247, 213), (251, 237)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 243), (261, 247), (265, 251)]

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 269)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_9

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_76, 610, 10)) (some 608) ([2]) (some (2, body3_83, 610, 11))

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_17

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64)))

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 285)]

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 337)]

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333)]

def body3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 265)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 337)]

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 257), (363, 317), (367, 261), (371, 353)]

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 349), (4, 353)]

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 359), (381, 363), (385, 367), (389, 371)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 377), (677, 381), (673, 385), (669, 389)]

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_9

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 377), (645, 381), (637, 389)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(661, 385)]

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 377), (415, 381), (419, 401), (423, 389)]

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 2)]

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_9

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_141, 610, 13)) (some 393) ([2]) (some (2, body3_146, 610, 14))

def body3_148 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_147

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_17

def body3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body3_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_155 body3_9

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_157

def body3_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_153, 610, 15)) (some 476) ([]) (some (2, body3_158, 610, 16))

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_151 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_161 body3_17

def body3_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 489)]

def body3_164 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_163

def body3_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(519, 481), (523, 485), (527, 493)]

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 513)]

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(549, 2)]

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 549)]

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_9

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_170

def body3_172 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_171

def body3_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_167, 610, 17)) (some 606) ([2]) (some (2, body3_172, 610, 18))

def body3_174 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_173

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_164 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_176 body3_17

def body3_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_178 body3_179

def body3_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body3_182 : WordLangProgHOL (BitVec 64) :=
.seq body3_180 body3_181

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_183

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_185

def body3_187 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_186

def body3_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_189

def body3_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_190 body3_191

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body3_194 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_193

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_187 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 593)]

def body3_197 : WordLangProgHOL (BitVec 64) :=
.seq body3_195 body3_196

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577)]

def body3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_198 body3_199

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_197 body3_200

def body3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body3_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_202 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body3_206 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_205

def body3_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body3_208 : WordLangProgHOL (BitVec 64) :=
.seq body3_206 body3_207

def body3_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body3_210 : WordLangProgHOL (BitVec 64) :=
.seq body3_208 body3_209

def body3_211 : WordLangProgHOL (BitVec 64) :=
.seq body3_201 body3_210

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_212

def body3_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(629, 625)]

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_213 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621)]

def body3_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body3_218 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_217

def body3_219 : WordLangProgHOL (BitVec 64) :=
.seq body3_215 body3_218

def body3_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (637, 541)]

def body3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body3_222 : WordLangProgHOL (BitVec 64) :=
.seq body3_220 body3_221

def body3_223 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_222

def body3_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body3_134 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
.seq body3_224 body3_17

def body3_226 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_225

def body3_227 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_226

def body3_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (673, 661), (669, 637)]

def body3_229 : WordLangProgHOL (BitVec 64) :=
.seq body3_227 body3_228

def body3_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_127, 610, 12)) (some 609) ([2, 4]) (some (2, body3_229, 610, 19))

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_231

def body3_233 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_232

def body3_234 : WordLangProgHOL (BitVec 64) :=
.seq body3_233 body3_17

def body3_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body3_237 : WordLangProgHOL (BitVec 64) :=
.seq body3_235 body3_236

def body3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body3_239 : WordLangProgHOL (BitVec 64) :=
.seq body3_237 body3_238

def body3_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body3_241 : WordLangProgHOL (BitVec 64) :=
.seq body3_239 body3_240

def body3_242 : WordLangProgHOL (BitVec 64) :=
.seq body3_234 body3_241

def body3_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 677)]

def body3_244 : WordLangProgHOL (BitVec 64) :=
.seq body3_242 body3_243

def body3_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def body3_246 : WordLangProgHOL (BitVec 64) :=
.seq body3_244 body3_245

def body3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def body3_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body3_249 : WordLangProgHOL (BitVec 64) :=
.seq body3_247 body3_248

def body3_250 : WordLangProgHOL (BitVec 64) :=
.seq body3_246 body3_249

def body3_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(733, 669)]

def body3_252 : WordLangProgHOL (BitVec 64) :=
.seq body3_250 body3_251

def body3_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 733)]

def body3_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body3_255 : WordLangProgHOL (BitVec 64) :=
.seq body3_253 body3_254

def body3_256 : WordLangProgHOL (BitVec 64) :=
.seq body3_252 body3_255

def body3_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 681), (745, 673), (737, 733)]

def body3_258 : WordLangProgHOL (BitVec 64) :=
.seq body3_256 body3_257

def body3_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(753, 257), (745, 261), (737, 285)]

def body3_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body3_258 body3_259

def body3_261 : WordLangProgHOL (BitVec 64) :=
.seq body3_260 body3_17

def body3_262 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_261

def body3_263 : WordLangProgHOL (BitVec 64) :=
.seq body3_262 body3_17

def body3_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(789, 745)]

def body3_265 : WordLangProgHOL (BitVec 64) :=
.seq body3_263 body3_264

def body3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(795, 753), (799, 737)]

def body3_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 789)]

def body3_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body3_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(817, 2)]

def body3_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def body3_271 : WordLangProgHOL (BitVec 64) :=
.seq body3_270 body3_9

def body3_272 : WordLangProgHOL (BitVec 64) :=
.seq body3_269 body3_271

def body3_273 : WordLangProgHOL (BitVec 64) :=
.seq body3_268 body3_272

def body3_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_268, 610, 20)) (some 393) ([2]) (some (2, body3_273, 610, 21))

def body3_275 : WordLangProgHOL (BitVec 64) :=
.seq body3_267 body3_274

def body3_276 : WordLangProgHOL (BitVec 64) :=
.seq body3_266 body3_275

def body3_277 : WordLangProgHOL (BitVec 64) :=
.seq body3_265 body3_276

def body3_278 : WordLangProgHOL (BitVec 64) :=
.seq body3_277 body3_17

def body3_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 809)]

def body3_280 : WordLangProgHOL (BitVec 64) :=
.seq body3_278 body3_279

def body3_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 829)]

def body3_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body3_283 : WordLangProgHOL (BitVec 64) :=
.seq body3_281 body3_282

def body3_284 : WordLangProgHOL (BitVec 64) :=
.seq body3_280 body3_283

def body3_285 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_284

def pass3 : WordLangProgHOL (BitVec 64) := body3_285
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 25), (39, 29)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 35), (49, 39)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_6, 610, 2)) (some 392) ([]) (some (2, body4_14, 610, 3))

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(83, 45), (87, 65), (91, 69), (95, 77)]

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_9

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_27, 610, 4)) (some 423) ([2]) (some (2, body4_32, 610, 5))

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_17

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 113)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 101), (143, 105), (147, 109), (151, 133)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_9

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_42, 610, 6)) (some 427) ([2]) (some (2, body4_47, 610, 7))

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_17

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(195, 157), (199, 161), (203, 165)]

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2)]

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_9

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_57, 610, 8)) (some 432) ([2]) (some (2, body4_62, 610, 9))

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_17

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(243, 209), (247, 213), (251, 237)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 243), (261, 247), (265, 251)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 269)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_9

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_76, 610, 10)) (some 608) ([2]) (some (2, body4_83, 610, 11))

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_17

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 305)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 309)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 313)]

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 285)]

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 337)]

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 265)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 337)]

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 257), (363, 317), (367, 261), (371, 353)]

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 349), (4, 353)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 359), (381, 363), (385, 367), (389, 371)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 377), (677, 381), (673, 385), (669, 389)]

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_9

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 377), (645, 381), (637, 389)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(661, 385)]

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 377), (415, 381), (419, 401), (423, 389)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 2)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_9

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_141, 610, 13)) (some 393) ([2]) (some (2, body4_146, 610, 14))

def body4_148 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_147

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_17

def body4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body4_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_155 body4_9

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_157

def body4_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_153, 610, 15)) (some 476) ([]) (some (2, body4_158, 610, 16))

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_151 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_161 body4_17

def body4_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 489)]

def body4_164 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_163

def body4_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(519, 481), (523, 485), (527, 493)]

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 513)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(549, 2)]

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 549)]

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_9

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_170

def body4_172 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_171

def body4_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_167, 610, 17)) (some 606) ([2]) (some (2, body4_172, 610, 18))

def body4_174 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_173

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_164 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_176 body4_17

def body4_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_178 body4_179

def body4_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body4_182 : WordLangProgHOL (BitVec 64) :=
.seq body4_180 body4_181

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_183

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_185

def body4_187 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_186

def body4_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_189

def body4_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_190 body4_191

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body4_194 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_193

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_187 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 593)]

def body4_197 : WordLangProgHOL (BitVec 64) :=
.seq body4_195 body4_196

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577)]

def body4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_198 body4_199

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_197 body4_200

def body4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body4_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_202 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body4_206 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_205

def body4_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body4_208 : WordLangProgHOL (BitVec 64) :=
.seq body4_206 body4_207

def body4_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body4_210 : WordLangProgHOL (BitVec 64) :=
.seq body4_208 body4_209

def body4_211 : WordLangProgHOL (BitVec 64) :=
.seq body4_201 body4_210

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_212

def body4_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(629, 625)]

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_213 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621)]

def body4_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body4_218 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_217

def body4_219 : WordLangProgHOL (BitVec 64) :=
.seq body4_215 body4_218

def body4_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (637, 541)]

def body4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body4_222 : WordLangProgHOL (BitVec 64) :=
.seq body4_220 body4_221

def body4_223 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_222

def body4_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body4_134 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
.seq body4_224 body4_17

def body4_226 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_225

def body4_227 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_226

def body4_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (673, 661), (669, 637)]

def body4_229 : WordLangProgHOL (BitVec 64) :=
.seq body4_227 body4_228

def body4_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_127, 610, 12)) (some 609) ([2, 4]) (some (2, body4_229, 610, 19))

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_231

def body4_233 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_232

def body4_234 : WordLangProgHOL (BitVec 64) :=
.seq body4_233 body4_17

def body4_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body4_237 : WordLangProgHOL (BitVec 64) :=
.seq body4_235 body4_236

def body4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body4_239 : WordLangProgHOL (BitVec 64) :=
.seq body4_237 body4_238

def body4_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body4_241 : WordLangProgHOL (BitVec 64) :=
.seq body4_239 body4_240

def body4_242 : WordLangProgHOL (BitVec 64) :=
.seq body4_234 body4_241

def body4_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 677)]

def body4_244 : WordLangProgHOL (BitVec 64) :=
.seq body4_242 body4_243

def body4_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def body4_246 : WordLangProgHOL (BitVec 64) :=
.seq body4_244 body4_245

def body4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def body4_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body4_249 : WordLangProgHOL (BitVec 64) :=
.seq body4_247 body4_248

def body4_250 : WordLangProgHOL (BitVec 64) :=
.seq body4_246 body4_249

def body4_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(733, 669)]

def body4_252 : WordLangProgHOL (BitVec 64) :=
.seq body4_250 body4_251

def body4_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 733)]

def body4_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body4_255 : WordLangProgHOL (BitVec 64) :=
.seq body4_253 body4_254

def body4_256 : WordLangProgHOL (BitVec 64) :=
.seq body4_252 body4_255

def body4_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 681), (745, 673), (737, 733)]

def body4_258 : WordLangProgHOL (BitVec 64) :=
.seq body4_256 body4_257

def body4_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(753, 257), (745, 261), (737, 285)]

def body4_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body4_258 body4_259

def body4_261 : WordLangProgHOL (BitVec 64) :=
.seq body4_260 body4_17

def body4_262 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_261

def body4_263 : WordLangProgHOL (BitVec 64) :=
.seq body4_262 body4_17

def body4_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(789, 745)]

def body4_265 : WordLangProgHOL (BitVec 64) :=
.seq body4_263 body4_264

def body4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(795, 753), (799, 737)]

def body4_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 789)]

def body4_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body4_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(817, 2)]

def body4_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def body4_271 : WordLangProgHOL (BitVec 64) :=
.seq body4_270 body4_9

def body4_272 : WordLangProgHOL (BitVec 64) :=
.seq body4_269 body4_271

def body4_273 : WordLangProgHOL (BitVec 64) :=
.seq body4_268 body4_272

def body4_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_268, 610, 20)) (some 393) ([2]) (some (2, body4_273, 610, 21))

def body4_275 : WordLangProgHOL (BitVec 64) :=
.seq body4_267 body4_274

def body4_276 : WordLangProgHOL (BitVec 64) :=
.seq body4_266 body4_275

def body4_277 : WordLangProgHOL (BitVec 64) :=
.seq body4_265 body4_276

def body4_278 : WordLangProgHOL (BitVec 64) :=
.seq body4_277 body4_17

def body4_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 809)]

def body4_280 : WordLangProgHOL (BitVec 64) :=
.seq body4_278 body4_279

def body4_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 829)]

def body4_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body4_283 : WordLangProgHOL (BitVec 64) :=
.seq body4_281 body4_282

def body4_284 : WordLangProgHOL (BitVec 64) :=
.seq body4_280 body4_283

def body4_285 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_284

def pass4 : WordLangProgHOL (BitVec 64) := body4_285
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 25), (39, 29)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 35), (49, 39)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_6, 610, 2)) (some 392) ([]) (some (2, body5_14, 610, 3))

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(83, 45), (87, 65), (91, 69), (95, 77)]

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_9

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_27, 610, 4)) (some 423) ([2]) (some (2, body5_32, 610, 5))

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_17

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 113)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 101), (143, 105), (147, 109), (151, 133)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_9

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_42, 610, 6)) (some 427) ([2]) (some (2, body5_47, 610, 7))

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_17

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(195, 157), (199, 161), (203, 165)]

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2)]

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_9

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_57, 610, 8)) (some 432) ([2]) (some (2, body5_62, 610, 9))

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_17

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(243, 209), (247, 213), (251, 237)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 243), (261, 247), (265, 251)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 269)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_9

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_76, 610, 10)) (some 608) ([2]) (some (2, body5_83, 610, 11))

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_17

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 305)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 309)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 313)]

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 285)]

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 337)]

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 265)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 341)]

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 257), (363, 317), (367, 261), (371, 353)]

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 349), (4, 353)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 359), (381, 363), (385, 367), (389, 371)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 377), (677, 381), (673, 385), (669, 389)]

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_9

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 377), (645, 381), (637, 389)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(661, 385)]

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 377), (415, 381), (419, 401), (423, 389)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 2)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_9

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_141, 610, 13)) (some 393) ([2]) (some (2, body5_146, 610, 14))

def body5_148 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_147

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_17

def body5_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body5_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_155 body5_9

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_157

def body5_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_153, 610, 15)) (some 476) ([]) (some (2, body5_158, 610, 16))

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_151 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_161 body5_17

def body5_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 489)]

def body5_164 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_163

def body5_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(519, 481), (523, 485), (527, 493)]

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 513)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(549, 2)]

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 549)]

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_9

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_170

def body5_172 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_171

def body5_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_167, 610, 17)) (some 606) ([2]) (some (2, body5_172, 610, 18))

def body5_174 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_173

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_164 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_176 body5_17

def body5_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body5_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_178 body5_179

def body5_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body5_182 : WordLangProgHOL (BitVec 64) :=
.seq body5_180 body5_181

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_183

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body5_186 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_185

def body5_187 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_186

def body5_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_189

def body5_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body5_192 : WordLangProgHOL (BitVec 64) :=
.seq body5_190 body5_191

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body5_194 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_193

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_187 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 593)]

def body5_197 : WordLangProgHOL (BitVec 64) :=
.seq body5_195 body5_196

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577)]

def body5_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_198 body5_199

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body5_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body5_204 : WordLangProgHOL (BitVec 64) :=
.seq body5_202 body5_203

def body5_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body5_206 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_205

def body5_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body5_208 : WordLangProgHOL (BitVec 64) :=
.seq body5_206 body5_207

def body5_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body5_210 : WordLangProgHOL (BitVec 64) :=
.seq body5_208 body5_209

def body5_211 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_210

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(629, 625)]

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_213 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621)]

def body5_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body5_218 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_217

def body5_219 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_218

def body5_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (637, 541)]

def body5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body5_222 : WordLangProgHOL (BitVec 64) :=
.seq body5_220 body5_221

def body5_223 : WordLangProgHOL (BitVec 64) :=
.seq body5_219 body5_222

def body5_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body5_134 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
.seq body5_224 body5_17

def body5_226 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_225

def body5_227 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_226

def body5_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (673, 661), (669, 637)]

def body5_229 : WordLangProgHOL (BitVec 64) :=
.seq body5_227 body5_228

def body5_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_127, 610, 12)) (some 609) ([2, 4]) (some (2, body5_229, 610, 19))

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_231

def body5_233 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_232

def body5_234 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_17

def body5_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body5_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body5_237 : WordLangProgHOL (BitVec 64) :=
.seq body5_235 body5_236

def body5_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body5_239 : WordLangProgHOL (BitVec 64) :=
.seq body5_237 body5_238

def body5_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body5_241 : WordLangProgHOL (BitVec 64) :=
.seq body5_239 body5_240

def body5_242 : WordLangProgHOL (BitVec 64) :=
.seq body5_234 body5_241

def body5_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 677)]

def body5_244 : WordLangProgHOL (BitVec 64) :=
.seq body5_242 body5_243

def body5_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_244 body5_245

def body5_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def body5_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body5_249 : WordLangProgHOL (BitVec 64) :=
.seq body5_247 body5_248

def body5_250 : WordLangProgHOL (BitVec 64) :=
.seq body5_246 body5_249

def body5_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(733, 669)]

def body5_252 : WordLangProgHOL (BitVec 64) :=
.seq body5_250 body5_251

def body5_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 733)]

def body5_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body5_255 : WordLangProgHOL (BitVec 64) :=
.seq body5_253 body5_254

def body5_256 : WordLangProgHOL (BitVec 64) :=
.seq body5_252 body5_255

def body5_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 681), (745, 673), (737, 733)]

def body5_258 : WordLangProgHOL (BitVec 64) :=
.seq body5_256 body5_257

def body5_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(753, 257), (745, 261), (737, 285)]

def body5_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body5_258 body5_259

def body5_261 : WordLangProgHOL (BitVec 64) :=
.seq body5_260 body5_17

def body5_262 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_261

def body5_263 : WordLangProgHOL (BitVec 64) :=
.seq body5_262 body5_17

def body5_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(789, 745)]

def body5_265 : WordLangProgHOL (BitVec 64) :=
.seq body5_263 body5_264

def body5_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(795, 753), (799, 737)]

def body5_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 789)]

def body5_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body5_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(817, 2)]

def body5_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def body5_271 : WordLangProgHOL (BitVec 64) :=
.seq body5_270 body5_9

def body5_272 : WordLangProgHOL (BitVec 64) :=
.seq body5_269 body5_271

def body5_273 : WordLangProgHOL (BitVec 64) :=
.seq body5_268 body5_272

def body5_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_268, 610, 20)) (some 393) ([2]) (some (2, body5_273, 610, 21))

def body5_275 : WordLangProgHOL (BitVec 64) :=
.seq body5_267 body5_274

def body5_276 : WordLangProgHOL (BitVec 64) :=
.seq body5_266 body5_275

def body5_277 : WordLangProgHOL (BitVec 64) :=
.seq body5_265 body5_276

def body5_278 : WordLangProgHOL (BitVec 64) :=
.seq body5_277 body5_17

def body5_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 809)]

def body5_280 : WordLangProgHOL (BitVec 64) :=
.seq body5_278 body5_279

def body5_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 829)]

def body5_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body5_283 : WordLangProgHOL (BitVec 64) :=
.seq body5_281 body5_282

def body5_284 : WordLangProgHOL (BitVec 64) :=
.seq body5_280 body5_283

def body5_285 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_284

def pass5 : WordLangProgHOL (BitVec 64) := body5_285
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(35, 25), (39, 29)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 35), (49, 39)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_6, 610, 2)) (some 392) ([]) (some (2, body6_14, 610, 3))

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(83, 45), (87, 65), (91, 69), (95, 77)]

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_9

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_27, 610, 4)) (some 423) ([2]) (some (2, body6_32, 610, 5))

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_17

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 113)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 101), (143, 105), (147, 109), (151, 133)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_9

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_42, 610, 6)) (some 427) ([2]) (some (2, body6_47, 610, 7))

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_17

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(195, 157), (199, 161), (203, 165)]

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2)]

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_9

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_57, 610, 8)) (some 432) ([2]) (some (2, body6_62, 610, 9))

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_17

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 217)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(243, 209), (247, 213), (251, 237)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 243), (261, 247), (265, 251)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 269)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_9

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_76, 610, 10)) (some 608) ([2]) (some (2, body6_83, 610, 11))

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_17

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 305)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 309)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 313)]

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 285)]

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 337)]

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 265)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 341)]

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 257), (363, 317), (367, 261), (371, 353)]

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 349), (4, 353)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 359), (381, 363), (385, 367), (389, 371)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 377), (677, 381), (673, 385), (669, 389)]

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_9

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 377), (645, 381), (637, 389)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(661, 385)]

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 385)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 377), (415, 381), (419, 401), (423, 389)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 2)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 449)]

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_9

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_141, 610, 13)) (some 393) ([2]) (some (2, body6_146, 610, 14))

def body6_148 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_147

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_17

def body6_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body6_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 2)]

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 501)]

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_155 body6_9

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_157

def body6_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_153, 610, 15)) (some 476) ([]) (some (2, body6_158, 610, 16))

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_151 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_161 body6_17

def body6_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 489)]

def body6_164 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_163

def body6_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(519, 481), (523, 485), (527, 493)]

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 513)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(549, 2)]

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 549)]

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_9

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_170

def body6_172 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_171

def body6_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_167, 610, 17)) (some 606) ([2]) (some (2, body6_172, 610, 18))

def body6_174 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_173

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_164 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_176 body6_17

def body6_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body6_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_178 body6_179

def body6_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body6_182 : WordLangProgHOL (BitVec 64) :=
.seq body6_180 body6_181

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_183

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body6_186 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_185

def body6_187 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_186

def body6_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_189

def body6_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body6_192 : WordLangProgHOL (BitVec 64) :=
.seq body6_190 body6_191

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body6_194 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_193

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_187 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 593)]

def body6_197 : WordLangProgHOL (BitVec 64) :=
.seq body6_195 body6_196

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577)]

def body6_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_198 body6_199

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body6_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body6_204 : WordLangProgHOL (BitVec 64) :=
.seq body6_202 body6_203

def body6_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body6_206 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_205

def body6_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body6_208 : WordLangProgHOL (BitVec 64) :=
.seq body6_206 body6_207

def body6_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body6_210 : WordLangProgHOL (BitVec 64) :=
.seq body6_208 body6_209

def body6_211 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_210

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(629, 625)]

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_213 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621)]

def body6_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body6_218 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_217

def body6_219 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_218

def body6_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (637, 541)]

def body6_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body6_222 : WordLangProgHOL (BitVec 64) :=
.seq body6_220 body6_221

def body6_223 : WordLangProgHOL (BitVec 64) :=
.seq body6_219 body6_222

def body6_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body6_134 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
.seq body6_224 body6_17

def body6_226 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_225

def body6_227 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_226

def body6_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (673, 661), (669, 637)]

def body6_229 : WordLangProgHOL (BitVec 64) :=
.seq body6_227 body6_228

def body6_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_127, 610, 12)) (some 609) ([2, 4]) (some (2, body6_229, 610, 19))

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_231

def body6_233 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_232

def body6_234 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_17

def body6_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body6_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body6_237 : WordLangProgHOL (BitVec 64) :=
.seq body6_235 body6_236

def body6_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body6_239 : WordLangProgHOL (BitVec 64) :=
.seq body6_237 body6_238

def body6_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body6_241 : WordLangProgHOL (BitVec 64) :=
.seq body6_239 body6_240

def body6_242 : WordLangProgHOL (BitVec 64) :=
.seq body6_234 body6_241

def body6_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 677)]

def body6_244 : WordLangProgHOL (BitVec 64) :=
.seq body6_242 body6_243

def body6_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_244 body6_245

def body6_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def body6_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body6_249 : WordLangProgHOL (BitVec 64) :=
.seq body6_247 body6_248

def body6_250 : WordLangProgHOL (BitVec 64) :=
.seq body6_246 body6_249

def body6_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(733, 669)]

def body6_252 : WordLangProgHOL (BitVec 64) :=
.seq body6_250 body6_251

def body6_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 733)]

def body6_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body6_255 : WordLangProgHOL (BitVec 64) :=
.seq body6_253 body6_254

def body6_256 : WordLangProgHOL (BitVec 64) :=
.seq body6_252 body6_255

def body6_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 681), (745, 673), (737, 733)]

def body6_258 : WordLangProgHOL (BitVec 64) :=
.seq body6_256 body6_257

def body6_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(753, 257), (745, 261), (737, 285)]

def body6_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body6_258 body6_259

def body6_261 : WordLangProgHOL (BitVec 64) :=
.seq body6_260 body6_17

def body6_262 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_261

def body6_263 : WordLangProgHOL (BitVec 64) :=
.seq body6_262 body6_17

def body6_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(789, 745)]

def body6_265 : WordLangProgHOL (BitVec 64) :=
.seq body6_263 body6_264

def body6_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(795, 753), (799, 737)]

def body6_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 789)]

def body6_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body6_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(817, 2)]

def body6_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def body6_271 : WordLangProgHOL (BitVec 64) :=
.seq body6_270 body6_9

def body6_272 : WordLangProgHOL (BitVec 64) :=
.seq body6_269 body6_271

def body6_273 : WordLangProgHOL (BitVec 64) :=
.seq body6_268 body6_272

def body6_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_268, 610, 20)) (some 393) ([2]) (some (2, body6_273, 610, 21))

def body6_275 : WordLangProgHOL (BitVec 64) :=
.seq body6_267 body6_274

def body6_276 : WordLangProgHOL (BitVec 64) :=
.seq body6_266 body6_275

def body6_277 : WordLangProgHOL (BitVec 64) :=
.seq body6_265 body6_276

def body6_278 : WordLangProgHOL (BitVec 64) :=
.seq body6_277 body6_17

def body6_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 809)]

def body6_280 : WordLangProgHOL (BitVec 64) :=
.seq body6_278 body6_279

def body6_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 829)]

def body6_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body6_283 : WordLangProgHOL (BitVec 64) :=
.seq body6_281 body6_282

def body6_284 : WordLangProgHOL (BitVec 64) :=
.seq body6_280 body6_283

def body6_285 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_284

def pass6 : WordLangProgHOL (BitVec 64) := body6_285
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(35, 0), (39, 2), (25, 0), (29, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2), (53, 2), (45, 35), (49, 39)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 2), (45, 35), (49, 39)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_1, 610, 2)) (some 392) ([]) (some (2, body7_4, 610, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (83, 45), (87, 65), (91, 69), (95, 73), (77, 73)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (121, 2), (101, 83), (105, 87), (109, 91), (113, 95)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_3

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_10, 610, 4)) (some 423) ([2]) (some (2, body7_12, 610, 5))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113), (139, 101), (143, 105), (147, 109), (151, 113), (133, 113)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (177, 2), (157, 139), (161, 143), (165, 147), (169, 151)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_3

def body7_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_15, 610, 6)) (some 427) ([2]) (some (2, body7_17, 610, 7))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (195, 157), (199, 161), (203, 165), (189, 169)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (225, 2), (209, 195), (213, 199), (217, 203)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_3

def body7_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_20, 610, 8)) (some 432) ([2]) (some (2, body7_22, 610, 9))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (243, 209), (247, 213), (251, 217), (237, 217)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2), (269, 2), (257, 243), (261, 247), (265, 251)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (273, 2), (257, 243), (261, 247), (265, 251)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_3

def body7_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_25, 610, 10)) (some 608) ([2]) (some (2, body7_27, 610, 11))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 313), (325, 309), (321, 305)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333), (341, 285), (337, 285)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 265), (4, 341), (359, 257), (363, 317), (367, 261), (371, 341), (353, 341), (349, 265)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(681, 359), (677, 363), (673, 367), (669, 371), (377, 359), (381, 363), (385, 367), (389, 371)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2), (377, 359), (381, 363), (385, 367), (389, 371)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_3

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385), (411, 377), (415, 381), (419, 401), (423, 389), (405, 385)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (449, 2), (429, 411), (433, 415), (437, 419), (441, 423)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_3

def body7_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_47, 610, 13)) (some 393) ([2]) (some (2, body7_49, 610, 14))

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (501, 2), (481, 463), (485, 467), (489, 471), (493, 475)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_3

def body7_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_52, 610, 15)) (some 476) ([]) (some (2, body7_54, 610, 16))

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489), (519, 481), (523, 485), (527, 493), (513, 489)]

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (549, 2), (533, 519), (537, 523), (541, 527)]

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_3

def body7_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_57, 610, 17)) (some 606) ([2]) (some (2, body7_59, 610, 18))

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577), (597, 593)]

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body7_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body7_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body7_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621), (629, 625)]

def body7_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body7_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (637, 541)]

def body7_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_80 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_77 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_76 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_75 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_74 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_69 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_106

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_107

def body7_109 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_108

def body7_110 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_109

def body7_111 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_110

def body7_112 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_111

def body7_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body7_44 body7_112

def body7_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (673, 661), (669, 637)]

def body7_115 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_114

def body7_116 : WordLangProgHOL (BitVec 64) :=
.seq body7_113 body7_115

def body7_117 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_116

def body7_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_41, 610, 12)) (some 609) ([2, 4]) (some (2, body7_117, 610, 19))

def body7_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body7_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body7_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body7_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body7_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717), (725, 677), (721, 677)]

def body7_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body7_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 669), (733, 669)]

def body7_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body7_127 : WordLangProgHOL (BitVec 64) :=
.seq body7_125 body7_126

def body7_128 : WordLangProgHOL (BitVec 64) :=
.seq body7_124 body7_127

def body7_129 : WordLangProgHOL (BitVec 64) :=
.seq body7_123 body7_128

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_122 body7_129

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_121 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
.seq body7_120 body7_131

def body7_133 : WordLangProgHOL (BitVec 64) :=
.seq body7_119 body7_132

def body7_134 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_133

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_118 body7_134

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_135

def body7_137 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_136

def body7_138 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_137

def body7_139 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_138

def body7_140 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_139

def body7_141 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_140

def body7_142 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_141

def body7_143 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_142

def body7_144 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_143

def body7_145 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_144

def body7_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(753, 257), (745, 261), (737, 285)]

def body7_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body7_145 body7_146

def body7_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 745), (795, 753), (799, 737), (789, 745)]

def body7_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body7_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (817, 2), (805, 795), (809, 799)]

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_150 body7_3

def body7_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_149, 610, 20)) (some 393) ([2]) (some (2, body7_151, 610, 21))

def body7_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 809), (829, 809)]

def body7_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body7_155 : WordLangProgHOL (BitVec 64) :=
.seq body7_153 body7_154

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_152 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_148 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
.seq body7_147 body7_160

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_173

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_176

def body7_178 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_177

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_178

def body7_180 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_179

def body7_181 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_180

def pass7 : WordLangProgHOL (BitVec 64) := body7_181
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(35, 0), (39, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2), (45, 35), (49, 39)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (45, 35), (49, 39)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_1, 610, 2)) (some 392) ([]) (some (2, body8_4, 610, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 49)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (83, 45), (87, 65), (91, 69), (95, 73)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 83), (105, 87), (109, 91), (113, 95)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (101, 83), (105, 87), (109, 91), (113, 95)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_3

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_10, 610, 4)) (some 423) ([2]) (some (2, body8_12, 610, 5))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 113), (139, 101), (143, 105), (147, 109), (151, 113)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (157, 139), (161, 143), (165, 147), (169, 151)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_3

def body8_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_15, 610, 6)) (some 427) ([2]) (some (2, body8_17, 610, 7))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169), (195, 157), (199, 161), (203, 165)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 195), (213, 199), (217, 203)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (209, 195), (213, 199), (217, 203)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_3

def body8_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_20, 610, 8)) (some 432) ([2]) (some (2, body8_22, 610, 9))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217), (243, 209), (247, 213), (251, 217)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2), (257, 243), (261, 247), (265, 251)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (257, 243), (261, 247), (265, 251)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_3

def body8_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_25, 610, 10)) (some 608) ([2]) (some (2, body8_27, 610, 11))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 277)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 289 (Flapjack.WordLangAddr.addr 285 160#64))

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 313)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 333), (341, 285)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 265), (4, 341), (359, 257), (363, 317), (367, 261), (371, 341)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 359), (677, 363), (669, 371)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2), (377, 359), (381, 363), (385, 367), (389, 371)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 397)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_3

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 401 (Flapjack.WordStore.temp 0#5)

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385), (411, 377), (415, 381), (419, 401), (423, 389)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 411), (433, 415), (437, 419), (441, 423)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (429, 411), (433, 415), (437, 419), (441, 423)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_3

def body8_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_47, 610, 13)) (some 393) ([2]) (some (2, body8_49, 610, 14))

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(463, 429), (467, 433), (471, 437), (475, 441)]

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 463), (485, 467), (489, 471), (493, 475)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (481, 463), (485, 467), (489, 471), (493, 475)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_3

def body8_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_52, 610, 15)) (some 476) ([]) (some (2, body8_54, 610, 16))

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489), (519, 481), (523, 485), (527, 493)]

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 519), (537, 523), (541, 527)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (533, 519), (537, 523), (541, 527)]

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_3

def body8_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_57, 610, 17)) (some 606) ([2]) (some (2, body8_59, 610, 18))

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 561 Flapjack.WordStore.heapLength

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 565 561 (Flapjack.WordRegImm.imm 1#64)))

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 569 565

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 573 (Flapjack.WordLangAddr.addr 569 18446744073709551360#64))

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 577 573 (Flapjack.WordRegImm.imm 120#64)))

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551352#64))

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 577), (597, 593)]

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 597 (Flapjack.WordLangAddr.addr 601 0#64))

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 605 Flapjack.WordStore.heapLength

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 609 605 (Flapjack.WordRegImm.imm 1#64)))

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 613 609

def body8_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 18446744073709551360#64))

def body8_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 621 617 (Flapjack.WordRegImm.imm 128#64)))

def body8_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 0#64)

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 621), (629, 625)]

def body8_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 629 (Flapjack.WordLangAddr.addr 633 0#64))

def body8_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 533), (645, 537), (637, 541)]

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_77 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_76 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_75 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_74 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_69 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_64 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_106

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_107

def body8_109 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_108

def body8_110 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_109

def body8_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.imm 8#64) body8_44 body8_110

def body8_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(681, 649), (677, 645), (669, 637)]

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_112

def body8_114 : WordLangProgHOL (BitVec 64) :=
.seq body8_111 body8_113

def body8_115 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_114

def body8_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_41, 610, 12)) (some 609) ([2, 4]) (some (2, body8_115, 610, 19))

def body8_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body8_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body8_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body8_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body8_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717), (725, 677)]

def body8_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def body8_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 669)]

def body8_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 681 [2]

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_123 body8_124

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_122 body8_125

def body8_127 : WordLangProgHOL (BitVec 64) :=
.seq body8_121 body8_126

def body8_128 : WordLangProgHOL (BitVec 64) :=
.seq body8_120 body8_127

def body8_129 : WordLangProgHOL (BitVec 64) :=
.seq body8_119 body8_128

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_118 body8_129

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_117 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_131

def body8_133 : WordLangProgHOL (BitVec 64) :=
.seq body8_116 body8_132

def body8_134 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_133

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_134

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_135

def body8_137 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_136

def body8_138 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_137

def body8_139 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_138

def body8_140 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_139

def body8_141 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_140

def body8_142 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_141

def body8_143 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_142

def body8_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(753, 257), (745, 261), (737, 285)]

def body8_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 289 (Flapjack.WordRegImm.reg 293) body8_143 body8_144

def body8_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 745), (795, 753), (799, 737)]

def body8_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(805, 795), (809, 799)]

def body8_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (805, 795), (809, 799)]

def body8_149 : WordLangProgHOL (BitVec 64) :=
.seq body8_148 body8_3

def body8_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_147, 610, 20)) (some 393) ([2]) (some (2, body8_149, 610, 21))

def body8_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 809)]

def body8_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 805 [2]

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_151 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_153

def body8_155 : WordLangProgHOL (BitVec 64) :=
.seq body8_150 body8_154

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_146 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_145 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_160

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_173

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_176

def body8_178 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_177

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_178

def pass8 : WordLangProgHOL (BitVec 64) := body8_179
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 610, 2)) (some 392) ([]) (some (2, body10_4, 610, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 4), (46, 0), (48, 2)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (46, 46), (0, 48)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (46, 46), (0, 48)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_3

def body10_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_10, 610, 4)) (some 423) ([2]) (some (2, body10_12, 610, 5))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 46), (48, 0)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_10, 610, 6)) (some 427) ([2]) (some (2, body10_12, 610, 7))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 46)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (0, 46)]

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (0, 46)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_3

def body10_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_17, 610, 8)) (some 432) ([2]) (some (2, body10_19, 610, 9))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 0)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (54, 54), (6, 46)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (6, 46)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_3

def body10_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_22, 610, 10)) (some 608) ([2]) (some (2, body10_24, 610, 11))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 160#64))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (48, 44), (50, 2), (54, 54), (52, 4)]

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 48), (0, 50), (4, 52)]

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (8, 54), (52, 52)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_3

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (48, 48), (50, 50), (44, 0), (52, 52)]

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (50, 50), (44, 44), (52, 52)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (44, 44), (52, 52)]

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_3

def body10_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_44, 610, 13)) (some 393) ([2]) (some (2, body10_46, 610, 14))

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (50, 50), (0, 44), (52, 52)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (0, 44), (52, 52)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_3

def body10_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_48, 610, 15)) (some 476) ([]) (some (2, body10_50, 610, 16))

def body10_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (48, 48), (50, 50), (52, 52)]

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48), (0, 50), (4, 52)]

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48), (0, 50), (4, 52)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_54 body10_3

def body10_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_53, 610, 17)) (some 606) ([2]) (some (2, body10_55, 610, 18))

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 120#64)))

def body10_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def body10_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def body10_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def body10_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 128#64)))

def body10_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (4, 4)]

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_64 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_60 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_64 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_62 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_60 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) body10_41 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_66

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_97 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_38, 610, 12)) (some 609) ([2, 4]) (some (2, body10_100, 610, 19))

def body10_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body10_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def body10_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def body10_107 : WordLangProgHOL (BitVec 64) :=
.seq body10_105 body10_106

def body10_108 : WordLangProgHOL (BitVec 64) :=
.seq body10_104 body10_107

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_103 body10_108

def body10_110 : WordLangProgHOL (BitVec 64) :=
.seq body10_102 body10_109

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_110

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_112

def body10_114 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_113

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_117

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_119

def body10_121 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_120

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_124

def body10_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 44), (10, 54), (46, 4)]

def body10_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) body10_125 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 44), (46, 46)]

def body10_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def body10_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_130 body10_3

def body10_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_129, 610, 20)) (some 393) ([2]) (some (2, body10_131, 610, 21))

def body10_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_105 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_132 body10_135

def body10_137 : WordLangProgHOL (BitVec 64) :=
.seq body10_128 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_137

def body10_139 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_138

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_127 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_141

def body10_143 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_142

def body10_144 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_143

def body10_145 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_144

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_145

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_151

def body10_153 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_152

def body10_154 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_153

def body10_155 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_154

def body10_156 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_155

def body10_157 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_156

def body10_158 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_157

def body10_159 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_158

def body10_160 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_159

def pass10 : WordLangProgHOL (BitVec 64) := body10_160
end InitECandidate.Proofs.SmallStages.Compact610
