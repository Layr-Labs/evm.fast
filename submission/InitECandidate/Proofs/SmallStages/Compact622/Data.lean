import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact622
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 22 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 26))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)) 23 Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 45)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 53)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 57)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(95, 41), (99, 73), (103, 65), (107, 61), (111, 69)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77), (4, 81), (6, 85), (8, 89)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 137)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 141)]

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_21, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body2_33, 622, 3))

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 1#64)

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_38

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 1#64)

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173), (189, 165), (185, 169)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_12

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_38

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153), (189, 177), (185, 181)]

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_12

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body2_54 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_38

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 121)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(207, 117), (211, 197), (215, 193), (219, 125), (223, 129), (227, 201)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_12

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 257)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_24

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 261)]

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_80, 622, 4)) (some 465) ([2, 4]) (some (2, body2_91, 622, 5))

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_38

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 1#64)

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_38

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 1#64)

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 249)]

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 237)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(299, 233), (303, 241), (307, 289)]

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289), (4, 293)]

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 299), (317, 303), (321, 307)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_12

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_24

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 329)]

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_120, 622, 6)) (some 465) ([2, 4]) (some (2, body2_131, 622, 7))

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_38

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 317)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 313), (355, 333)]

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 2)]

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_12

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 0#64)

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 369)]

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body2_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_24

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_153 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(377, 373)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_152, 622, 8)) (some 465) ([2, 4]) (some (2, body2_163, 622, 9))

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_38

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 381)]

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 385), (4, 389)]

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 361), (401, 389), (397, 385), (393, 385)]

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64)

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 389)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_191

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(405, 233), (401, 273), (397, 269), (393, 277)]

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(409, 253)]

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(413, 249)]

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(417, 277)]

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_198 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(421, 273)]

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_200 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_202 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(429, 241)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237)]

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body2_193 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 0#64)

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_38

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 0#64)

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_38

def body2_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 421)]

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body2_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_224 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_218 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 461)]

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 465)]

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 465 (Flapjack.WordRegImm.reg 473)))

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 413)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 477)]

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 481)]

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 1#64)

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_38

def body2_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 1#64)

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 485)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_247

def body2_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 501), (521, 493), (517, 501), (513, 497)]

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_12

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_248 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64)

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_38

def body2_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_253 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 485), (521, 505), (517, 489), (513, 509)]

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_12

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body2_251 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_38

def body2_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 457)]

def body2_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517)]

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_262 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_261 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 429)]

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body2_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_269 body2_270

def body2_272 : WordLangProgHOL (BitVec 64) :=
.seq body2_268 body2_271

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_267 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body2_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_275

def body2_277 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_276

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_277

def pass2 : WordLangProgHOL (BitVec 64) := body2_278
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 45)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 53)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 57)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(95, 41), (99, 73), (103, 65), (107, 61), (111, 69)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77), (4, 81), (6, 85), (8, 89)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 137)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_14, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body3_22, 622, 3))

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body3_38 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_27

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 121)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(207, 117), (211, 197), (215, 193), (219, 125), (223, 129), (227, 201)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 257)]

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_17

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_54, 622, 4)) (some 465) ([2, 4]) (some (2, body3_61, 622, 5))

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_27

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 249)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 237)]

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(299, 233), (303, 241), (307, 289)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289), (4, 293)]

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 299), (317, 303), (321, 307)]

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_17

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_81, 622, 6)) (some 465) ([2, 4]) (some (2, body3_88, 622, 7))

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_27

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 317)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 313), (355, 333)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 2)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 369)]

def body3_104 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_103

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_106 body3_17

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_104, 622, 8)) (some 465) ([2, 4]) (some (2, body3_111, 622, 9))

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_27

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 381)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 385), (4, 389)]

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 361)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(405, 233)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(409, 253)]

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(413, 249)]

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(421, 273)]

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(429, 241)]

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237)]

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body3_136 body3_147

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_27

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_27

def body3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 421)]

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409)]

def body3_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_151 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 461)]

def body3_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 465)]

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 465 (Flapjack.WordRegImm.reg 473)))

def body3_167 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_166

def body3_168 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_167

def body3_169 : WordLangProgHOL (BitVec 64) :=
.seq body3_161 body3_168

def body3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 413)]

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_170

def body3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 477)]

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_171 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 481)]

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_173 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 485)]

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 501)]

def body3_179 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_178

def body3_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 489)]

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body3_179 body3_181

def body3_183 : WordLangProgHOL (BitVec 64) :=
.seq body3_175 body3_182

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_183 body3_27

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 457)]

def body3_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517)]

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
.seq body3_185 body3_188

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_189

def body3_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 429)]

def body3_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body3_194 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_193

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_191 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_190 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body3_199 : WordLangProgHOL (BitVec 64) :=
.seq body3_197 body3_198

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_196 body3_199

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_200

def pass3 : WordLangProgHOL (BitVec 64) := body3_201
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 45)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 53)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 57)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(95, 41), (99, 73), (103, 65), (107, 61), (111, 69)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77), (4, 81), (6, 85), (8, 89)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 137)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_14, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body4_22, 622, 3))

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body4_38 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_27

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 121)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(207, 117), (211, 197), (215, 193), (219, 125), (223, 129), (227, 201)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 257)]

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_17

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_54, 622, 4)) (some 465) ([2, 4]) (some (2, body4_61, 622, 5))

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_27

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 249)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 237)]

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(299, 233), (303, 241), (307, 289)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289), (4, 293)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 299), (317, 303), (321, 307)]

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_17

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_81, 622, 6)) (some 465) ([2, 4]) (some (2, body4_88, 622, 7))

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_27

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 317)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 313), (355, 333)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 2)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 369)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_103

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_106 body4_17

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_104, 622, 8)) (some 465) ([2, 4]) (some (2, body4_111, 622, 9))

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_27

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 381)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 385), (4, 389)]

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 361)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(405, 233)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(409, 253)]

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(413, 249)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(421, 273)]

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(429, 241)]

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237)]

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body4_136 body4_147

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_27

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_27

def body4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 421)]

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409)]

def body4_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_151 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 461)]

def body4_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 465)]

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 465 (Flapjack.WordRegImm.reg 473)))

def body4_167 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_166

def body4_168 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_167

def body4_169 : WordLangProgHOL (BitVec 64) :=
.seq body4_161 body4_168

def body4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 413)]

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_170

def body4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 477)]

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_171 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 481)]

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_173 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 485)]

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 501)]

def body4_179 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_178

def body4_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 489)]

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body4_179 body4_181

def body4_183 : WordLangProgHOL (BitVec 64) :=
.seq body4_175 body4_182

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_183 body4_27

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 457)]

def body4_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517)]

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
.seq body4_185 body4_188

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_189

def body4_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 429)]

def body4_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body4_194 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_193

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_191 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_190 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body4_199 : WordLangProgHOL (BitVec 64) :=
.seq body4_197 body4_198

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_196 body4_199

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_200

def pass4 : WordLangProgHOL (BitVec 64) := body4_201
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 45)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 53)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 57)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(95, 41), (99, 73), (103, 65), (107, 61), (111, 69)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77), (4, 81), (6, 85), (8, 89)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 137)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_14, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body5_22, 622, 3))

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body5_38 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_27

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 121)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(207, 117), (211, 197), (215, 193), (219, 125), (223, 129), (227, 201)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 257)]

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_17

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_54, 622, 4)) (some 465) ([2, 4]) (some (2, body5_61, 622, 5))

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_27

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 249)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 237)]

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(299, 233), (303, 241), (307, 289)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289), (4, 293)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 299), (317, 303), (321, 307)]

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_17

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_81, 622, 6)) (some 465) ([2, 4]) (some (2, body5_88, 622, 7))

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_27

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 317)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 313), (355, 333)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 2)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 369)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_103

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_106 body5_17

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_104, 622, 8)) (some 465) ([2, 4]) (some (2, body5_111, 622, 9))

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_27

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 381)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 385), (4, 389)]

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 361)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(405, 233)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(409, 253)]

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(413, 249)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(421, 273)]

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(429, 241)]

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237)]

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body5_136 body5_147

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_27

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_27

def body5_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 421)]

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409)]

def body5_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_151 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 461)]

def body5_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 465)]

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 469 (Flapjack.WordRegImm.reg 473)))

def body5_167 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_166

def body5_168 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_167

def body5_169 : WordLangProgHOL (BitVec 64) :=
.seq body5_161 body5_168

def body5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 413)]

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_170

def body5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 477)]

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_171 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 481)]

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_173 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 485)]

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 501)]

def body5_179 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_178

def body5_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 489)]

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body5_179 body5_181

def body5_183 : WordLangProgHOL (BitVec 64) :=
.seq body5_175 body5_182

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_183 body5_27

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 457)]

def body5_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517)]

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
.seq body5_185 body5_188

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_189

def body5_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 429)]

def body5_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body5_194 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_193

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_191 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_190 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body5_199 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_198

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_196 body5_199

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_200

def pass5 : WordLangProgHOL (BitVec 64) := body5_201
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 45)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 49)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 53)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 57)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(95, 41), (99, 73), (103, 65), (107, 61), (111, 69)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77), (4, 81), (6, 85), (8, 89)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 137)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 141)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_14, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body6_22, 622, 3))

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body6_38 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_27

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 121)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(207, 117), (211, 197), (215, 193), (219, 125), (223, 129), (227, 201)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 201)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 257)]

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_17

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_54, 622, 4)) (some 465) ([2, 4]) (some (2, body6_61, 622, 5))

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_27

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 249)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 237)]

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(299, 233), (303, 241), (307, 289)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 289), (4, 293)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 299), (317, 303), (321, 307)]

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_17

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_81, 622, 6)) (some 465) ([2, 4]) (some (2, body6_88, 622, 7))

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_27

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 321)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 317)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 313), (355, 333)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341), (4, 345)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 2)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 369)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_103

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_106 body6_17

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_104, 622, 8)) (some 465) ([2, 4]) (some (2, body6_111, 622, 9))

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_27

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 381)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 385), (4, 389)]

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 361)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(405, 233)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(409, 253)]

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(413, 249)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(421, 273)]

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(429, 241)]

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237)]

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body6_136 body6_147

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_27

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_27

def body6_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 421)]

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409)]

def body6_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_151 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 461)]

def body6_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 465)]

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 469 (Flapjack.WordRegImm.reg 473)))

def body6_167 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_166

def body6_168 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_167

def body6_169 : WordLangProgHOL (BitVec 64) :=
.seq body6_161 body6_168

def body6_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 413)]

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_170

def body6_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 477)]

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_171 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 481)]

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_173 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 485)]

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 501)]

def body6_179 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_178

def body6_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 489)]

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body6_179 body6_181

def body6_183 : WordLangProgHOL (BitVec 64) :=
.seq body6_175 body6_182

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_183 body6_27

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 457)]

def body6_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517)]

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
.seq body6_185 body6_188

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_189

def body6_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 429)]

def body6_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body6_194 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_193

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_191 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_190 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body6_199 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_198

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_196 body6_199

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_200

def pass6 : WordLangProgHOL (BitVec 64) := body6_201
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (95, 0), (99, 16), (103, 12), (107, 10), (111, 14), (89, 8), (85, 6), (81, 4),
    (77, 2), (41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (137, 2), (117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (141, 2), (117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_1, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body7_4, 622, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_11

def body7_13 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_12

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body7_13 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 121), (4, 133), (207, 117), (211, 121), (215, 193), (219, 125), (223, 129), (227, 133), (201, 133), (197, 121)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(265, 2), (257, 2), (233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (261, 2), (233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_3

def body7_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_18, 622, 4)) (some 465) ([2, 4]) (some (2, body7_20, 622, 5))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265), (273, 245)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249), (4, 237), (299, 233), (303, 241), (307, 249), (293, 237), (289, 249)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2), (325, 2), (313, 299), (317, 303), (321, 307)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (329, 2), (313, 299), (317, 303), (321, 307)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_3

def body7_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_24, 622, 6)) (some 465) ([2, 4]) (some (2, body7_26, 622, 7))

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321), (4, 317), (351, 313), (355, 333), (345, 317), (341, 321)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 2), (369, 2), (361, 351), (365, 355)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (373, 2), (361, 351), (365, 355)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_3

def body7_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_29, 622, 8)) (some 465) ([2, 4]) (some (2, body7_31, 622, 9))

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 365), (4, 381), (389, 381), (385, 365)]

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237), (429, 241), (421, 273), (413, 249), (409, 253), (405, 233)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body7_42 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409), (445, 421)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 461), (465, 461)]

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 469 (Flapjack.WordRegImm.reg 473)))

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 413), (485, 477), (481, 413)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 485), (501, 485)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 489)]

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body7_54 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517), (529, 457)]

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533), (541, 429)]

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_59 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_92

def pass7 : WordLangProgHOL (BitVec 64) := body7_93
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (95, 0), (99, 16), (103, 12), (107, 10), (111, 14)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (117, 95), (121, 99), (125, 103), (129, 107), (133, 111)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_1, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body8_4, 622, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 145)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 2300#64)

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_11

def body8_13 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_12

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 153)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 157 (Flapjack.WordRegImm.reg 161) body8_13 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 121), (4, 133), (207, 117), (211, 121), (215, 193), (219, 125), (223, 129), (227, 133)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2), (233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (233, 207), (237, 211), (241, 215), (245, 219), (249, 223), (253, 227)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_3

def body8_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_18, 622, 4)) (some 465) ([2, 4]) (some (2, body8_20, 622, 5))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 265), (273, 245)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 249), (4, 237), (299, 233), (303, 241), (307, 249)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 2), (313, 299), (317, 303), (321, 307)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (313, 299), (317, 303), (321, 307)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_3

def body8_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_24, 622, 6)) (some 465) ([2, 4]) (some (2, body8_26, 622, 7))

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321), (4, 317), (351, 313), (355, 333)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 2), (361, 351), (365, 355)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (361, 351), (365, 355)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_3

def body8_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_29, 622, 8)) (some 465) ([2, 4]) (some (2, body8_31, 622, 9))

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 365), (4, 381)]

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 361 [2, 4]

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(433, 237), (429, 241), (421, 273), (413, 249), (409, 253), (405, 233)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 273 (Flapjack.WordRegImm.reg 277) body8_42 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 409), (445, 421)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 453 445 (Flapjack.WordRegImm.reg 449)))

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 433)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 461 453 (Flapjack.WordRegImm.reg 457)))

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(469, 461)]

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 473 469 (Flapjack.WordRegImm.imm 6#64)))

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 477 469 (Flapjack.WordRegImm.reg 473)))

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 413), (485, 477)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 485)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 489)]

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 485 (Flapjack.WordRegImm.reg 489) body8_54 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 517), (529, 457)]

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 537 529 (Flapjack.WordRegImm.reg 533)))

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533), (541, 429)]

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 541 (Flapjack.WordRegImm.reg 545)))

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 537), (4, 549)]

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 405 [2, 4]

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_59 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_92

def pass8 : WordLangProgHOL (BitVec 64) := body8_93
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 16), (50, 12), (52, 10), (48, 14)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (50, 50), (52, 52), (4, 48)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (52, 52), (4, 48)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, body10_4, 622, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2300#64)

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_11

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) body10_13 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 4)]

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (10, 46), (46, 48), (0, 50), (12, 52), (6, 54)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (46, 48), (0, 50), (12, 52), (6, 54)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_3

def body10_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_18, 622, 4)) (some 465) ([2, 4]) (some (2, body10_20, 622, 5))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 12), (4, 10), (44, 44), (46, 46), (48, 12)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_3

def body10_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_24, 622, 6)) (some 465) ([2, 4]) (some (2, body10_26, 622, 7))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (16, 44), (18, 46)]

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (18, 46)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_3

def body10_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_29, 622, 8)) (some 465) ([2, 4]) (some (2, body10_31, 622, 9))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 4)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (8, 46), (0, 0), (12, 12), (6, 6), (14, 44)]

def body10_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) body10_42 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 6)))

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 10)))

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 2)))

def body10_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def body10_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 0)]

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 12) body10_53 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 12)))

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def body10_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 12)))

def body10_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def body10_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4]

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_60 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_91

def pass10 : WordLangProgHOL (BitVec 64) := body10_92
end InitECandidate.Proofs.SmallStages.Compact622
