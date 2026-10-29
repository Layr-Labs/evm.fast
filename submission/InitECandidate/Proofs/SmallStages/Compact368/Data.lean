import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact368
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 2))
            3
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) 22 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 21), (51, 37)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 47), (61, 51)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 69)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 69)]

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_21, 368, 2)) (some 362) ([2, 4]) (some (2, body2_33, 368, 3))

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
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 57), (103, 77), (107, 89)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93)]

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 99), (117, 103), (121, 107)]

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_12

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 125)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_24

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_65

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 129)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_59, 368, 4)) (some 366) ([2, 4]) (some (2, body2_70, 368, 5))

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_38

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 0), (153, 6)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 157)]

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 133)]

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_111

def pass2 : WordLangProgHOL (BitVec 64) := body2_112
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body3_6 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_5

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 21), (51, 37)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 47), (61, 51)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 69)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_14, 368, 2)) (some 362) ([2, 4]) (some (2, body3_22, 368, 3))

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
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 57), (103, 77), (107, 89)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 99), (117, 103), (121, 107)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 125)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_17

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_43, 368, 4)) (some 366) ([2, 4]) (some (2, body3_50, 368, 5))

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_27

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 0)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 157)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 133)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_91

def pass3 : WordLangProgHOL (BitVec 64) := body3_92
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body4_6 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_5

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 21), (51, 37)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 47), (61, 51)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 69)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_14, 368, 2)) (some 362) ([2, 4]) (some (2, body4_22, 368, 3))

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
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 57), (103, 77), (107, 89)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 99), (117, 103), (121, 107)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 125)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_17

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_43, 368, 4)) (some 366) ([2, 4]) (some (2, body4_50, 368, 5))

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_27

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 0)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 157)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 133)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_91

def pass4 : WordLangProgHOL (BitVec 64) := body4_92
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body5_6 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_5

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 21), (51, 37)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 47), (61, 51)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 69)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_14, 368, 2)) (some 362) ([2, 4]) (some (2, body5_22, 368, 3))

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
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 57), (103, 77), (107, 89)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 99), (117, 103), (121, 107)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 125)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_17

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_43, 368, 4)) (some 366) ([2, 4]) (some (2, body5_50, 368, 5))

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_27

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 0)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 157)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 133)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_91

def pass5 : WordLangProgHOL (BitVec 64) := body5_92
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0), (25, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 25)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body6_6 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_5

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 21), (51, 37)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 47), (61, 51)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 69)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_14, 368, 2)) (some 362) ([2, 4]) (some (2, body6_22, 368, 3))

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
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 57), (103, 77), (107, 89)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 99), (117, 103), (121, 107)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 125)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_17

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_43, 368, 4)) (some 366) ([2, 4]) (some (2, body6_50, 368, 5))

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_27

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 0)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 157)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 133)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_91

def pass6 : WordLangProgHOL (BitVec 64) := body6_92
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2), (21, 0), (25, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41), (47, 21), (51, 37)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2), (65, 2), (57, 47), (61, 51)]

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (69, 2), (57, 47), (61, 51)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_7

def body7_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_5, 368, 2)) (some 362) ([2, 4]) (some (2, body7_8, 368, 3))

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (99, 57), (103, 77), (107, 89)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 2), (125, 2), (113, 99), (117, 103), (121, 107)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (129, 2), (113, 99), (117, 103), (121, 107)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_7

def body7_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_16, 368, 4)) (some 366) ([2, 4]) (some (2, body7_18, 368, 5))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 133), (165, 0), (161, 0), (157, 0)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_61

def pass7 : WordLangProgHOL (BitVec 64) := body7_62
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 2), (21, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 208#64))

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 29)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 216#64))

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33), (4, 41), (47, 21), (51, 37)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2), (57, 47), (61, 51)]

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 47), (61, 51)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_7

def body8_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_5, 368, 2)) (some 362) ([2, 4]) (some (2, body8_8, 368, 3))

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 61)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 272#64))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 280#64))

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (99, 57), (103, 77), (107, 89)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 2), (113, 99), (117, 103), (121, 107)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (113, 99), (117, 103), (121, 107)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_7

def body8_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_16, 368, 4)) (some 366) ([2, 4]) (some (2, body8_18, 368, 5))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 121)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 264#64))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 33#64)

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 145), (4, 149)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 133), (165, 0)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 173 165 (Flapjack.WordRegImm.reg 169)))

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 117)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 173 (Flapjack.WordRegImm.reg 177)))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(185, 141)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 189 (Flapjack.WordLangAddr.addr 185 200#64))

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 181 (Flapjack.WordRegImm.reg 189)))

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 193 (Flapjack.WordRegImm.imm 655#64)))

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 197)]

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 113 [2]

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_61

def pass8 : WordLangProgHOL (BitVec 64) := body8_62
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 208#64))

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 216#64))

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46)]

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_5, 368, 2)) (some 362) ([2, 4]) (some (2, body10_8, 368, 3))

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 272#64))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 280#64))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 0)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (14, 44), (10, 46), (8, 48)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (10, 46), (8, 48)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_7

def body10_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_15, 368, 4)) (some 366) ([2, 4]) (some (2, body10_17, 368, 5))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 264#64))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 200#64))

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 655#64)))

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_59

def pass10 : WordLangProgHOL (BitVec 64) := body10_60
end InitECandidate.Proofs.SmallStages.Compact368
