import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact412
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln) 23
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 37)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 29), (55, 45), (59, 41)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 51), (69, 55), (73, 59)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 81)]

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_17, 412, 2)) (some 394) ([2, 4]) (some (2, body2_29, 412, 3))

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 1#64)

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(127, 65), (131, 69), (135, 73)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121)]

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_8

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 153)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 2)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 157)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_20

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 157)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body2_63, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body2_74, 412, 5))

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_34

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 145)]

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(199, 141), (203, 193), (207, 189)]

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185), (4, 189), (6, 193)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 199), (217, 203), (221, 207)]

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2), (229, 4)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_8

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 225)]

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_20

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 233)]

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_107, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body2_120, 412, 7))

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_34

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 1#64)

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_34

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 1#64)

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 289), (305, 277), (301, 285), (297, 269)]

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(313, 293)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(317, 289)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_153 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(309, 241), (305, 249), (301, 253), (297, 237)]

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 0#64)

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body2_160 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 0#64)

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_34

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 0#64)

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_34

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_177

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 221)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 217)]

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 213), (363, 353), (367, 349)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 349), (6, 353)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 359), (377, 363), (381, 367)]

def body2_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(385, 2), (389, 4)]

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_8

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 389)]

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 385)]

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_20

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 393)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_203, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body2_216, 412, 9))

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_34

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 1#64)

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_226 body2_34

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 1#64)

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_236

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_247

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 449), (465, 437), (461, 445), (457, 429)]

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 453)]

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(477, 449)]

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(469, 401), (465, 409), (461, 413), (457, 397)]

def body2_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_260

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body2_256 body2_263

def body2_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_265 body2_34

def body2_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 0#64)

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_266 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_34

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 381)]

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 373), (499, 377), (503, 489)]

def body2_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489)]

def body2_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 2)]

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_277 body2_8

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_278

def body2_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(529, 521)]

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_282

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_279 body2_284

def body2_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body2_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body2_288 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_20

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_286 body2_288

def body2_290 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_289

def body2_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)

def body2_292 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_291

def body2_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(533, 525)]

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_292 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_290 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_285, 412, 10)) (some 398) ([2]) (some (2, body2_296, 412, 11))

def body2_298 : WordLangProgHOL (BitVec 64) :=
.seq body2_275 body2_297

def body2_299 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_298

def body2_300 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_299

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_300 body2_34

def body2_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 517)]

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_301 body2_302

def body2_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 513)]

def body2_305 : WordLangProgHOL (BitVec 64) :=
.seq body2_303 body2_304

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(547, 509)]

def body2_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537), (4, 541)]

def body2_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 547)]

def body2_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2), (561, 4), (565, 6), (569, 8)]

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_309 body2_8

def body2_311 : WordLangProgHOL (BitVec 64) :=
.seq body2_308 body2_310

def body2_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 557)]

def body2_313 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_312

def body2_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(581, 565)]

def body2_315 : WordLangProgHOL (BitVec 64) :=
.seq body2_313 body2_314

def body2_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 561)]

def body2_317 : WordLangProgHOL (BitVec 64) :=
.seq body2_315 body2_316

def body2_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64)

def body2_319 : WordLangProgHOL (BitVec 64) :=
.seq body2_317 body2_318

def body2_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 569)]

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_319 body2_320

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
.seq body2_311 body2_322

def body2_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(573, 2)]

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 573)]

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_325 body2_20

def body2_327 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_326

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_308 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body2_330 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_329

def body2_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)

def body2_332 : WordLangProgHOL (BitVec 64) :=
.seq body2_330 body2_331

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 573)]

def body2_336 : WordLangProgHOL (BitVec 64) :=
.seq body2_334 body2_335

def body2_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body2_338 : WordLangProgHOL (BitVec 64) :=
.seq body2_336 body2_337

def body2_339 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_338

def body2_340 : WordLangProgHOL (BitVec 64) :=
.seq body2_328 body2_339

def body2_341 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_323, 412, 12)) (some 403) ([2, 4]) (some (2, body2_340, 412, 13))

def body2_342 : WordLangProgHOL (BitVec 64) :=
.seq body2_307 body2_341

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_306 body2_342

def body2_344 : WordLangProgHOL (BitVec 64) :=
.seq body2_305 body2_343

def body2_345 : WordLangProgHOL (BitVec 64) :=
.seq body2_344 body2_34

def body2_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 577)]

def body2_347 : WordLangProgHOL (BitVec 64) :=
.seq body2_345 body2_346

def body2_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 585)]

def body2_349 : WordLangProgHOL (BitVec 64) :=
.seq body2_347 body2_348

def body2_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 581)]

def body2_351 : WordLangProgHOL (BitVec 64) :=
.seq body2_349 body2_350

def body2_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 593)]

def body2_353 : WordLangProgHOL (BitVec 64) :=
.seq body2_351 body2_352

def body2_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 597), (4, 601), (6, 605), (8, 609)]

def body2_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_354 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
.seq body2_353 body2_356

def body2_358 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_357

def pass2 : WordLangProgHOL (BitVec 64) := body2_358
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 37)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 29), (55, 45), (59, 41)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 51), (69, 55), (73, 59)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_10, 412, 2)) (some 394) ([2, 4]) (some (2, body3_18, 412, 3))

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(127, 65), (131, 69), (135, 73)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 2)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 157)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_13

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body3_41, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body3_46, 412, 5))

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_23

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 145)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(199, 141), (203, 193), (207, 189)]

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185), (4, 189), (6, 193)]

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 199), (217, 203), (221, 207)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2), (229, 4)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 225)]

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_13

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body3_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_74, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body3_83, 412, 7))

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_23

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_103

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body3_112 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_23

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_23

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 221)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_128

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 217)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_130

def body3_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 213), (363, 353), (367, 349)]

def body3_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 349), (6, 353)]

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 359), (377, 363), (381, 367)]

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(385, 2), (389, 4)]

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 389)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 385)]

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_13

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body3_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body3_148 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_147

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_140, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body3_149, 412, 9))

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_152

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_23

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body3_158 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_157

def body3_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_159 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_165

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body3_169 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_168

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_169

def body3_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_171 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
.seq body3_170 body3_173

def body3_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body3_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_175 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
.seq body3_174 body3_177

def body3_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body3_178 body3_113

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_179 body3_23

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_158 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_23

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 381)]

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_183

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 373), (499, 377), (503, 489)]

def body3_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489)]

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body3_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_189 body3_13

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_187 body3_191

def body3_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_187, 412, 10)) (some 398) ([2]) (some (2, body3_192, 412, 11))

def body3_194 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_193

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_185 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
.seq body3_196 body3_23

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 517)]

def body3_199 : WordLangProgHOL (BitVec 64) :=
.seq body3_197 body3_198

def body3_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 513)]

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_199 body3_200

def body3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(547, 509)]

def body3_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537), (4, 541)]

def body3_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 547)]

def body3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2), (561, 4), (565, 6), (569, 8)]

def body3_206 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_205

def body3_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 557)]

def body3_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(581, 565)]

def body3_209 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_208

def body3_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 561)]

def body3_211 : WordLangProgHOL (BitVec 64) :=
.seq body3_209 body3_210

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 569)]

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_212

def body3_214 : WordLangProgHOL (BitVec 64) :=
.seq body3_206 body3_213

def body3_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(573, 2)]

def body3_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 573)]

def body3_217 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_13

def body3_218 : WordLangProgHOL (BitVec 64) :=
.seq body3_215 body3_217

def body3_219 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_218

def body3_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)

def body3_222 : WordLangProgHOL (BitVec 64) :=
.seq body3_220 body3_221

def body3_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)

def body3_224 : WordLangProgHOL (BitVec 64) :=
.seq body3_222 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body3_226 : WordLangProgHOL (BitVec 64) :=
.seq body3_224 body3_225

def body3_227 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_226

def body3_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_214, 412, 12)) (some 403) ([2, 4]) (some (2, body3_227, 412, 13))

def body3_229 : WordLangProgHOL (BitVec 64) :=
.seq body3_203 body3_228

def body3_230 : WordLangProgHOL (BitVec 64) :=
.seq body3_202 body3_229

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_201 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
.seq body3_231 body3_23

def body3_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 577)]

def body3_234 : WordLangProgHOL (BitVec 64) :=
.seq body3_232 body3_233

def body3_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 585)]

def body3_236 : WordLangProgHOL (BitVec 64) :=
.seq body3_234 body3_235

def body3_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 581)]

def body3_238 : WordLangProgHOL (BitVec 64) :=
.seq body3_236 body3_237

def body3_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 593)]

def body3_240 : WordLangProgHOL (BitVec 64) :=
.seq body3_238 body3_239

def body3_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 597), (4, 601), (6, 605), (8, 609)]

def body3_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body3_243 : WordLangProgHOL (BitVec 64) :=
.seq body3_241 body3_242

def body3_244 : WordLangProgHOL (BitVec 64) :=
.seq body3_240 body3_243

def body3_245 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_244

def pass3 : WordLangProgHOL (BitVec 64) := body3_245
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 37)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 29), (55, 45), (59, 41)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 51), (69, 55), (73, 59)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_10, 412, 2)) (some 394) ([2, 4]) (some (2, body4_18, 412, 3))

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(127, 65), (131, 69), (135, 73)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 2)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 157)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_13

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body4_41, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body4_46, 412, 5))

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_23

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 145)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(199, 141), (203, 193), (207, 189)]

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185), (4, 189), (6, 193)]

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 199), (217, 203), (221, 207)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2), (229, 4)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 225)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_13

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body4_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_74, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body4_83, 412, 7))

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_23

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_103

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body4_112 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_23

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_23

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 221)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_128

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 217)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_130

def body4_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 213), (363, 353), (367, 349)]

def body4_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 349), (6, 353)]

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 359), (377, 363), (381, 367)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(385, 2), (389, 4)]

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 389)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 385)]

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_13

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body4_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body4_148 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_147

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_140, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body4_149, 412, 9))

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_152

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_23

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body4_158 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_157

def body4_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_159 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_165

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body4_169 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_168

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_169

def body4_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_171 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
.seq body4_170 body4_173

def body4_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body4_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_175 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
.seq body4_174 body4_177

def body4_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body4_178 body4_113

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_179 body4_23

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_158 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_23

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 381)]

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_183

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 373), (499, 377), (503, 489)]

def body4_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489)]

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body4_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_189 body4_13

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_187 body4_191

def body4_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_187, 412, 10)) (some 398) ([2]) (some (2, body4_192, 412, 11))

def body4_194 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_193

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_185 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
.seq body4_196 body4_23

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 517)]

def body4_199 : WordLangProgHOL (BitVec 64) :=
.seq body4_197 body4_198

def body4_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 513)]

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_199 body4_200

def body4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(547, 509)]

def body4_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537), (4, 541)]

def body4_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 547)]

def body4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2), (561, 4), (565, 6), (569, 8)]

def body4_206 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_205

def body4_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 557)]

def body4_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(581, 565)]

def body4_209 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_208

def body4_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 561)]

def body4_211 : WordLangProgHOL (BitVec 64) :=
.seq body4_209 body4_210

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 569)]

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_212

def body4_214 : WordLangProgHOL (BitVec 64) :=
.seq body4_206 body4_213

def body4_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(573, 2)]

def body4_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 573)]

def body4_217 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_13

def body4_218 : WordLangProgHOL (BitVec 64) :=
.seq body4_215 body4_217

def body4_219 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_218

def body4_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)

def body4_222 : WordLangProgHOL (BitVec 64) :=
.seq body4_220 body4_221

def body4_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)

def body4_224 : WordLangProgHOL (BitVec 64) :=
.seq body4_222 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body4_226 : WordLangProgHOL (BitVec 64) :=
.seq body4_224 body4_225

def body4_227 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_226

def body4_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_214, 412, 12)) (some 403) ([2, 4]) (some (2, body4_227, 412, 13))

def body4_229 : WordLangProgHOL (BitVec 64) :=
.seq body4_203 body4_228

def body4_230 : WordLangProgHOL (BitVec 64) :=
.seq body4_202 body4_229

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_201 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
.seq body4_231 body4_23

def body4_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 577)]

def body4_234 : WordLangProgHOL (BitVec 64) :=
.seq body4_232 body4_233

def body4_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 585)]

def body4_236 : WordLangProgHOL (BitVec 64) :=
.seq body4_234 body4_235

def body4_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 581)]

def body4_238 : WordLangProgHOL (BitVec 64) :=
.seq body4_236 body4_237

def body4_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 593)]

def body4_240 : WordLangProgHOL (BitVec 64) :=
.seq body4_238 body4_239

def body4_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 597), (4, 601), (6, 605), (8, 609)]

def body4_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body4_243 : WordLangProgHOL (BitVec 64) :=
.seq body4_241 body4_242

def body4_244 : WordLangProgHOL (BitVec 64) :=
.seq body4_240 body4_243

def body4_245 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_244

def pass4 : WordLangProgHOL (BitVec 64) := body4_245
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 37)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 29), (55, 45), (59, 41)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 51), (69, 55), (73, 59)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_10, 412, 2)) (some 394) ([2, 4]) (some (2, body5_18, 412, 3))

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(127, 65), (131, 69), (135, 73)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 2)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 157)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_13

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body5_41, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body5_46, 412, 5))

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_23

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 145)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(199, 141), (203, 193), (207, 189)]

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185), (4, 189), (6, 193)]

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 199), (217, 203), (221, 207)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2), (229, 4)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 225)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_13

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body5_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_74, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body5_83, 412, 7))

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_23

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_103

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body5_112 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_23

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_23

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 221)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_128

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 217)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_130

def body5_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 213), (363, 353), (367, 349)]

def body5_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 349), (6, 353)]

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 359), (377, 363), (381, 367)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(385, 2), (389, 4)]

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 389)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 385)]

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_13

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body5_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body5_148 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_147

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_140, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body5_149, 412, 9))

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_152

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_23

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body5_158 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_157

def body5_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body5_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_159 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_165

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body5_169 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_168

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_169

def body5_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_171 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
.seq body5_170 body5_173

def body5_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body5_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_175 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
.seq body5_174 body5_177

def body5_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body5_178 body5_113

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_179 body5_23

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_158 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_23

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 381)]

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_183

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 373), (499, 377), (503, 489)]

def body5_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489)]

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body5_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_189 body5_13

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_190

def body5_192 : WordLangProgHOL (BitVec 64) :=
.seq body5_187 body5_191

def body5_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_187, 412, 10)) (some 398) ([2]) (some (2, body5_192, 412, 11))

def body5_194 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_193

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_185 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
.seq body5_196 body5_23

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 517)]

def body5_199 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_198

def body5_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 513)]

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_199 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(547, 509)]

def body5_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537), (4, 541)]

def body5_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 547)]

def body5_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2), (561, 4), (565, 6), (569, 8)]

def body5_206 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_205

def body5_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 557)]

def body5_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(581, 565)]

def body5_209 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_208

def body5_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 561)]

def body5_211 : WordLangProgHOL (BitVec 64) :=
.seq body5_209 body5_210

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 569)]

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
.seq body5_206 body5_213

def body5_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(573, 2)]

def body5_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 573)]

def body5_217 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_13

def body5_218 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_217

def body5_219 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_218

def body5_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)

def body5_222 : WordLangProgHOL (BitVec 64) :=
.seq body5_220 body5_221

def body5_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)

def body5_224 : WordLangProgHOL (BitVec 64) :=
.seq body5_222 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body5_226 : WordLangProgHOL (BitVec 64) :=
.seq body5_224 body5_225

def body5_227 : WordLangProgHOL (BitVec 64) :=
.seq body5_219 body5_226

def body5_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_214, 412, 12)) (some 403) ([2, 4]) (some (2, body5_227, 412, 13))

def body5_229 : WordLangProgHOL (BitVec 64) :=
.seq body5_203 body5_228

def body5_230 : WordLangProgHOL (BitVec 64) :=
.seq body5_202 body5_229

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
.seq body5_231 body5_23

def body5_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 577)]

def body5_234 : WordLangProgHOL (BitVec 64) :=
.seq body5_232 body5_233

def body5_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 585)]

def body5_236 : WordLangProgHOL (BitVec 64) :=
.seq body5_234 body5_235

def body5_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 581)]

def body5_238 : WordLangProgHOL (BitVec 64) :=
.seq body5_236 body5_237

def body5_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 593)]

def body5_240 : WordLangProgHOL (BitVec 64) :=
.seq body5_238 body5_239

def body5_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 597), (4, 601), (6, 605), (8, 609)]

def body5_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body5_243 : WordLangProgHOL (BitVec 64) :=
.seq body5_241 body5_242

def body5_244 : WordLangProgHOL (BitVec 64) :=
.seq body5_240 body5_243

def body5_245 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_244

def pass5 : WordLangProgHOL (BitVec 64) := body5_245
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2), (37, 4)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 37)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 29), (55, 45), (59, 41)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 51), (69, 55), (73, 59)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_10, 412, 2)) (some 394) ([2, 4]) (some (2, body6_18, 412, 3))

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(127, 65), (131, 69), (135, 73)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 2)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 157)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_13

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body6_41, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body6_46, 412, 5))

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_23

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 149)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 145)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(199, 141), (203, 193), (207, 189)]

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185), (4, 189), (6, 193)]

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 199), (217, 203), (221, 207)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 2), (229, 4)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 225)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_13

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body6_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_74, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body6_83, 412, 7))

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_23

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_103

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body6_112 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_23

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_23

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 221)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_128

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 217)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_130

def body6_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(359, 213), (363, 353), (367, 349)]

def body6_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 349), (6, 353)]

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 359), (377, 363), (381, 367)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(385, 2), (389, 4)]

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 389)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 385)]

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(393, 2)]

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_13

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body6_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body6_148 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_147

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_140, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body6_149, 412, 9))

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_152

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_23

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body6_158 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_157

def body6_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body6_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_159 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_165

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body6_169 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_168

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_169

def body6_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body6_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_171 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
.seq body6_170 body6_173

def body6_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body6_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_175 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
.seq body6_174 body6_177

def body6_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body6_178 body6_113

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_179 body6_23

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_158 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_23

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 381)]

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_183

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 373), (499, 377), (503, 489)]

def body6_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 489)]

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body6_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_189 body6_13

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_190

def body6_192 : WordLangProgHOL (BitVec 64) :=
.seq body6_187 body6_191

def body6_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_187, 412, 10)) (some 398) ([2]) (some (2, body6_192, 412, 11))

def body6_194 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_193

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_185 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
.seq body6_196 body6_23

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 517)]

def body6_199 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_198

def body6_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 513)]

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_199 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(547, 509)]

def body6_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 537), (4, 541)]

def body6_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 547)]

def body6_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(557, 2), (561, 4), (565, 6), (569, 8)]

def body6_206 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_205

def body6_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 557)]

def body6_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(581, 565)]

def body6_209 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_208

def body6_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 561)]

def body6_211 : WordLangProgHOL (BitVec 64) :=
.seq body6_209 body6_210

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 569)]

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
.seq body6_206 body6_213

def body6_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(573, 2)]

def body6_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 573)]

def body6_217 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_13

def body6_218 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_217

def body6_219 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_218

def body6_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body6_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)

def body6_222 : WordLangProgHOL (BitVec 64) :=
.seq body6_220 body6_221

def body6_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)

def body6_224 : WordLangProgHOL (BitVec 64) :=
.seq body6_222 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body6_226 : WordLangProgHOL (BitVec 64) :=
.seq body6_224 body6_225

def body6_227 : WordLangProgHOL (BitVec 64) :=
.seq body6_219 body6_226

def body6_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_214, 412, 12)) (some 403) ([2, 4]) (some (2, body6_227, 412, 13))

def body6_229 : WordLangProgHOL (BitVec 64) :=
.seq body6_203 body6_228

def body6_230 : WordLangProgHOL (BitVec 64) :=
.seq body6_202 body6_229

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
.seq body6_231 body6_23

def body6_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 577)]

def body6_234 : WordLangProgHOL (BitVec 64) :=
.seq body6_232 body6_233

def body6_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 585)]

def body6_236 : WordLangProgHOL (BitVec 64) :=
.seq body6_234 body6_235

def body6_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 581)]

def body6_238 : WordLangProgHOL (BitVec 64) :=
.seq body6_236 body6_237

def body6_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 593)]

def body6_240 : WordLangProgHOL (BitVec 64) :=
.seq body6_238 body6_239

def body6_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 597), (4, 601), (6, 605), (8, 609)]

def body6_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body6_243 : WordLangProgHOL (BitVec 64) :=
.seq body6_241 body6_242

def body6_244 : WordLangProgHOL (BitVec 64) :=
.seq body6_240 body6_243

def body6_245 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_244

def pass6 : WordLangProgHOL (BitVec 64) := body6_245
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (51, 0), (55, 4), (59, 2), (45, 4), (41, 2), (29, 0), (33, 2), (37, 4)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2), (77, 2), (65, 51), (69, 55), (73, 59)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (81, 2), (65, 51), (69, 55), (73, 59)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_1, 412, 2)) (some 394) ([2, 4]) (some (2, body7_4, 412, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121), (127, 65), (131, 69), (135, 73)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (157, 2), (141, 127), (145, 131), (149, 135)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_3

def body7_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body7_15, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body7_17, 412, 5))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 185), (4, 149), (6, 145), (199, 141), (203, 145), (207, 149), (193, 145), (189, 149)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 2), (241, 4), (225, 2), (229, 4), (213, 199), (217, 203), (221, 207)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (233, 2), (213, 199), (217, 203), (221, 207)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_3

def body7_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_25, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body7_27, 412, 7))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body7_50 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 345), (4, 221), (6, 217), (359, 213), (363, 217), (367, 221), (353, 217), (349, 221)]

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2), (401, 4), (385, 2), (389, 4), (373, 359), (377, 363), (381, 367)]

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (393, 2), (373, 359), (377, 363), (381, 367)]

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_3

def body7_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_59, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body7_61, 412, 9))

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_69 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body7_84 body7_51

def body7_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 381), (495, 373), (499, 377), (503, 381), (489, 381)]

def body7_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body7_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (525, 2), (509, 495), (513, 499), (517, 503)]

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_88 body7_3

def body7_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_87, 412, 10)) (some 398) ([2]) (some (2, body7_89, 412, 11))

def body7_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517), (4, 513), (547, 509), (541, 513), (537, 517)]

def body7_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(593, 8), (585, 4), (581, 6), (577, 2), (557, 2), (561, 4), (565, 6), (569, 8), (553, 547)]

def body7_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (573, 2), (553, 547)]

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_93 body7_3

def body7_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_92, 412, 12)) (some 403) ([2, 4]) (some (2, body7_94, 412, 13))

def body7_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 577), (4, 585), (6, 581), (8, 593), (609, 593), (605, 581), (601, 585), (597, 577)]

def body7_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_96 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_95 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_91 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_90 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_86 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_85 body7_106

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_107

def body7_109 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_108

def body7_110 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_109

def body7_111 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_110

def body7_112 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_111

def body7_113 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_112

def body7_114 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_113

def body7_115 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_114

def body7_116 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_115

def body7_117 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_116

def body7_118 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_117

def body7_119 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_118

def body7_120 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_119

def body7_121 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_120

def body7_122 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_121

def body7_123 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_122

def body7_124 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_123

def body7_125 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_124

def body7_126 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_125

def body7_127 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_126

def body7_128 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_127

def body7_129 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_128

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_129

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_131

def body7_133 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_132

def body7_134 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_133

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_134

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_135

def body7_137 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_136

def body7_138 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_137

def body7_139 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_138

def body7_140 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_139

def body7_141 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_140

def body7_142 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_141

def body7_143 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_142

def pass7 : WordLangProgHOL (BitVec 64) := body7_143
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (51, 0), (55, 4), (59, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2), (65, 51), (69, 55), (73, 59)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (65, 51), (69, 55), (73, 59)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_1, 412, 2)) (some 394) ([2, 4]) (some (2, body8_4, 412, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551432#64))

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 24#64))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113), (6, 121), (127, 65), (131, 69), (135, 73)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 127), (145, 131), (149, 135)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (141, 127), (145, 131), (149, 135)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_3

def body8_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body8_15, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body8_17, 412, 5))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551432#64))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 32#64))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 185), (4, 149), (6, 145), (199, 141), (203, 145), (207, 149)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 2), (241, 4), (213, 199), (217, 203), (221, 207)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (213, 199), (217, 203), (221, 207)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_3

def body8_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_25, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body8_27, 412, 7))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 245)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 0#64))

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 265)]

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 273)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 285 (Flapjack.WordLangAddr.addr 281 16#64))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 281)]

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 293 (Flapjack.WordLangAddr.addr 289 24#64))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 269), (4, 277), (6, 285), (8, 293)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 213 [2, 4, 6, 8]

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 249 (Flapjack.WordRegImm.reg 253) body8_50 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 329 Flapjack.WordStore.heapLength

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 333 329 (Flapjack.WordRegImm.imm 1#64)))

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 337 333

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 18446744073709551440#64))

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 32#64))

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345), (4, 221), (6, 217), (359, 213), (363, 217), (367, 221)]

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2), (401, 4), (373, 359), (377, 363), (381, 367)]

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (373, 359), (377, 363), (381, 367)]

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_3

def body8_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_59, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body8_61, 412, 9))

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(409, 405)]

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 401)]

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 0#64))

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 425)]

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 8#64))

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 433)]

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 16#64))

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 441)]

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 453 (Flapjack.WordLangAddr.addr 449 24#64))

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 429), (4, 437), (6, 445), (8, 453)]

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 373 [2, 4, 6, 8]

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_69 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 409 (Flapjack.WordRegImm.reg 413) body8_84 body8_51

def body8_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 381), (495, 373), (499, 377), (503, 381)]

def body8_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 495), (513, 499), (517, 503)]

def body8_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (509, 495), (513, 499), (517, 503)]

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_88 body8_3

def body8_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_87, 412, 10)) (some 398) ([2]) (some (2, body8_89, 412, 11))

def body8_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517), (4, 513), (547, 509)]

def body8_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 8), (585, 4), (581, 6), (577, 2), (553, 547)]

def body8_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (553, 547)]

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_93 body8_3

def body8_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_92, 412, 12)) (some 403) ([2, 4]) (some (2, body8_94, 412, 13))

def body8_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 577), (4, 585), (6, 581), (8, 593)]

def body8_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 553 [2, 4, 6, 8]

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_96 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_95 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_91 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_90 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_86 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_85 body8_106

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_64 body8_107

def body8_109 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_108

def body8_110 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_109

def body8_111 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_110

def body8_112 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_111

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_112

def body8_114 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_113

def body8_115 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_114

def body8_116 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_115

def body8_117 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_116

def body8_118 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_117

def body8_119 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_118

def body8_120 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_119

def body8_121 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_120

def body8_122 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_121

def body8_123 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_122

def body8_124 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_123

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_124

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_125

def body8_127 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_126

def body8_128 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_127

def body8_129 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_128

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_129

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_131

def body8_133 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_132

def body8_134 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_133

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_134

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_135

def body8_137 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_136

def body8_138 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_137

def body8_139 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_138

def body8_140 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_139

def body8_141 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_140

def body8_142 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_141

def body8_143 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_142

def pass8 : WordLangProgHOL (BitVec 64) := body8_143
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48)]

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

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
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_1, 412, 2)) (some 394) ([2, 4]) (some (2, body10_4, 412, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_3

def body10_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_15, 412, 4)) (some 190) ([2, 4, 6]) (some (2, body10_17, 412, 5))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 4)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (10, 44), (12, 46), (14, 48)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (12, 46), (14, 48)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_3

def body10_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_21, 412, 6)) (some 411) ([2, 4, 6]) (some (2, body10_23, 412, 7))

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_42 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 14), (6, 12), (44, 10), (46, 12), (48, 14)]

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (12, 44), (46, 46), (10, 48)]

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_3

def body10_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_47, 412, 8)) (some 411) ([2, 4, 6]) (some (2, body10_49, 412, 9))

def body10_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_61 body10_43

def body10_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def body10_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def body10_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_3

def body10_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_64, 412, 10)) (some 398) ([2]) (some (2, body10_66, 412, 11))

def body10_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def body10_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (6, 6), (10, 2), (0, 44)]

def body10_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_70 body10_3

def body10_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_69, 412, 12)) (some 403) ([2, 4]) (some (2, body10_71, 412, 13))

def body10_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def body10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_73 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_72 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_68 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_67 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_62 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_102

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_103

def body10_105 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_104

def body10_106 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_105

def body10_107 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_106

def body10_108 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_107

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_108

def body10_110 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_109

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_110

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_112

def body10_114 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_113

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_117

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_119

def pass10 : WordLangProgHOL (BitVec 64) := body10_120
end InitECandidate.Proofs.SmallStages.Compact412
