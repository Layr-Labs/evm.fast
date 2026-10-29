import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact445
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 25 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 6))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 37)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 49), (75, 41), (79, 57), (83, 53), (87, 45)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 117)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 121)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_15, 445, 2)) (some 441) ([2]) (some (2, body2_27, 445, 3))

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 40#64)

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_6

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 197)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 0#64)

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 2)]

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_18

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 201)]

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_54, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body2_65, 445, 5))

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_32

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 189)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 185)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 221)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241)]

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 229)]

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 233)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_113

def pass2 : WordLangProgHOL (BitVec 64) := body2_114
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 37)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 49), (75, 41), (79, 57), (83, 53), (87, 45)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 117)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_8, 445, 2)) (some 441) ([2]) (some (2, body3_16, 445, 3))

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145)]

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 197)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 2)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_11

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_36, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body3_43, 445, 5))

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_21

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 189)]

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 185)]

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 221)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 229)]

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249)]

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 233)]

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_91

def pass3 : WordLangProgHOL (BitVec 64) := body3_92
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 37)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 49), (75, 41), (79, 57), (83, 53), (87, 45)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 117)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_8, 445, 2)) (some 441) ([2]) (some (2, body4_16, 445, 3))

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 197)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 2)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_11

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_36, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body4_43, 445, 5))

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_21

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 189)]

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 185)]

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 221)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 229)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 233)]

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_91

def pass4 : WordLangProgHOL (BitVec 64) := body4_92
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 37)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 49), (75, 41), (79, 57), (83, 53), (87, 45)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 117)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_8, 445, 2)) (some 441) ([2]) (some (2, body5_16, 445, 3))

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 197)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 2)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_11

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_36, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body5_43, 445, 5))

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_21

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 189)]

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 185)]

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 221)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 229)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 233)]

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_91

def pass5 : WordLangProgHOL (BitVec 64) := body5_92
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 37)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(67, 33), (71, 49), (75, 41), (79, 57), (83, 53), (87, 45)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 117)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_8, 445, 2)) (some 441) ([2]) (some (2, body6_16, 445, 3))

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 2)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 197)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(201, 2)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_11

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_36, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body6_43, 445, 5))

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_21

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 193)]

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 189)]

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 185)]

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 221)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 229)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 233)]

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_91

def pass6 : WordLangProgHOL (BitVec 64) := body6_92
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (67, 0), (71, 8), (75, 4), (79, 12), (83, 10), (87, 6), (61, 2), (33, 0), (37, 2), (41, 4), (45, 6), (49, 8),
    (53, 10), (57, 12)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2), (117, 2), (93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (121, 2), (93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_1, 445, 2)) (some 441) ([2]) (some (2, body7_4, 445, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145), (155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2), (197, 2), (177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (201, 2), (177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_3

def body7_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_12, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body7_14, 445, 5))

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217), (237, 193), (233, 185), (229, 189), (225, 181), (221, 193)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241), (245, 225)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249), (253, 229)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257), (261, 233)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_49

def pass7 : WordLangProgHOL (BitVec 64) := body7_50
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (67, 0), (71, 8), (75, 4), (79, 12), (83, 10), (87, 6)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2), (93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (93, 67), (97, 71), (101, 75), (105, 79), (109, 83), (113, 87)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_1, 445, 2)) (some 441) ([2]) (some (2, body8_4, 445, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(133, 129)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 137 (Flapjack.WordLangAddr.addr 133 16#64))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 101)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 40#64)

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 137), (4, 149), (6, 145), (155, 93), (159, 97), (163, 105), (167, 109), (171, 113)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(205, 2), (177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (177, 155), (181, 159), (185, 163), (189, 167), (193, 171)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_3

def body8_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_12, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body8_14, 445, 5))

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 205)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 217 213 (Flapjack.WordRegImm.imm 8#64)))

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 217), (237, 193), (233, 185), (229, 189), (225, 181)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 237 (Flapjack.WordLangAddr.addr 241 0#64))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 241), (245, 225)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 245 (Flapjack.WordLangAddr.addr 249 8#64))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 249), (253, 229)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 16#64))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 257), (261, 233)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 261 (Flapjack.WordLangAddr.addr 265 24#64))

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 177 [2]

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_49

def pass8 : WordLangProgHOL (BitVec 64) := body8_50
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 4), (50, 12), (52, 10), (54, 6)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (6, 48), (48, 50), (50, 52), (52, 54)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (48, 50), (50, 52), (52, 54)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_3

def body10_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body10_1, 445, 2)) (some 441) ([2]) (some (2, body10_4, 445, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 40#64)

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (12, 44), (6, 46), (0, 48), (4, 50), (8, 52)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (6, 46), (0, 48), (4, 50), (8, 52)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_3

def body10_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_12, 445, 4)) (some 442) ([2, 4, 6]) (some (2, body10_14, 445, 5))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 8#64)))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8), (0, 0), (4, 4), (6, 6)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 8#64))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_49

def pass10 : WordLangProgHOL (BitVec 64) := body10_50
end InitECandidate.Proofs.SmallStages.Compact445
