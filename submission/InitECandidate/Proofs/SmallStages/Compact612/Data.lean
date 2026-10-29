import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source612
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact612
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                3 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                4
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 5
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln 23
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 29)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(39, 25), (43, 33)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 57)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 61)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_15, 612, 2)) (some 611) ([2]) (some (2, body2_27, 612, 3))

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
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 101 Flapjack.WordStore.heapLength

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 105 101 (Flapjack.WordRegImm.imm 1#64)))

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 109 105

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 121)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89)]

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 133 Flapjack.WordStore.heapLength

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 137 133 (Flapjack.WordRegImm.imm 1#64)))

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 141 137

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 153 Flapjack.WordStore.heapLength

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 157 153 (Flapjack.WordRegImm.imm 1#64)))

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 161 157

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 165 (Flapjack.WordLangAddr.addr 161 18446744073709551360#64))

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 1#64)

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_32

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 1#64)

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551360#64))

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 192#64))

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 197), (221, 201), (217, 181), (213, 177)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_6

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_32

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 0#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 165), (221, 173), (217, 209), (213, 205)]

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_6

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body2_104 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_32

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 229 Flapjack.WordStore.heapLength

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 233 229 (Flapjack.WordRegImm.imm 1#64)))

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 237 233

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 241 (Flapjack.WordLangAddr.addr 237 18446744073709551360#64))

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 221)]

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 253 Flapjack.WordStore.heapLength

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 1#64)))

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 261 257

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 265 (Flapjack.WordLangAddr.addr 261 18446744073709551360#64))

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245)]

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body2_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 341 Flapjack.WordStore.heapLength

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 345 341 (Flapjack.WordRegImm.imm 1#64)))

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 349 345

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 361 Flapjack.WordStore.heapLength

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 365 361 (Flapjack.WordRegImm.imm 1#64)))

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 369 365

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 373 (Flapjack.WordLangAddr.addr 369 18446744073709551360#64))

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_198 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_200 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_218 body2_32

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_220

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 437)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449)]

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 461 1#64)

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_32

def body2_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 1#64)

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_226 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 501)]

def body2_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(565, 2)]

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_6

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(573, 565)]

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_254 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_256

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 2)]

def body2_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 569)]

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_18

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64)

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 569)]

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_265 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body2_258, 612, 4)) (some 547) ([2, 4]) (some (2, body2_269, 612, 5))

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_248 body2_270

def body2_272 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_271

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_32

def body2_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body2_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body2_277 : WordLangProgHOL (BitVec 64) :=
.seq body2_275 body2_276

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_277

def body2_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 585)]

def body2_280 : WordLangProgHOL (BitVec 64) :=
.seq body2_278 body2_279

def body2_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 537), (429, 541), (433, 545), (437, 589), (441, 553), (445, 557), (449, 561)]

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_282

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_280 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(629, 537), (625, 541), (621, 545), (617, 577), (613, 589), (609, 553), (605, 557), (601, 561)]

def body2_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 0#64)

def body2_287 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_286

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 0#64)

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_288

def body2_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(641, 589)]

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_289 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(645, 581)]

def body2_293 : WordLangProgHOL (BitVec 64) :=
.seq body2_291 body2_292

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_285 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_284 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body2_297 : WordLangProgHOL (BitVec 64) :=
.seq body2_296 body2_32

def body2_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body2_299 : WordLangProgHOL (BitVec 64) :=
.seq body2_297 body2_298

def body2_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_300

def body2_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(629, 425), (625, 429), (621, 433), (617, 593), (613, 453), (609, 441), (605, 445), (601, 457)]

def body2_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(633, 457)]

def body2_304 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_303

def body2_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(637, 597)]

def body2_306 : WordLangProgHOL (BitVec 64) :=
.seq body2_304 body2_305

def body2_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 641 0#64)

def body2_308 : WordLangProgHOL (BitVec 64) :=
.seq body2_306 body2_307

def body2_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_308 body2_309

def body2_311 : WordLangProgHOL (BitVec 64) :=
.seq body2_302 body2_310

def body2_312 : WordLangProgHOL (BitVec 64) :=
.seq body2_301 body2_311

def body2_313 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body2_295 body2_312

def body2_314 : WordLangProgHOL (BitVec 64) :=
.seq body2_224 body2_313

def body2_315 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_32

def body2_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body2_317 : WordLangProgHOL (BitVec 64) :=
.seq body2_315 body2_316

def body2_318 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body2_317 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body2_319 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_318

def body2_320 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_319

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_320 body2_32

def body2_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body2_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body2_324 : WordLangProgHOL (BitVec 64) :=
.seq body2_322 body2_323

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_325

def body2_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_326 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body2_330 : WordLangProgHOL (BitVec 64) :=
.seq body2_328 body2_329

def body2_331 : WordLangProgHOL (BitVec 64) :=
.seq body2_321 body2_330

def body2_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 677 Flapjack.WordStore.heapLength

def body2_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 681 677 (Flapjack.WordRegImm.imm 1#64)))

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_335 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 685 681

def body2_339 : WordLangProgHOL (BitVec 64) :=
.seq body2_337 body2_338

def body2_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 689 (Flapjack.WordLangAddr.addr 685 18446744073709551360#64))

def body2_341 : WordLangProgHOL (BitVec 64) :=
.seq body2_339 body2_340

def body2_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_341 body2_342

def body2_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body2_345 : WordLangProgHOL (BitVec 64) :=
.seq body2_343 body2_344

def body2_346 : WordLangProgHOL (BitVec 64) :=
.seq body2_334 body2_345

def body2_347 : WordLangProgHOL (BitVec 64) :=
.seq body2_331 body2_346

def body2_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body2_349 : WordLangProgHOL (BitVec 64) :=
.seq body2_347 body2_348

def body2_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665)]

def body2_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body2_352 : WordLangProgHOL (BitVec 64) :=
.seq body2_350 body2_351

def body2_353 : WordLangProgHOL (BitVec 64) :=
.seq body2_349 body2_352

def body2_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 709 Flapjack.WordStore.heapLength

def body2_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 713 709 (Flapjack.WordRegImm.imm 1#64)))

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_354 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 717 713

def body2_358 : WordLangProgHOL (BitVec 64) :=
.seq body2_356 body2_357

def body2_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body2_360 : WordLangProgHOL (BitVec 64) :=
.seq body2_358 body2_359

def body2_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body2_362 : WordLangProgHOL (BitVec 64) :=
.seq body2_360 body2_361

def body2_363 : WordLangProgHOL (BitVec 64) :=
.seq body2_353 body2_362

def body2_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body2_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body2_366 : WordLangProgHOL (BitVec 64) :=
.seq body2_364 body2_365

def body2_367 : WordLangProgHOL (BitVec 64) :=
.seq body2_363 body2_366

def body2_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(739, 425)]

def body2_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733)]

def body2_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body2_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 2)]

def body2_372 : WordLangProgHOL (BitVec 64) :=
.seq body2_371 body2_6

def body2_373 : WordLangProgHOL (BitVec 64) :=
.seq body2_370 body2_372

def body2_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(757, 749)]

def body2_375 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_374

def body2_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64)

def body2_377 : WordLangProgHOL (BitVec 64) :=
.seq body2_375 body2_376

def body2_378 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_377

def body2_379 : WordLangProgHOL (BitVec 64) :=
.seq body2_373 body2_378

def body2_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 2)]

def body2_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 753)]

def body2_382 : WordLangProgHOL (BitVec 64) :=
.seq body2_381 body2_18

def body2_383 : WordLangProgHOL (BitVec 64) :=
.seq body2_380 body2_382

def body2_384 : WordLangProgHOL (BitVec 64) :=
.seq body2_370 body2_383

def body2_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 0#64)

def body2_386 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_385

def body2_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 753)]

def body2_388 : WordLangProgHOL (BitVec 64) :=
.seq body2_386 body2_387

def body2_389 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_388

def body2_390 : WordLangProgHOL (BitVec 64) :=
.seq body2_384 body2_389

def body2_391 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_379, 612, 6)) (some 434) ([2, 4]) (some (2, body2_390, 612, 7))

def body2_392 : WordLangProgHOL (BitVec 64) :=
.seq body2_369 body2_391

def body2_393 : WordLangProgHOL (BitVec 64) :=
.seq body2_368 body2_392

def body2_394 : WordLangProgHOL (BitVec 64) :=
.seq body2_367 body2_393

def body2_395 : WordLangProgHOL (BitVec 64) :=
.seq body2_394 body2_32

def body2_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_395 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body2_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body2_400 : WordLangProgHOL (BitVec 64) :=
.seq body2_398 body2_399

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_397 body2_400

def body2_402 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_401

def pass2 : WordLangProgHOL (BitVec 64) := body2_402
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 29)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(39, 25), (43, 33)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_4, 612, 2)) (some 611) ([2]) (some (2, body3_10, 612, 3))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 101 Flapjack.WordStore.heapLength

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 105 101 (Flapjack.WordRegImm.imm 1#64)))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 109 105

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 121)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 133 Flapjack.WordStore.heapLength

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 137 133 (Flapjack.WordRegImm.imm 1#64)))

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 141 137

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 153 Flapjack.WordStore.heapLength

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 157 153 (Flapjack.WordRegImm.imm 1#64)))

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 161 157

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 165 (Flapjack.WordLangAddr.addr 161 18446744073709551360#64))

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551360#64))

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 192#64))

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 201)]

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 173)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body3_82 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_15

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 229 Flapjack.WordStore.heapLength

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 233 229 (Flapjack.WordRegImm.imm 1#64)))

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 237 233

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 241 (Flapjack.WordLangAddr.addr 237 18446744073709551360#64))

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 221)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 253 Flapjack.WordStore.heapLength

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 257 253 (Flapjack.WordRegImm.imm 1#64)))

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 261 257

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 265 (Flapjack.WordLangAddr.addr 261 18446744073709551360#64))

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245)]

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_142

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 341 Flapjack.WordStore.heapLength

def body3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 345 341 (Flapjack.WordRegImm.imm 1#64)))

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 349 345

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_153

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 361 Flapjack.WordStore.heapLength

def body3_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 365 361 (Flapjack.WordRegImm.imm 1#64)))

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_158 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 369 365

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_160 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 373 (Flapjack.WordLangAddr.addr 369 18446744073709551360#64))

def body3_164 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_163

def body3_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body3_166 : WordLangProgHOL (BitVec 64) :=
.seq body3_164 body3_165

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body3_169 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_168

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_169

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_170

def body3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_171 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body3_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_174 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_173 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_178 body3_179

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_183

def body3_185 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_184

def body3_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
.seq body3_185 body3_188

def body3_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_189 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_191 body3_15

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 437)]

def body3_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449)]

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_194 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body3_199 : WordLangProgHOL (BitVec 64) :=
.seq body3_197 body3_198

def body3_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_199 body3_200

def body3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body3_203 : WordLangProgHOL (BitVec 64) :=
.seq body3_201 body3_202

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body3_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body3_207 : WordLangProgHOL (BitVec 64) :=
.seq body3_205 body3_206

def body3_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body3_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body3_210 : WordLangProgHOL (BitVec 64) :=
.seq body3_208 body3_209

def body3_211 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_210

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_212

def body3_214 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_213

def body3_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body3_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 501)]

def body3_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body3_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 2)]

def body3_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 569)]

def body3_220 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_7

def body3_221 : WordLangProgHOL (BitVec 64) :=
.seq body3_218 body3_220

def body3_222 : WordLangProgHOL (BitVec 64) :=
.seq body3_217 body3_221

def body3_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body3_217, 612, 4)) (some 547) ([2, 4]) (some (2, body3_222, 612, 5))

def body3_224 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
.seq body3_215 body3_224

def body3_226 : WordLangProgHOL (BitVec 64) :=
.seq body3_214 body3_225

def body3_227 : WordLangProgHOL (BitVec 64) :=
.seq body3_226 body3_15

def body3_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body3_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body3_230 : WordLangProgHOL (BitVec 64) :=
.seq body3_228 body3_229

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_227 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 585)]

def body3_233 : WordLangProgHOL (BitVec 64) :=
.seq body3_231 body3_232

def body3_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 537), (429, 541), (433, 545), (437, 589), (441, 553), (445, 557), (449, 561)]

def body3_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body3_236 : WordLangProgHOL (BitVec 64) :=
.seq body3_234 body3_235

def body3_237 : WordLangProgHOL (BitVec 64) :=
.seq body3_233 body3_236

def body3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 537), (625, 541), (621, 545), (613, 589), (609, 553), (605, 557), (601, 561)]

def body3_239 : WordLangProgHOL (BitVec 64) :=
.seq body3_237 body3_238

def body3_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body3_241 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_240

def body3_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 425), (625, 429), (621, 433), (613, 453), (609, 441), (605, 445), (601, 457)]

def body3_243 : WordLangProgHOL (BitVec 64) :=
.seq body3_241 body3_242

def body3_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body3_239 body3_243

def body3_245 : WordLangProgHOL (BitVec 64) :=
.seq body3_196 body3_244

def body3_246 : WordLangProgHOL (BitVec 64) :=
.seq body3_245 body3_15

def body3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body3_248 : WordLangProgHOL (BitVec 64) :=
.seq body3_246 body3_247

def body3_249 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body3_248 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body3_250 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_249

def body3_251 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_250

def body3_252 : WordLangProgHOL (BitVec 64) :=
.seq body3_251 body3_15

def body3_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body3_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body3_255 : WordLangProgHOL (BitVec 64) :=
.seq body3_253 body3_254

def body3_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body3_257 : WordLangProgHOL (BitVec 64) :=
.seq body3_255 body3_256

def body3_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body3_259 : WordLangProgHOL (BitVec 64) :=
.seq body3_257 body3_258

def body3_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body3_261 : WordLangProgHOL (BitVec 64) :=
.seq body3_259 body3_260

def body3_262 : WordLangProgHOL (BitVec 64) :=
.seq body3_252 body3_261

def body3_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body3_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body3_265 : WordLangProgHOL (BitVec 64) :=
.seq body3_263 body3_264

def body3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 677 Flapjack.WordStore.heapLength

def body3_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 681 677 (Flapjack.WordRegImm.imm 1#64)))

def body3_268 : WordLangProgHOL (BitVec 64) :=
.seq body3_266 body3_267

def body3_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 685 681

def body3_270 : WordLangProgHOL (BitVec 64) :=
.seq body3_268 body3_269

def body3_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 689 (Flapjack.WordLangAddr.addr 685 18446744073709551360#64))

def body3_272 : WordLangProgHOL (BitVec 64) :=
.seq body3_270 body3_271

def body3_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body3_274 : WordLangProgHOL (BitVec 64) :=
.seq body3_272 body3_273

def body3_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body3_276 : WordLangProgHOL (BitVec 64) :=
.seq body3_274 body3_275

def body3_277 : WordLangProgHOL (BitVec 64) :=
.seq body3_265 body3_276

def body3_278 : WordLangProgHOL (BitVec 64) :=
.seq body3_262 body3_277

def body3_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body3_280 : WordLangProgHOL (BitVec 64) :=
.seq body3_278 body3_279

def body3_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665)]

def body3_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body3_283 : WordLangProgHOL (BitVec 64) :=
.seq body3_281 body3_282

def body3_284 : WordLangProgHOL (BitVec 64) :=
.seq body3_280 body3_283

def body3_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 709 Flapjack.WordStore.heapLength

def body3_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 713 709 (Flapjack.WordRegImm.imm 1#64)))

def body3_287 : WordLangProgHOL (BitVec 64) :=
.seq body3_285 body3_286

def body3_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 717 713

def body3_289 : WordLangProgHOL (BitVec 64) :=
.seq body3_287 body3_288

def body3_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body3_291 : WordLangProgHOL (BitVec 64) :=
.seq body3_289 body3_290

def body3_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body3_293 : WordLangProgHOL (BitVec 64) :=
.seq body3_291 body3_292

def body3_294 : WordLangProgHOL (BitVec 64) :=
.seq body3_284 body3_293

def body3_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body3_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body3_297 : WordLangProgHOL (BitVec 64) :=
.seq body3_295 body3_296

def body3_298 : WordLangProgHOL (BitVec 64) :=
.seq body3_294 body3_297

def body3_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(739, 425)]

def body3_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733)]

def body3_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body3_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 2)]

def body3_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 753)]

def body3_304 : WordLangProgHOL (BitVec 64) :=
.seq body3_303 body3_7

def body3_305 : WordLangProgHOL (BitVec 64) :=
.seq body3_302 body3_304

def body3_306 : WordLangProgHOL (BitVec 64) :=
.seq body3_301 body3_305

def body3_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_301, 612, 6)) (some 434) ([2, 4]) (some (2, body3_306, 612, 7))

def body3_308 : WordLangProgHOL (BitVec 64) :=
.seq body3_300 body3_307

def body3_309 : WordLangProgHOL (BitVec 64) :=
.seq body3_299 body3_308

def body3_310 : WordLangProgHOL (BitVec 64) :=
.seq body3_298 body3_309

def body3_311 : WordLangProgHOL (BitVec 64) :=
.seq body3_310 body3_15

def body3_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body3_313 : WordLangProgHOL (BitVec 64) :=
.seq body3_311 body3_312

def body3_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body3_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body3_316 : WordLangProgHOL (BitVec 64) :=
.seq body3_314 body3_315

def body3_317 : WordLangProgHOL (BitVec 64) :=
.seq body3_313 body3_316

def body3_318 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_317

def pass3 : WordLangProgHOL (BitVec 64) := body3_318
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 29)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(39, 25), (43, 33)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_4, 612, 2)) (some 611) ([2]) (some (2, body4_10, 612, 3))

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 73)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 77)]

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 81)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 121)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 101)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 105)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 109)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 133)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 137)]

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 141)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 145)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 153)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 157)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 161)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 165)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 201)]

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 173)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body4_82 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_15

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 73)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 77)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 81)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 145)]

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 221)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 229)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 233)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 237)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245)]

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 253)]

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 257)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(305, 285)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 289)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 293)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 297)]

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_142

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 305)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 309)]

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 313)]

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_153

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 341)]

def body4_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 345)]

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_158 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 349)]

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_160 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 353)]

def body4_164 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_163

def body4_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body4_166 : WordLangProgHOL (BitVec 64) :=
.seq body4_164 body4_165

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body4_169 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_168

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_169

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_170

def body4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_171 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body4_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_174 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_173 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_178 body4_179

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_183

def body4_185 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_184

def body4_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
.seq body4_185 body4_188

def body4_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_189 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_191 body4_15

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 437)]

def body4_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449)]

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_194 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body4_199 : WordLangProgHOL (BitVec 64) :=
.seq body4_197 body4_198

def body4_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_199 body4_200

def body4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body4_203 : WordLangProgHOL (BitVec 64) :=
.seq body4_201 body4_202

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body4_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body4_207 : WordLangProgHOL (BitVec 64) :=
.seq body4_205 body4_206

def body4_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body4_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body4_210 : WordLangProgHOL (BitVec 64) :=
.seq body4_208 body4_209

def body4_211 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_210

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_212

def body4_214 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_213

def body4_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body4_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 501)]

def body4_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body4_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 2)]

def body4_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 569)]

def body4_220 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_7

def body4_221 : WordLangProgHOL (BitVec 64) :=
.seq body4_218 body4_220

def body4_222 : WordLangProgHOL (BitVec 64) :=
.seq body4_217 body4_221

def body4_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body4_217, 612, 4)) (some 547) ([2, 4]) (some (2, body4_222, 612, 5))

def body4_224 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
.seq body4_215 body4_224

def body4_226 : WordLangProgHOL (BitVec 64) :=
.seq body4_214 body4_225

def body4_227 : WordLangProgHOL (BitVec 64) :=
.seq body4_226 body4_15

def body4_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body4_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body4_230 : WordLangProgHOL (BitVec 64) :=
.seq body4_228 body4_229

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_227 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 585)]

def body4_233 : WordLangProgHOL (BitVec 64) :=
.seq body4_231 body4_232

def body4_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 537), (429, 541), (433, 545), (437, 589), (441, 553), (445, 557), (449, 561)]

def body4_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body4_236 : WordLangProgHOL (BitVec 64) :=
.seq body4_234 body4_235

def body4_237 : WordLangProgHOL (BitVec 64) :=
.seq body4_233 body4_236

def body4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 537), (625, 541), (621, 545), (613, 589), (609, 553), (605, 557), (601, 561)]

def body4_239 : WordLangProgHOL (BitVec 64) :=
.seq body4_237 body4_238

def body4_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body4_241 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_240

def body4_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 425), (625, 429), (621, 433), (613, 453), (609, 441), (605, 445), (601, 457)]

def body4_243 : WordLangProgHOL (BitVec 64) :=
.seq body4_241 body4_242

def body4_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body4_239 body4_243

def body4_245 : WordLangProgHOL (BitVec 64) :=
.seq body4_196 body4_244

def body4_246 : WordLangProgHOL (BitVec 64) :=
.seq body4_245 body4_15

def body4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body4_248 : WordLangProgHOL (BitVec 64) :=
.seq body4_246 body4_247

def body4_249 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body4_248 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body4_250 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_249

def body4_251 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_250

def body4_252 : WordLangProgHOL (BitVec 64) :=
.seq body4_251 body4_15

def body4_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body4_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body4_255 : WordLangProgHOL (BitVec 64) :=
.seq body4_253 body4_254

def body4_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body4_257 : WordLangProgHOL (BitVec 64) :=
.seq body4_255 body4_256

def body4_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body4_259 : WordLangProgHOL (BitVec 64) :=
.seq body4_257 body4_258

def body4_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body4_261 : WordLangProgHOL (BitVec 64) :=
.seq body4_259 body4_260

def body4_262 : WordLangProgHOL (BitVec 64) :=
.seq body4_252 body4_261

def body4_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body4_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body4_265 : WordLangProgHOL (BitVec 64) :=
.seq body4_263 body4_264

def body4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(677, 649)]

def body4_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 653)]

def body4_268 : WordLangProgHOL (BitVec 64) :=
.seq body4_266 body4_267

def body4_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(685, 657)]

def body4_270 : WordLangProgHOL (BitVec 64) :=
.seq body4_268 body4_269

def body4_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(689, 661)]

def body4_272 : WordLangProgHOL (BitVec 64) :=
.seq body4_270 body4_271

def body4_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body4_274 : WordLangProgHOL (BitVec 64) :=
.seq body4_272 body4_273

def body4_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body4_276 : WordLangProgHOL (BitVec 64) :=
.seq body4_274 body4_275

def body4_277 : WordLangProgHOL (BitVec 64) :=
.seq body4_265 body4_276

def body4_278 : WordLangProgHOL (BitVec 64) :=
.seq body4_262 body4_277

def body4_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body4_280 : WordLangProgHOL (BitVec 64) :=
.seq body4_278 body4_279

def body4_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665)]

def body4_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body4_283 : WordLangProgHOL (BitVec 64) :=
.seq body4_281 body4_282

def body4_284 : WordLangProgHOL (BitVec 64) :=
.seq body4_280 body4_283

def body4_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(709, 677)]

def body4_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 681)]

def body4_287 : WordLangProgHOL (BitVec 64) :=
.seq body4_285 body4_286

def body4_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 685)]

def body4_289 : WordLangProgHOL (BitVec 64) :=
.seq body4_287 body4_288

def body4_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body4_291 : WordLangProgHOL (BitVec 64) :=
.seq body4_289 body4_290

def body4_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body4_293 : WordLangProgHOL (BitVec 64) :=
.seq body4_291 body4_292

def body4_294 : WordLangProgHOL (BitVec 64) :=
.seq body4_284 body4_293

def body4_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body4_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body4_297 : WordLangProgHOL (BitVec 64) :=
.seq body4_295 body4_296

def body4_298 : WordLangProgHOL (BitVec 64) :=
.seq body4_294 body4_297

def body4_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(739, 425)]

def body4_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733)]

def body4_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body4_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 2)]

def body4_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 753)]

def body4_304 : WordLangProgHOL (BitVec 64) :=
.seq body4_303 body4_7

def body4_305 : WordLangProgHOL (BitVec 64) :=
.seq body4_302 body4_304

def body4_306 : WordLangProgHOL (BitVec 64) :=
.seq body4_301 body4_305

def body4_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_301, 612, 6)) (some 434) ([2, 4]) (some (2, body4_306, 612, 7))

def body4_308 : WordLangProgHOL (BitVec 64) :=
.seq body4_300 body4_307

def body4_309 : WordLangProgHOL (BitVec 64) :=
.seq body4_299 body4_308

def body4_310 : WordLangProgHOL (BitVec 64) :=
.seq body4_298 body4_309

def body4_311 : WordLangProgHOL (BitVec 64) :=
.seq body4_310 body4_15

def body4_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body4_313 : WordLangProgHOL (BitVec 64) :=
.seq body4_311 body4_312

def body4_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body4_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body4_316 : WordLangProgHOL (BitVec 64) :=
.seq body4_314 body4_315

def body4_317 : WordLangProgHOL (BitVec 64) :=
.seq body4_313 body4_316

def body4_318 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_317

def pass4 : WordLangProgHOL (BitVec 64) := body4_318
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 29)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(39, 25), (43, 33)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_4, 612, 2)) (some 611) ([2]) (some (2, body5_10, 612, 3))

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 73)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 77)]

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 81)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 121)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 101)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 105)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 109)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 133)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 137)]

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 141)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 145)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 153)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 157)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 161)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 165)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 201)]

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 173)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body5_82 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_15

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 73)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 77)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 81)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 145)]

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 221)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 229)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 233)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 237)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245)]

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 253)]

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 257)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(305, 285)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 289)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 293)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 297)]

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_142

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 305)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 309)]

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 313)]

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_153

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 341)]

def body5_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 345)]

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_158 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 349)]

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_160 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 353)]

def body5_164 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_163

def body5_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body5_166 : WordLangProgHOL (BitVec 64) :=
.seq body5_164 body5_165

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body5_169 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_168

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_169

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_170

def body5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_171 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body5_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_174 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_173 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body5_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_178 body5_179

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_183

def body5_185 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_184

def body5_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
.seq body5_185 body5_188

def body5_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_189 body5_190

def body5_192 : WordLangProgHOL (BitVec 64) :=
.seq body5_191 body5_15

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 437)]

def body5_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449)]

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_194 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body5_199 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_198

def body5_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_199 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body5_203 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_202

def body5_204 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_203

def body5_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body5_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_205 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body5_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body5_210 : WordLangProgHOL (BitVec 64) :=
.seq body5_208 body5_209

def body5_211 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_210

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_213

def body5_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body5_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 501)]

def body5_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body5_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 2)]

def body5_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 569)]

def body5_220 : WordLangProgHOL (BitVec 64) :=
.seq body5_219 body5_7

def body5_221 : WordLangProgHOL (BitVec 64) :=
.seq body5_218 body5_220

def body5_222 : WordLangProgHOL (BitVec 64) :=
.seq body5_217 body5_221

def body5_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body5_217, 612, 4)) (some 547) ([2, 4]) (some (2, body5_222, 612, 5))

def body5_224 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_224

def body5_226 : WordLangProgHOL (BitVec 64) :=
.seq body5_214 body5_225

def body5_227 : WordLangProgHOL (BitVec 64) :=
.seq body5_226 body5_15

def body5_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body5_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body5_230 : WordLangProgHOL (BitVec 64) :=
.seq body5_228 body5_229

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_227 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 585)]

def body5_233 : WordLangProgHOL (BitVec 64) :=
.seq body5_231 body5_232

def body5_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 537), (429, 541), (433, 545), (437, 589), (441, 553), (445, 557), (449, 561)]

def body5_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body5_236 : WordLangProgHOL (BitVec 64) :=
.seq body5_234 body5_235

def body5_237 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_236

def body5_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 425), (625, 429), (621, 433), (613, 437), (609, 441), (605, 445), (601, 449)]

def body5_239 : WordLangProgHOL (BitVec 64) :=
.seq body5_237 body5_238

def body5_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body5_241 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_240

def body5_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 425), (625, 429), (621, 433), (613, 453), (609, 441), (605, 445), (601, 457)]

def body5_243 : WordLangProgHOL (BitVec 64) :=
.seq body5_241 body5_242

def body5_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body5_239 body5_243

def body5_245 : WordLangProgHOL (BitVec 64) :=
.seq body5_196 body5_244

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_245 body5_15

def body5_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body5_248 : WordLangProgHOL (BitVec 64) :=
.seq body5_246 body5_247

def body5_249 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body5_248 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body5_250 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_249

def body5_251 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_250

def body5_252 : WordLangProgHOL (BitVec 64) :=
.seq body5_251 body5_15

def body5_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body5_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body5_255 : WordLangProgHOL (BitVec 64) :=
.seq body5_253 body5_254

def body5_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body5_257 : WordLangProgHOL (BitVec 64) :=
.seq body5_255 body5_256

def body5_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body5_259 : WordLangProgHOL (BitVec 64) :=
.seq body5_257 body5_258

def body5_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body5_261 : WordLangProgHOL (BitVec 64) :=
.seq body5_259 body5_260

def body5_262 : WordLangProgHOL (BitVec 64) :=
.seq body5_252 body5_261

def body5_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body5_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body5_265 : WordLangProgHOL (BitVec 64) :=
.seq body5_263 body5_264

def body5_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(677, 649)]

def body5_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 653)]

def body5_268 : WordLangProgHOL (BitVec 64) :=
.seq body5_266 body5_267

def body5_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(685, 657)]

def body5_270 : WordLangProgHOL (BitVec 64) :=
.seq body5_268 body5_269

def body5_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(689, 661)]

def body5_272 : WordLangProgHOL (BitVec 64) :=
.seq body5_270 body5_271

def body5_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body5_274 : WordLangProgHOL (BitVec 64) :=
.seq body5_272 body5_273

def body5_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body5_276 : WordLangProgHOL (BitVec 64) :=
.seq body5_274 body5_275

def body5_277 : WordLangProgHOL (BitVec 64) :=
.seq body5_265 body5_276

def body5_278 : WordLangProgHOL (BitVec 64) :=
.seq body5_262 body5_277

def body5_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body5_280 : WordLangProgHOL (BitVec 64) :=
.seq body5_278 body5_279

def body5_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665)]

def body5_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body5_283 : WordLangProgHOL (BitVec 64) :=
.seq body5_281 body5_282

def body5_284 : WordLangProgHOL (BitVec 64) :=
.seq body5_280 body5_283

def body5_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(709, 677)]

def body5_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 681)]

def body5_287 : WordLangProgHOL (BitVec 64) :=
.seq body5_285 body5_286

def body5_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 685)]

def body5_289 : WordLangProgHOL (BitVec 64) :=
.seq body5_287 body5_288

def body5_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body5_291 : WordLangProgHOL (BitVec 64) :=
.seq body5_289 body5_290

def body5_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body5_293 : WordLangProgHOL (BitVec 64) :=
.seq body5_291 body5_292

def body5_294 : WordLangProgHOL (BitVec 64) :=
.seq body5_284 body5_293

def body5_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body5_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body5_297 : WordLangProgHOL (BitVec 64) :=
.seq body5_295 body5_296

def body5_298 : WordLangProgHOL (BitVec 64) :=
.seq body5_294 body5_297

def body5_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(739, 425)]

def body5_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733)]

def body5_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body5_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 2)]

def body5_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 753)]

def body5_304 : WordLangProgHOL (BitVec 64) :=
.seq body5_303 body5_7

def body5_305 : WordLangProgHOL (BitVec 64) :=
.seq body5_302 body5_304

def body5_306 : WordLangProgHOL (BitVec 64) :=
.seq body5_301 body5_305

def body5_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_301, 612, 6)) (some 434) ([2, 4]) (some (2, body5_306, 612, 7))

def body5_308 : WordLangProgHOL (BitVec 64) :=
.seq body5_300 body5_307

def body5_309 : WordLangProgHOL (BitVec 64) :=
.seq body5_299 body5_308

def body5_310 : WordLangProgHOL (BitVec 64) :=
.seq body5_298 body5_309

def body5_311 : WordLangProgHOL (BitVec 64) :=
.seq body5_310 body5_15

def body5_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body5_313 : WordLangProgHOL (BitVec 64) :=
.seq body5_311 body5_312

def body5_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body5_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body5_316 : WordLangProgHOL (BitVec 64) :=
.seq body5_314 body5_315

def body5_317 : WordLangProgHOL (BitVec 64) :=
.seq body5_313 body5_316

def body5_318 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_317

def pass5 : WordLangProgHOL (BitVec 64) := body5_318
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(33, 29)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(39, 25), (43, 33)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 33)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_4, 612, 2)) (some 611) ([2]) (some (2, body6_10, 612, 3))

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 73)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 77)]

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 81)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 121)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 101)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 105)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(141, 109)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 133)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 137)]

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 141)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 145)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 153)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 157)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 161)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 165)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 169)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 201)]

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 173)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body6_82 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_15

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 73)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 77)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 81)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 145)]

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(249, 221)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 229)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 233)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 237)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 241)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245)]

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(285, 253)]

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 257)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 261)]

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(305, 285)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 289)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 293)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 297)]

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_142

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body6_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 305)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 309)]

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 313)]

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_153

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 341)]

def body6_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 345)]

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_158 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 349)]

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_160 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 353)]

def body6_164 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_163

def body6_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body6_166 : WordLangProgHOL (BitVec 64) :=
.seq body6_164 body6_165

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body6_169 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_168

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_169

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_170

def body6_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_171 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body6_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_174 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_173 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body6_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_178 body6_179

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_183

def body6_185 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_184

def body6_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
.seq body6_185 body6_188

def body6_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_189 body6_190

def body6_192 : WordLangProgHOL (BitVec 64) :=
.seq body6_191 body6_15

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 437)]

def body6_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449)]

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_194 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body6_199 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_198

def body6_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_199 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body6_203 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_202

def body6_204 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_203

def body6_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body6_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_205 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body6_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body6_210 : WordLangProgHOL (BitVec 64) :=
.seq body6_208 body6_209

def body6_211 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_210

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_213

def body6_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body6_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 501)]

def body6_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body6_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 2)]

def body6_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 569)]

def body6_220 : WordLangProgHOL (BitVec 64) :=
.seq body6_219 body6_7

def body6_221 : WordLangProgHOL (BitVec 64) :=
.seq body6_218 body6_220

def body6_222 : WordLangProgHOL (BitVec 64) :=
.seq body6_217 body6_221

def body6_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body6_217, 612, 4)) (some 547) ([2, 4]) (some (2, body6_222, 612, 5))

def body6_224 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_224

def body6_226 : WordLangProgHOL (BitVec 64) :=
.seq body6_214 body6_225

def body6_227 : WordLangProgHOL (BitVec 64) :=
.seq body6_226 body6_15

def body6_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body6_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body6_230 : WordLangProgHOL (BitVec 64) :=
.seq body6_228 body6_229

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_227 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 585)]

def body6_233 : WordLangProgHOL (BitVec 64) :=
.seq body6_231 body6_232

def body6_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 537), (429, 541), (433, 545), (437, 589), (441, 553), (445, 557), (449, 561)]

def body6_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body6_236 : WordLangProgHOL (BitVec 64) :=
.seq body6_234 body6_235

def body6_237 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_236

def body6_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 425), (625, 429), (621, 433), (613, 437), (609, 441), (605, 445), (601, 449)]

def body6_239 : WordLangProgHOL (BitVec 64) :=
.seq body6_237 body6_238

def body6_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body6_241 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_240

def body6_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 425), (625, 429), (621, 433), (613, 453), (609, 441), (605, 445), (601, 457)]

def body6_243 : WordLangProgHOL (BitVec 64) :=
.seq body6_241 body6_242

def body6_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body6_239 body6_243

def body6_245 : WordLangProgHOL (BitVec 64) :=
.seq body6_196 body6_244

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_245 body6_15

def body6_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body6_248 : WordLangProgHOL (BitVec 64) :=
.seq body6_246 body6_247

def body6_249 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body6_248 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body6_250 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_249

def body6_251 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_250

def body6_252 : WordLangProgHOL (BitVec 64) :=
.seq body6_251 body6_15

def body6_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body6_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body6_255 : WordLangProgHOL (BitVec 64) :=
.seq body6_253 body6_254

def body6_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body6_257 : WordLangProgHOL (BitVec 64) :=
.seq body6_255 body6_256

def body6_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body6_259 : WordLangProgHOL (BitVec 64) :=
.seq body6_257 body6_258

def body6_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body6_261 : WordLangProgHOL (BitVec 64) :=
.seq body6_259 body6_260

def body6_262 : WordLangProgHOL (BitVec 64) :=
.seq body6_252 body6_261

def body6_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body6_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body6_265 : WordLangProgHOL (BitVec 64) :=
.seq body6_263 body6_264

def body6_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(677, 649)]

def body6_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 653)]

def body6_268 : WordLangProgHOL (BitVec 64) :=
.seq body6_266 body6_267

def body6_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(685, 657)]

def body6_270 : WordLangProgHOL (BitVec 64) :=
.seq body6_268 body6_269

def body6_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(689, 661)]

def body6_272 : WordLangProgHOL (BitVec 64) :=
.seq body6_270 body6_271

def body6_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body6_274 : WordLangProgHOL (BitVec 64) :=
.seq body6_272 body6_273

def body6_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body6_276 : WordLangProgHOL (BitVec 64) :=
.seq body6_274 body6_275

def body6_277 : WordLangProgHOL (BitVec 64) :=
.seq body6_265 body6_276

def body6_278 : WordLangProgHOL (BitVec 64) :=
.seq body6_262 body6_277

def body6_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body6_280 : WordLangProgHOL (BitVec 64) :=
.seq body6_278 body6_279

def body6_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665)]

def body6_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body6_283 : WordLangProgHOL (BitVec 64) :=
.seq body6_281 body6_282

def body6_284 : WordLangProgHOL (BitVec 64) :=
.seq body6_280 body6_283

def body6_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(709, 677)]

def body6_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 681)]

def body6_287 : WordLangProgHOL (BitVec 64) :=
.seq body6_285 body6_286

def body6_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 685)]

def body6_289 : WordLangProgHOL (BitVec 64) :=
.seq body6_287 body6_288

def body6_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body6_291 : WordLangProgHOL (BitVec 64) :=
.seq body6_289 body6_290

def body6_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body6_293 : WordLangProgHOL (BitVec 64) :=
.seq body6_291 body6_292

def body6_294 : WordLangProgHOL (BitVec 64) :=
.seq body6_284 body6_293

def body6_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body6_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body6_297 : WordLangProgHOL (BitVec 64) :=
.seq body6_295 body6_296

def body6_298 : WordLangProgHOL (BitVec 64) :=
.seq body6_294 body6_297

def body6_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(739, 425)]

def body6_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733)]

def body6_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body6_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 2)]

def body6_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 753)]

def body6_304 : WordLangProgHOL (BitVec 64) :=
.seq body6_303 body6_7

def body6_305 : WordLangProgHOL (BitVec 64) :=
.seq body6_302 body6_304

def body6_306 : WordLangProgHOL (BitVec 64) :=
.seq body6_301 body6_305

def body6_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_301, 612, 6)) (some 434) ([2, 4]) (some (2, body6_306, 612, 7))

def body6_308 : WordLangProgHOL (BitVec 64) :=
.seq body6_300 body6_307

def body6_309 : WordLangProgHOL (BitVec 64) :=
.seq body6_299 body6_308

def body6_310 : WordLangProgHOL (BitVec 64) :=
.seq body6_298 body6_309

def body6_311 : WordLangProgHOL (BitVec 64) :=
.seq body6_310 body6_15

def body6_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body6_313 : WordLangProgHOL (BitVec 64) :=
.seq body6_311 body6_312

def body6_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body6_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body6_316 : WordLangProgHOL (BitVec 64) :=
.seq body6_314 body6_315

def body6_317 : WordLangProgHOL (BitVec 64) :=
.seq body6_313 body6_316

def body6_318 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_317

def pass6 : WordLangProgHOL (BitVec 64) := body6_318
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (39, 0), (43, 2), (33, 2), (25, 0), (29, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (61, 2), (49, 39), (53, 43)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_4 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_1, 612, 2)) (some 611) ([2]) (some (2, body7_4, 612, 3))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 85), (109, 81), (105, 77), (101, 73)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89), (125, 121)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 109), (137, 105), (133, 101)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 145), (161, 141), (157, 137), (153, 133)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 169), (201, 169), (197, 165), (193, 161), (189, 157), (185, 153)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_25

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 173)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body7_26 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 145), (237, 81), (233, 77), (229, 73)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 241), (261, 237), (257, 233), (253, 229), (249, 221)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245), (277, 273)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 261), (289, 257), (285, 253)]

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(317, 297), (313, 293), (309, 289), (305, 285)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301), (333, 329)]

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 313), (345, 309), (341, 305)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353), (369, 349), (365, 345), (361, 341)]

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357), (389, 385)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449), (453, 437)]

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 481), (4, 501), (507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body7_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (569, 2), (537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_75 body7_3

def body7_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body7_74, 612, 4)) (some 547) ([2, 4]) (some (2, body7_76, 612, 5))

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body7_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body7_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(425, 537), (429, 541), (433, 545), (437, 585), (441, 553), (445, 557), (449, 561), (589, 585)]

def body7_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_80 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_77 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_69 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body7_97 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_100 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body7_104 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body7_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body7_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body7_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body7_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body7_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body7_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body7_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body7_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 661), (685, 657), (681, 653), (677, 649)]

def body7_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body7_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body7_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665), (701, 697)]

def body7_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body7_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(717, 685), (713, 681), (709, 677)]

def body7_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body7_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body7_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body7_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body7_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733), (739, 425)]

def body7_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body7_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (753, 2), (745, 739)]

def body7_126 : WordLangProgHOL (BitVec 64) :=
.seq body7_125 body7_3

def body7_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_124, 612, 6)) (some 434) ([2, 4]) (some (2, body7_126, 612, 7))

def body7_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body7_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body7_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_129 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
.seq body7_128 body7_131

def body7_133 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_132

def body7_134 : WordLangProgHOL (BitVec 64) :=
.seq body7_127 body7_133

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_123 body7_134

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_122 body7_135

def body7_137 : WordLangProgHOL (BitVec 64) :=
.seq body7_121 body7_136

def body7_138 : WordLangProgHOL (BitVec 64) :=
.seq body7_120 body7_137

def body7_139 : WordLangProgHOL (BitVec 64) :=
.seq body7_119 body7_138

def body7_140 : WordLangProgHOL (BitVec 64) :=
.seq body7_118 body7_139

def body7_141 : WordLangProgHOL (BitVec 64) :=
.seq body7_117 body7_140

def body7_142 : WordLangProgHOL (BitVec 64) :=
.seq body7_116 body7_141

def body7_143 : WordLangProgHOL (BitVec 64) :=
.seq body7_115 body7_142

def body7_144 : WordLangProgHOL (BitVec 64) :=
.seq body7_114 body7_143

def body7_145 : WordLangProgHOL (BitVec 64) :=
.seq body7_113 body7_144

def body7_146 : WordLangProgHOL (BitVec 64) :=
.seq body7_112 body7_145

def body7_147 : WordLangProgHOL (BitVec 64) :=
.seq body7_111 body7_146

def body7_148 : WordLangProgHOL (BitVec 64) :=
.seq body7_110 body7_147

def body7_149 : WordLangProgHOL (BitVec 64) :=
.seq body7_109 body7_148

def body7_150 : WordLangProgHOL (BitVec 64) :=
.seq body7_108 body7_149

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_107 body7_150

def body7_152 : WordLangProgHOL (BitVec 64) :=
.seq body7_106 body7_151

def body7_153 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_152

def body7_154 : WordLangProgHOL (BitVec 64) :=
.seq body7_105 body7_153

def body7_155 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_154

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_59 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_160

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_173

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_176

def body7_178 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_177

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_178

def body7_180 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_179

def body7_181 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_180

def body7_182 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_181

def body7_183 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_182

def body7_184 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_183

def body7_185 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_184

def body7_186 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_185

def body7_187 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_186

def body7_188 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_187

def body7_189 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_188

def body7_190 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_189

def body7_191 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_190

def body7_192 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_191

def body7_193 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_192

def body7_194 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_193

def body7_195 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_194

def body7_196 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_195

def body7_197 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_196

def body7_198 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_197

def body7_199 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_198

def body7_200 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_199

def body7_201 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_200

def body7_202 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_201

def body7_203 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_202

def body7_204 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_203

def body7_205 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_204

def body7_206 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_205

def body7_207 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_206

def body7_208 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_207

def body7_209 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_208

def body7_210 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_209

def body7_211 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_210

def pass7 : WordLangProgHOL (BitVec 64) := body7_211
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (39, 0), (43, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 39), (53, 43)]

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (49, 39), (53, 43)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_4 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_3

def body8_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_1, 612, 2)) (some 611) ([2]) (some (2, body8_4, 612, 3))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 73 Flapjack.WordStore.heapLength

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 77 73 (Flapjack.WordRegImm.imm 1#64)))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 77

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 18446744073709551360#64))

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 89 85 (Flapjack.WordRegImm.imm 192#64)))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 53)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 97 (Flapjack.WordLangAddr.addr 93 192#64))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 85), (109, 81)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 192#64))

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 121 97 (Flapjack.WordRegImm.reg 117)))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 89), (125, 121)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 109)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551360#64))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 72#64))

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 145)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 169 (Flapjack.WordLangAddr.addr 165 192#64))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 169)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_25

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 173)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 169 (Flapjack.WordRegImm.reg 173) body8_26 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 145), (237, 81)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 64#64)))

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 241), (261, 237), (249, 221)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 64#64))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 249 (Flapjack.WordRegImm.reg 269)))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 245), (277, 273)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 277 (Flapjack.WordLangAddr.addr 281 0#64))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 261)]

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551360#64))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 72#64)))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(317, 297), (313, 293)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 72#64))

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 249)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 329 321 (Flapjack.WordRegImm.reg 325)))

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301), (333, 329)]

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 313)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551360#64))

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 192#64)))

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353)]

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 192#64))

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 325)]

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 385 377 (Flapjack.WordRegImm.reg 381)))

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357), (389, 385)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 93)]

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 401 (Flapjack.WordLangAddr.addr 397 88#64))

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 401)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 8#64))

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 405)]

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 417 (Flapjack.WordLangAddr.addr 413 0#64))

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 49), (429, 417), (433, 381), (437, 421), (441, 397), (445, 413), (449, 409)]

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 449), (453, 437)]

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551360#64))

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 453)]

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 489 485 (Flapjack.WordRegImm.imm 3#64)))

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(493, 429)]

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 489 (Flapjack.WordRegImm.reg 493)))

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 501 (Flapjack.WordLangAddr.addr 497 0#64))

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 481), (4, 501), (507, 425), (511, 493), (515, 433), (519, 485), (523, 441), (527, 445), (531, 457)]

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body8_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527), (561, 531)]

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_75 body8_3

def body8_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body8_74, 612, 4)) (some 547) ([2, 4]) (some (2, body8_76, 612, 5))

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(581, 549)]

def body8_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body8_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 537), (429, 541), (433, 545), (437, 585), (441, 553), (445, 557), (449, 561)]

def body8_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_80 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_77 body8_85

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
.seq body8_6 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 453 (Flapjack.WordRegImm.reg 457) body8_97 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 629), (429, 625), (433, 621), (437, 613), (441, 609), (445, 605), (449, 601)]

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_100 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body8_104 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln))

def body8_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 649 Flapjack.WordStore.heapLength

def body8_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 653 649 (Flapjack.WordRegImm.imm 1#64)))

def body8_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 657 653

def body8_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 661 (Flapjack.WordLangAddr.addr 657 18446744073709551360#64))

def body8_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 665 661 (Flapjack.WordRegImm.imm 96#64)))

def body8_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(669, 441)]

def body8_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 673 (Flapjack.WordLangAddr.addr 669 96#64))

def body8_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 661), (685, 657)]

def body8_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 693 (Flapjack.WordLangAddr.addr 689 96#64))

def body8_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 673 (Flapjack.WordRegImm.reg 693)))

def body8_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(705, 665), (701, 697)]

def body8_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 701 (Flapjack.WordLangAddr.addr 705 0#64))

def body8_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(717, 685)]

def body8_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 721 (Flapjack.WordLangAddr.addr 717 18446744073709551360#64))

def body8_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 725 (Flapjack.WordLangAddr.addr 721 136#64))

def body8_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 669)]

def body8_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 136#64))

def body8_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 725), (4, 733), (739, 425)]

def body8_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 739)]

def body8_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (745, 739)]

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_125 body8_3

def body8_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_124, 612, 6)) (some 434) ([2, 4]) (some (2, body8_126, 612, 7))

def body8_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body8_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 765)]

def body8_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 745 [2]

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_129 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
.seq body8_128 body8_131

def body8_133 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_132

def body8_134 : WordLangProgHOL (BitVec 64) :=
.seq body8_127 body8_133

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_123 body8_134

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_122 body8_135

def body8_137 : WordLangProgHOL (BitVec 64) :=
.seq body8_121 body8_136

def body8_138 : WordLangProgHOL (BitVec 64) :=
.seq body8_120 body8_137

def body8_139 : WordLangProgHOL (BitVec 64) :=
.seq body8_119 body8_138

def body8_140 : WordLangProgHOL (BitVec 64) :=
.seq body8_118 body8_139

def body8_141 : WordLangProgHOL (BitVec 64) :=
.seq body8_117 body8_140

def body8_142 : WordLangProgHOL (BitVec 64) :=
.seq body8_116 body8_141

def body8_143 : WordLangProgHOL (BitVec 64) :=
.seq body8_115 body8_142

def body8_144 : WordLangProgHOL (BitVec 64) :=
.seq body8_114 body8_143

def body8_145 : WordLangProgHOL (BitVec 64) :=
.seq body8_113 body8_144

def body8_146 : WordLangProgHOL (BitVec 64) :=
.seq body8_112 body8_145

def body8_147 : WordLangProgHOL (BitVec 64) :=
.seq body8_111 body8_146

def body8_148 : WordLangProgHOL (BitVec 64) :=
.seq body8_110 body8_147

def body8_149 : WordLangProgHOL (BitVec 64) :=
.seq body8_109 body8_148

def body8_150 : WordLangProgHOL (BitVec 64) :=
.seq body8_108 body8_149

def body8_151 : WordLangProgHOL (BitVec 64) :=
.seq body8_107 body8_150

def body8_152 : WordLangProgHOL (BitVec 64) :=
.seq body8_106 body8_151

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.seq body8_105 body8_153

def body8_155 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_154

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_59 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_160

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_173

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_176

def body8_178 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_177

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_178

def body8_180 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_179

def body8_181 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_180

def body8_182 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_181

def body8_183 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_182

def body8_184 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_183

def body8_185 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_184

def body8_186 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_185

def body8_187 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_186

def body8_188 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_187

def body8_189 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_188

def body8_190 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_189

def body8_191 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_190

def body8_192 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_191

def body8_193 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_192

def body8_194 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_193

def body8_195 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_194

def body8_196 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_195

def body8_197 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_196

def body8_198 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_197

def body8_199 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_198

def body8_200 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_199

def body8_201 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_200

def body8_202 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_201

def body8_203 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_202

def body8_204 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_203

def body8_205 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_204

def body8_206 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_205

def body8_207 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_206

def body8_208 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_207

def body8_209 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_208

def body8_210 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_209

def body8_211 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_210

def pass8 : WordLangProgHOL (BitVec 64) := body8_211
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

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
  Flapjack.Spt.ln)), body10_1, 612, 2)) (some 611) ([2]) (some (2, body10_4, 612, 3))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 192#64)))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 192#64))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 2)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 192#64))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 72#64))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 6)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 192#64))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 8)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_19

def body10_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) body10_26 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2)]

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (4, 4)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 6)))

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 72#64)))

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 72#64))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 6 (Flapjack.WordRegImm.reg 4)))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 192#64)))

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 192#64))

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 10), (48, 4), (6, 6), (46, 0), (50, 2), (8, 8)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 3#64)))

def body10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 10), (48, 48), (50, 6), (52, 46), (54, 50), (56, 8)]

def body10_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (14, 54), (8, 56)]

def body10_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (14, 54), (8, 56)]

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_3

def body10_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body10_60, 612, 4)) (some 547) ([2, 4]) (some (2, body10_62, 612, 5))

def body10_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 10), (48, 4), (6, 6), (46, 12), (50, 14), (8, 8)]

def body10_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_64 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_54 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.WordRegImm.reg 8) body10_82 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (10, 10), (48, 2), (6, 6), (46, 4), (50, 12), (8, 8)]

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_85 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln) ()
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) body10_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def body10_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 0

def body10_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 96#64)))

def body10_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def body10_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 96#64))

def body10_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def body10_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 96#64))

def body10_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 4)))

def body10_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def body10_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def body10_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 136#64))

def body10_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 136#64))

def body10_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def body10_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_106 : WordLangProgHOL (BitVec 64) :=
.seq body10_105 body10_3

def body10_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_104, 612, 6)) (some 434) ([2, 4]) (some (2, body10_106, 612, 7))

def body10_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_110 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_109

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_108 body10_110

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
.seq body10_107 body10_112

def body10_114 : WordLangProgHOL (BitVec 64) :=
.seq body10_103 body10_113

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_102 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_117

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_119

def body10_121 : WordLangProgHOL (BitVec 64) :=
.seq body10_99 body10_120

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_98 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_97 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.seq body10_96 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_95 body10_124

def body10_126 : WordLangProgHOL (BitVec 64) :=
.seq body10_94 body10_125

def body10_127 : WordLangProgHOL (BitVec 64) :=
.seq body10_93 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
.seq body10_92 body10_127

def body10_129 : WordLangProgHOL (BitVec 64) :=
.seq body10_91 body10_128

def body10_130 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_129

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_130

def body10_132 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_131

def body10_133 : WordLangProgHOL (BitVec 64) :=
.seq body10_90 body10_132

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_135

def body10_137 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_137

def body10_139 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_138

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_141

def body10_143 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_142

def body10_144 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_143

def body10_145 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_144

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_145

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_151

def body10_153 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_152

def body10_154 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_153

def body10_155 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_154

def body10_156 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_155

def body10_157 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_156

def body10_158 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_157

def body10_159 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_158

def body10_160 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_159

def body10_161 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_160

def body10_162 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_161

def body10_163 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_162

def body10_164 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_163

def body10_165 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_164

def body10_166 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_165

def body10_167 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_166

def body10_168 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_167

def body10_169 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_168

def body10_170 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_169

def body10_171 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_170

def body10_172 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_171

def body10_173 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_172

def body10_174 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_173

def body10_175 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_174

def body10_176 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_175

def body10_177 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_176

def body10_178 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_177

def body10_179 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_178

def body10_180 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_179

def body10_181 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_180

def body10_182 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_181

def body10_183 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_182

def body10_184 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_183

def body10_185 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_184

def body10_186 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_185

def body10_187 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_186

def body10_188 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_187

def body10_189 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_188

def body10_190 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_189

def pass10 : WordLangProgHOL (BitVec 64) := body10_190
end InitECandidate.Proofs.SmallStages.Compact612
