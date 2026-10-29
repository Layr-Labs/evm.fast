import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact502
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
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) (Flapjack.Spt.ls 4))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 45)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2), (65, 4), (69, 6), (73, 8)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 61)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 65)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 77)]

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_19, 502, 2)) (some 477) ([]) (some (2, body2_37, 502, 3))

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (149, 4), (153, 6), (157, 8)]

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_5

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 149)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 157)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_22

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 161)]

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_59, 502, 4)) (some 477) ([]) (some (2, body2_76, 502, 5))

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_41

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 5#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_5

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 269)]

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_22

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 273)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_96, 502, 6)) (some 472) ([2]) (some (2, body2_107, 502, 7))

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_41

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 249)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 237)]

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 257)]

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 253)]

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 265)]

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 245)]

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 241)]

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(319, 233)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285), (4, 289), (6, 293), (8, 297), (10, 301), (12, 305), (14, 309), (16, 313)]

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 319)]

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2), (333, 4), (337, 6), (341, 8)]

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_5

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 341)]

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 337)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64)

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 333)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 329)]

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 2)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_22

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 0#64)

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(357, 345)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body2_147, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body2_164, 502, 9))

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_41

def body2_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 365)]

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 361)]

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 349)]

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 325)]

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (4, 373), (6, 377), (8, 381)]

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 2)]

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_5

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 397)]

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_22

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(409, 401)]

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_189, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body2_200, 502, 11))

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_41

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 1#64)

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(423, 393)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417)]

def body2_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(433, 2)]

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_5

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(441, 433)]

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 445 0#64)

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_22

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 0#64)

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(445, 437)]

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_220, 502, 12)) (some 492) ([2]) (some (2, body2_231, 502, 13))

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_41

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_243

def pass2 : WordLangProgHOL (BitVec 64) := body2_244
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 45)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2), (65, 4), (69, 6), (73, 8)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 61)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 65)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_12, 502, 2)) (some 477) ([]) (some (2, body3_26, 502, 3))

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (149, 4), (153, 6), (157, 8)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 149)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 157)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_15

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_42, 502, 4)) (some 477) ([]) (some (2, body3_55, 502, 5))

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_29

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_15

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_63, 502, 6)) (some 472) ([2]) (some (2, body3_68, 502, 7))

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_29

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 249)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 237)]

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 257)]

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 253)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 265)]

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 245)]

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 241)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(319, 233)]

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285), (4, 289), (6, 293), (8, 297), (10, 301), (12, 305), (14, 309), (16, 313)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 319)]

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2), (333, 4), (337, 6), (341, 8)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 341)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 337)]

def body3_98 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_97

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 333)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 329)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 2)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_15

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 0#64)

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body3_103, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body3_116, 502, 9))

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_29

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 365)]

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 361)]

def body3_125 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 349)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_128

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 325)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (4, 373), (6, 377), (8, 381)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body3_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401)]

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_15

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_136

def body3_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_132, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body3_137, 502, 11))

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_29

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(423, 393)]

def body3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417)]

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body3_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_15

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_146, 502, 12)) (some 492) ([2]) (some (2, body3_151, 502, 13))

def body3_153 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_152

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_153

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_29

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body3_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_160 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_159 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_163

def pass3 : WordLangProgHOL (BitVec 64) := body3_164
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 45)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2), (65, 4), (69, 6), (73, 8)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 61)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 65)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_12, 502, 2)) (some 477) ([]) (some (2, body4_26, 502, 3))

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (149, 4), (153, 6), (157, 8)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 149)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 157)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_15

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_42, 502, 4)) (some 477) ([]) (some (2, body4_55, 502, 5))

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_29

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_15

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_63, 502, 6)) (some 472) ([2]) (some (2, body4_68, 502, 7))

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_29

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 249)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 237)]

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 257)]

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 253)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 265)]

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 245)]

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 241)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(319, 233)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285), (4, 289), (6, 293), (8, 297), (10, 301), (12, 305), (14, 309), (16, 313)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 319)]

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2), (333, 4), (337, 6), (341, 8)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 341)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 337)]

def body4_98 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_97

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 333)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 329)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 2)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_15

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 0#64)

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body4_103, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body4_116, 502, 9))

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_29

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 365)]

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 361)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 349)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_128

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 325)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (4, 373), (6, 377), (8, 381)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body4_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_15

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_136

def body4_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_132, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body4_137, 502, 11))

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_29

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(423, 393)]

def body4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417)]

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body4_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_15

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_146, 502, 12)) (some 492) ([2]) (some (2, body4_151, 502, 13))

def body4_153 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_152

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_153

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_29

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body4_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_160 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_159 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_163

def pass4 : WordLangProgHOL (BitVec 64) := body4_164
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 45)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2), (65, 4), (69, 6), (73, 8)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 61)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 65)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_12, 502, 2)) (some 477) ([]) (some (2, body5_26, 502, 3))

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (149, 4), (153, 6), (157, 8)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 149)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 157)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_15

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_42, 502, 4)) (some 477) ([]) (some (2, body5_55, 502, 5))

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_29

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_15

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_63, 502, 6)) (some 472) ([2]) (some (2, body5_68, 502, 7))

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_29

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 249)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 237)]

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 257)]

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 253)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 265)]

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 245)]

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 241)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(319, 233)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285), (4, 289), (6, 293), (8, 297), (10, 301), (12, 305), (14, 309), (16, 313)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 319)]

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2), (333, 4), (337, 6), (341, 8)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 341)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 337)]

def body5_98 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_97

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 333)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 329)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 2)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_15

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 0#64)

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body5_103, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body5_116, 502, 9))

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_29

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 365)]

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 361)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 349)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_128

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 325)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (4, 373), (6, 377), (8, 381)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body5_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_15

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_136

def body5_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_132, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body5_137, 502, 11))

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_29

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(423, 393)]

def body5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417)]

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body5_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_15

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_146, 502, 12)) (some 492) ([2]) (some (2, body5_151, 502, 13))

def body5_153 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_152

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_153

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_29

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body5_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_160 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_159 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_163

def pass5 : WordLangProgHOL (BitVec 64) := body5_164
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 45)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 51)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2), (65, 4), (69, 6), (73, 8)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 61)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 65)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_12, 502, 2)) (some 477) ([]) (some (2, body6_26, 502, 3))

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2), (149, 4), (153, 6), (157, 8)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 149)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 157)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_15

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_42, 502, 4)) (some 477) ([]) (some (2, body6_55, 502, 5))

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_29

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_15

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_63, 502, 6)) (some 472) ([2]) (some (2, body6_68, 502, 7))

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_29

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 249)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 237)]

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 257)]

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 253)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 265)]

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 245)]

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 241)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(319, 233)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285), (4, 289), (6, 293), (8, 297), (10, 301), (12, 305), (14, 309), (16, 313)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 319)]

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2), (333, 4), (337, 6), (341, 8)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 341)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 337)]

def body6_98 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_97

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 333)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 329)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 2)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_15

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 0#64)

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body6_103, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body6_116, 502, 9))

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_29

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 365)]

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 361)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 349)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_128

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 325)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (4, 373), (6, 377), (8, 381)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body6_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_15

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_136

def body6_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_132, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body6_137, 502, 11))

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_29

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(423, 393)]

def body6_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417)]

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body6_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_15

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_146, 502, 12)) (some 492) ([2]) (some (2, body6_151, 502, 13))

def body6_153 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_152

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_153

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_29

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body6_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_160 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_159 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_163

def pass6 : WordLangProgHOL (BitVec 64) := body6_164
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(51, 0), (45, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 4), (93, 2), (85, 8), (81, 6), (61, 2), (65, 4), (69, 6), (73, 8), (57, 51)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (77, 2), (57, 51)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_1, 502, 2)) (some 477) ([]) (some (2, body7_4, 502, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(177, 8), (173, 6), (169, 2), (165, 4), (145, 2), (149, 4), (153, 6), (157, 8), (125, 103), (129, 107), (133, 111),
    (137, 115), (141, 119)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (161, 2), (125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_3

def body7_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_8, 502, 4)) (some 477) ([]) (some (2, body7_10, 502, 5))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 189), (195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (273, 2), (233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
    (265, 227)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_3

def body7_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_14, 502, 6)) (some 472) ([2]) (some (2, body7_16, 502, 7))

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 249), (4, 237), (6, 261), (8, 257), (10, 253), (12, 265), (14, 245), (16, 241), (319, 233), (313, 241),
    (309, 245), (305, 265), (301, 253), (297, 257), (293, 261), (289, 237), (285, 249)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(365, 2), (361, 4), (353, 6), (349, 8), (329, 2), (333, 4), (337, 6), (341, 8), (325, 319)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (345, 2), (325, 319)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_3

def body7_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body7_19, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body7_21, 502, 9))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 365), (4, 361), (6, 353), (8, 349), (387, 325), (381, 349), (377, 353), (373, 361), (369, 365)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (401, 2), (393, 387)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_3

def body7_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_24, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body7_26, 502, 11))

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417), (423, 393)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (437, 2), (429, 423)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_3

def body7_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_30, 502, 12)) (some 492) ([2]) (some (2, body7_32, 502, 13))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_57

def pass7 : WordLangProgHOL (BitVec 64) := body7_58
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(51, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(97, 4), (93, 2), (85, 8), (81, 6), (57, 51)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 51)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_1, 502, 2)) (some 477) ([]) (some (2, body8_4, 502, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 57), (107, 97), (111, 93), (115, 85), (119, 81)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(177, 8), (173, 6), (169, 2), (165, 4), (125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (125, 103), (129, 107), (133, 111), (137, 115), (141, 119)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_3

def body8_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_8, 502, 4)) (some 477) ([]) (some (2, body8_10, 502, 5))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 5#64)

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 189), (195, 125), (199, 129), (203, 177), (207, 173), (211, 133), (215, 169), (219, 137), (223, 141), (227, 165)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223), (265, 227)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_3

def body8_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_14, 502, 6)) (some 472) ([2]) (some (2, body8_16, 502, 7))

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 249), (4, 237), (6, 261), (8, 257), (10, 253), (12, 265), (14, 245), (16, 241), (319, 233)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 2), (361, 4), (353, 6), (349, 8), (325, 319)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (325, 319)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_3

def body8_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body8_19, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body8_21, 502, 9))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 365), (4, 361), (6, 353), (8, 349), (387, 325)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 387)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (393, 387)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_3

def body8_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_24, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body8_26, 502, 11))

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 417), (423, 393)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 423)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (429, 423)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_3

def body8_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_30, 502, 12)) (some 492) ([2]) (some (2, body8_32, 502, 13))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 449)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 429 [2]

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_57

def pass8 : WordLangProgHOL (BitVec 64) := body8_58
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 502, 2)) (some 477) ([]) (some (2, body10_4, 502, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (52, 0), (56, 8), (58, 6)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_3

def body10_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_8, 502, 4)) (some 477) ([]) (some (2, body10_10, 502, 5))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 8), (50, 6), (52, 52), (54, 0), (56, 56), (58, 58), (60, 4)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_3

def body10_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_14, 502, 6)) (some 472) ([2]) (some (2, body10_16, 502, 7))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_19, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, body10_4, 502, 9))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_22, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, body10_4, 502, 11))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_3

def body10_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_25, 502, 12)) (some 492) ([2]) (some (2, body10_27, 502, 13))

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_52

def pass10 : WordLangProgHOL (BitVec 64) := body10_53
end InitECandidate.Proofs.SmallStages.Compact502
