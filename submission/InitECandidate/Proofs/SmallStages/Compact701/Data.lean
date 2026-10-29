import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact701
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25 (Flapjack.Spt.ls 0)))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              4
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                24 (Flapjack.Spt.ls 0))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 (Flapjack.Spt.ls 1)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))))
              1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 23))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 25)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 22)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4), (41, 6), (45, 8)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 12#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 33)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 105)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 109)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body2_18, 701, 2)) (some 686) ([2, 4]) (some (2, body2_30, 701, 3))

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_36

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 1#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_36

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 181)]

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_36

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 1#64)

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 145)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 205)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 133), (219, 137), (223, 141), (227, 209), (231, 189), (235, 153), (239, 185)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_9

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 273)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64)

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_21

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 277)]

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_83, 701, 4)) (some 676) ([2, 4]) (some (2, body2_94, 701, 5))

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_36

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (309, 285), (305, 265), (301, 281), (297, 269)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_36

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 293 0#64)

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (309, 289), (305, 153), (301, 185), (297, 185)]

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 293)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 193)]

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 177)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body2_108 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_36

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 393 1#64)

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_36

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 1#64)

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 317)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 321)]

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(415, 329), (419, 325), (423, 409), (427, 405), (431, 357), (435, 369)]

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401), (4, 405), (6, 409)]

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 2)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_9

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 465)]

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 2)]

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 469)]

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_21

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(477, 469)]

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_172, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body2_183, 701, 7))

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_36

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(525, 441), (521, 477), (517, 445), (513, 449), (509, 453), (505, 481), (501, 473), (497, 457), (493, 461)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64)

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 0#64)

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 0#64)

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 0#64)

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_36

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(525, 329), (521, 485), (517, 325), (513, 321), (509, 317), (505, 313), (501, 309), (497, 357), (493, 369)]

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(529, 385)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(533, 389)]

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(537, 489)]

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(541, 373)]

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(545, 377)]

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body2_203 body2_220

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_36

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body2_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_224 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(593, 525), (589, 521), (585, 517), (581, 513), (577, 533), (573, 509), (569, 505), (565, 501), (561, 497),
    (557, 493)]

def body2_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 529)]

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(601, 537)]

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(605, 541)]

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 545)]

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_236

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_36

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 0#64)

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(593, 133), (589, 165), (585, 137), (581, 141), (577, 553), (573, 145), (569, 149), (565, 549), (561, 153),
    (557, 165)]

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body2_247 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_246

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_251 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body2_238 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_256

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_36

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body2_260 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_36

def body2_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body2_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body2_269 : WordLangProgHOL (BitVec 64) :=
.seq body2_267 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_266 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_270

def pass2 : WordLangProgHOL (BitVec 64) := body2_271
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4), (41, 6), (45, 8)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 33)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body3_5, 701, 2)) (some 686) ([2, 4]) (some (2, body3_11, 701, 3))

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_17

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 181)]

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 145)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 205)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 133), (219, 137), (223, 141), (227, 209), (231, 189), (235, 153), (239, 185)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_8

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_46, 701, 4)) (some 676) ([2, 4]) (some (2, body3_51, 701, 5))

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_17

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (305, 265), (297, 269)]

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (305, 153), (297, 185)]

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body3_58 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_17

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 317)]

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 321)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(415, 329), (419, 325), (423, 409), (427, 405), (431, 357), (435, 369)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401), (4, 405), (6, 409)]

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 2)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 469)]

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_8

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_98, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body3_103, 701, 7))

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_17

def body3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 441), (517, 445), (513, 449), (509, 453), (505, 481), (497, 457), (493, 461)]

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 329), (517, 325), (513, 321), (509, 317), (505, 313), (497, 357), (493, 369)]

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body3_112 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_17

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 525), (585, 517), (581, 513), (573, 509), (569, 505), (561, 497), (557, 493)]

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body3_125 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 133), (585, 137), (581, 141), (573, 145), (569, 149), (561, 153), (557, 165)]

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body3_123 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_128

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_17

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body3_132 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_135 body3_17

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_142

def pass3 : WordLangProgHOL (BitVec 64) := body3_143
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4), (41, 6), (45, 8)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 33)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body4_5, 701, 2)) (some 686) ([2, 4]) (some (2, body4_11, 701, 3))

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_17

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 181)]

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 145)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 205)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 133), (219, 137), (223, 141), (227, 209), (231, 189), (235, 153), (239, 185)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205), (4, 209)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_8

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_46, 701, 4)) (some 676) ([2, 4]) (some (2, body4_51, 701, 5))

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_17

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (305, 265), (297, 269)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (305, 153), (297, 185)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body4_58 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_17

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 317)]

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 321)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(415, 329), (419, 325), (423, 409), (427, 405), (431, 357), (435, 369)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 401), (4, 405), (6, 409)]

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 2)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 469)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_8

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_98, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body4_103, 701, 7))

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_17

def body4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 441), (517, 445), (513, 449), (509, 453), (505, 481), (497, 457), (493, 461)]

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 329), (517, 325), (513, 321), (509, 317), (505, 313), (497, 357), (493, 369)]

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body4_112 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_17

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 525), (585, 517), (581, 513), (573, 509), (569, 505), (561, 497), (557, 493)]

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body4_125 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 133), (585, 137), (581, 141), (573, 145), (569, 149), (561, 153), (557, 165)]

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body4_123 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_128

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_17

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body4_132 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_135 body4_17

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_142

def pass4 : WordLangProgHOL (BitVec 64) := body4_143
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4), (41, 6), (45, 8)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 33)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body5_5, 701, 2)) (some 686) ([2, 4]) (some (2, body5_11, 701, 3))

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_17

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 181)]

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 145)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 205)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 133), (219, 137), (223, 141), (227, 209), (231, 189), (235, 153), (239, 185)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 209), (4, 209)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_8

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_46, 701, 4)) (some 676) ([2, 4]) (some (2, body5_51, 701, 5))

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_17

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (305, 265), (297, 269)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (305, 153), (297, 185)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body5_58 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_17

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 317)]

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 321)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(415, 329), (419, 325), (423, 409), (427, 405), (431, 357), (435, 369)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405), (4, 405), (6, 409)]

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 2)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 469)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_8

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_98, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body5_103, 701, 7))

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_17

def body5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 441), (517, 445), (513, 449), (509, 453), (505, 481), (497, 457), (493, 461)]

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 329), (517, 325), (513, 321), (509, 317), (505, 313), (497, 357), (493, 369)]

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body5_112 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_17

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 133), (585, 137), (581, 141), (573, 145), (569, 149), (561, 153), (557, 157)]

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body5_125 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 133), (585, 137), (581, 141), (573, 145), (569, 149), (561, 153), (557, 165)]

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body5_123 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_128

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_17

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body5_132 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_135 body5_17

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_142

def pass5 : WordLangProgHOL (BitVec 64) := body5_143
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4), (41, 6), (45, 8)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 33)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body6_5, 701, 2)) (some 686) ([2, 4]) (some (2, body6_11, 701, 3))

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_17

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 181)]

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 145)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 205)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 133), (219, 137), (223, 141), (227, 209), (231, 189), (235, 153), (239, 185)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 209), (4, 209)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_8

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_46, 701, 4)) (some 676) ([2, 4]) (some (2, body6_51, 701, 5))

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_17

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (305, 265), (297, 269)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (305, 153), (297, 185)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body6_58 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_17

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 317)]

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 321)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(415, 329), (419, 325), (423, 409), (427, 405), (431, 357), (435, 369)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405), (4, 405), (6, 409)]

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 2)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 469)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_8

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_98, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body6_103, 701, 7))

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_17

def body6_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 441), (517, 445), (513, 449), (509, 453), (505, 481), (497, 457), (493, 461)]

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 329), (517, 325), (513, 321), (509, 317), (505, 313), (497, 357), (493, 369)]

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body6_112 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_17

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 133), (585, 137), (581, 141), (573, 145), (569, 149), (561, 153), (557, 157)]

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body6_125 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 133), (585, 137), (581, 141), (573, 145), (569, 149), (561, 153), (557, 165)]

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body6_123 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_128

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_17

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body6_132 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_135 body6_17

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_142

def pass6 : WordLangProgHOL (BitVec 64) := body6_143
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2), (29, 0), (33, 2), (37, 4), (41, 6), (45, 8)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53), (63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (109, 2), (85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body7_3, 701, 2)) (some 686) ([2, 4]) (some (2, body7_6, 701, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149), (185, 181)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 145), (4, 145), (215, 133), (219, 137), (223, 141), (227, 145), (231, 189), (235, 153), (239, 185), (209, 145),
    (205, 145)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (277, 2), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_5

def body7_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_20, 701, 4)) (some 676) ([2, 4]) (some (2, body7_22, 701, 5))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (305, 265), (297, 269)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (305, 153), (297, 185)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body7_28 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 317), (4, 317), (6, 321), (415, 329), (419, 325), (423, 321), (427, 317), (431, 357), (435, 369), (409, 321),
    (405, 317), (401, 317)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (469, 2), (441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_5

def body7_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_46, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body7_48, 701, 7))

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 441), (517, 445), (513, 449), (509, 453), (505, 481), (497, 457), (493, 461)]

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 329), (517, 325), (513, 321), (509, 317), (505, 313), (497, 357), (493, 369)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body7_56 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_59 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body7_84 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_87 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body7_92 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body7_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body7_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body7_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_95 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_94 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_93 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_106

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_107

def body7_109 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_108

def body7_110 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_109

def pass7 : WordLangProgHOL (BitVec 64) := body7_110
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2), (29, 0), (37, 4), (41, 6), (45, 8)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 12#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57), (4, 53), (63, 29), (67, 45), (71, 37), (75, 53), (79, 41)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (85, 63), (89, 67), (93, 71), (97, 75), (101, 79)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body8_3, 701, 2)) (some 686) ([2, 4]) (some (2, body8_6, 701, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 89)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 6#64)))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 85), (137, 125), (141, 93), (145, 97), (149, 121), (153, 101), (157, 129)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 157)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 165)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149), (185, 181)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 145), (4, 145), (215, 133), (219, 137), (223, 141), (227, 145), (231, 189), (235, 153), (239, 185)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235), (269, 239)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_5

def body8_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_20, 701, 4)) (some 676) ([2, 4]) (some (2, body8_22, 701, 5))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 245), (325, 249), (321, 253), (317, 257), (313, 261), (305, 265), (297, 269)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 133), (325, 137), (321, 141), (317, 145), (313, 189), (305, 153), (297, 185)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 189 (Flapjack.WordRegImm.reg 193) body8_28 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 297)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 349 345 (Flapjack.WordRegImm.imm 6#64)))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 3#64)))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 305)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 353 (Flapjack.WordRegImm.reg 357)))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 0#64))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 373 369 (Flapjack.WordRegImm.imm 63#64)))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 373)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 377 365 (Flapjack.WordRegImm.reg 8)))

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 381 377 (Flapjack.WordRegImm.imm 1#64)))

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 381)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 389 1#64)

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 317), (4, 317), (6, 321), (415, 329), (419, 325), (423, 321), (427, 317), (431, 357), (435, 369)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (441, 415), (445, 419), (449, 423), (453, 427), (457, 431), (461, 435)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_5

def body8_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_46, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body8_48, 701, 7))

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 1#64)

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 441), (517, 445), (513, 449), (509, 453), (505, 481), (497, 457), (493, 461)]

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 329), (517, 325), (513, 321), (509, 317), (505, 313), (497, 357), (493, 369)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 385 (Flapjack.WordRegImm.reg 389) body8_56 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 525), (137, 517), (141, 513), (145, 509), (149, 505), (153, 497), (157, 493)]

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_59 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 161 (Flapjack.WordRegImm.reg 165) body8_84 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 593), (137, 585), (141, 581), (145, 573), (149, 569), (153, 561), (157, 557)]

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_87 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)) body8_92 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body8_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body8_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 613)]

def body8_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 133 [2]

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_95 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_94 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_93 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_106

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_107

def body8_109 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_108

def body8_110 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_109

def pass8 : WordLangProgHOL (BitVec 64) := body8_110
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0), (10, 4), (6, 6), (8, 8)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (50, 10), (48, 4), (52, 6)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (50, 50), (4, 48), (48, 52)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (4, 48), (48, 52)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 701, 2)) (some 686) ([2, 4]) (some (2, body10_6, 701, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 6#64)))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 6), (50, 50), (4, 4), (10, 10), (48, 48), (0, 0)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (56, 0)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (50, 50), (48, 4), (52, 10), (54, 48), (56, 56)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 50), (4, 48), (10, 52), (12, 54), (0, 56)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 50), (4, 48), (10, 52), (12, 54), (0, 56)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_5

def body10_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_19, 701, 4)) (some 676) ([2, 4]) (some (2, body10_21, 701, 5))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_24

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (6, 50), (4, 4), (10, 10), (12, 48), (0, 56)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) body10_27 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 63#64)))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 4), (52, 12), (54, 0)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (14, 46), (6, 48), (4, 50), (12, 52), (0, 54)]

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (14, 46), (6, 48), (4, 50), (12, 52), (0, 54)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_5

def body10_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body10_43, 701, 6)) (some 675) ([2, 4, 6]) (some (2, body10_45, 701, 7))

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (14, 14), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (14, 46), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) body10_53 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 14), (50, 6), (4, 4), (10, 10), (48, 12), (0, 0)]

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) body10_81 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 6), (50, 8), (4, 4), (10, 10), (48, 12), (0, 0)]

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_84 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln) ()
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  () Flapjack.Spt.ln) body10_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def body10_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_90 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_102

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_103

def body10_105 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_104

def pass10 : WordLangProgHOL (BitVec 64) := body10_105
end InitECandidate.Proofs.SmallStages.Compact701
