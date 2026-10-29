import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact604
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)
              0
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            22
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                4
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 0)))
              3
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4 (Flapjack.Spt.ls 26)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 1))) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)))))
            2
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_5

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 1#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_2

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 1#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_2

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(477, 69), (473, 29), (469, 77), (465, 45), (461, 89), (457, 81), (453, 37), (449, 85)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_2

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 101 Flapjack.WordStore.heapLength

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 105 101 (Flapjack.WordRegImm.imm 1#64)))

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 109 105

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_2

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(441, 113), (437, 29), (433, 121), (429, 45), (425, 133), (421, 125), (417, 37), (413, 129)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 445 0#64)

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_2

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 145 Flapjack.WordStore.heapLength

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 149 145 (Flapjack.WordRegImm.imm 1#64)))

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 153 149

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 157 (Flapjack.WordLangAddr.addr 153 18446744073709551360#64))

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551360#64))

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_2

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 1#64)

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (393, 189), (389, 197), (385, 193), (381, 37), (377, 185)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 137)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 165)]

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(409, 181)]

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_2

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 0#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 165)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 213 Flapjack.WordStore.heapLength

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 221 217

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 225 (Flapjack.WordLangAddr.addr 221 18446744073709551360#64))

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_120 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(247, 29), (251, 53), (255, 37)]

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 247), (265, 251), (269, 255)]

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_4

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 261), (357, 265), (353, 269)]

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 273)]

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 261), (341, 265), (337, 269), (333, 277)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 0#64)

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(291, 261), (295, 265), (299, 269)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(317, 2)]

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_4

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 317)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 329 0#64)

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_146

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 0#64)

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 321)]

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_177

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_169, 604, 3)) (some 599) ([2]) (some (2, body2_180, 604, 4))

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_2

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313), (333, 325)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 329)]

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_186 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body2_152 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_2

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 333)]

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 349)]

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body2_143, 604, 2)) (some 597) ([2]) (some (2, body2_203, 604, 5))

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_2

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (393, 373), (389, 357), (385, 369), (381, 353), (377, 365)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 0#64)

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body2_106 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_2

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(441, 409), (437, 397), (433, 393), (429, 405), (425, 389), (421, 401), (417, 381), (413, 377)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(445, 385)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body2_65 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_2

def body2_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(477, 441), (473, 437), (469, 433), (465, 429), (461, 425), (457, 421), (453, 417), (449, 413)]

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 445)]

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body2_38 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_2

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 1#64)

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_2

def body2_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 1#64)

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 2)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_4

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(533, 521)]

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_251 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_146

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(529, 525)]

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body2_264 : WordLangProgHOL (BitVec 64) :=
.seq body2_262 body2_263

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_255, 604, 6)) (some 602) ([]) (some (2, body2_266, 604, 7))

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_2

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body2_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body2_274 : WordLangProgHOL (BitVec 64) :=
.seq body2_272 body2_273

def body2_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_275

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_277

def body2_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body2_280 : WordLangProgHOL (BitVec 64) :=
.seq body2_278 body2_279

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_282

def body2_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 1#64)

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_284 body2_2

def body2_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 1#64)

def body2_287 : WordLangProgHOL (BitVec 64) :=
.seq body2_285 body2_286

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 569 Flapjack.WordStore.heapLength

def body2_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 573 569 (Flapjack.WordRegImm.imm 1#64)))

def body2_290 : WordLangProgHOL (BitVec 64) :=
.seq body2_288 body2_289

def body2_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 577 573

def body2_292 : WordLangProgHOL (BitVec 64) :=
.seq body2_290 body2_291

def body2_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_292 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 585 Flapjack.WordStore.heapLength

def body2_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 589 585 (Flapjack.WordRegImm.imm 1#64)))

def body2_298 : WordLangProgHOL (BitVec 64) :=
.seq body2_296 body2_297

def body2_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 593 589

def body2_300 : WordLangProgHOL (BitVec 64) :=
.seq body2_298 body2_299

def body2_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 597 (Flapjack.WordLangAddr.addr 593 18446744073709551328#64))

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_300 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body2_304 : WordLangProgHOL (BitVec 64) :=
.seq body2_302 body2_303

def body2_305 : WordLangProgHOL (BitVec 64) :=
.seq body2_295 body2_304

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body2_307 : WordLangProgHOL (BitVec 64) :=
.seq body2_305 body2_306

def body2_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581)]

def body2_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_308 body2_309

def body2_311 : WordLangProgHOL (BitVec 64) :=
.seq body2_307 body2_310

def body2_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 613 Flapjack.WordStore.heapLength

def body2_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 617 613 (Flapjack.WordRegImm.imm 1#64)))

def body2_314 : WordLangProgHOL (BitVec 64) :=
.seq body2_312 body2_313

def body2_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 621 617

def body2_316 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_315

def body2_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body2_318 : WordLangProgHOL (BitVec 64) :=
.seq body2_316 body2_317

def body2_319 : WordLangProgHOL (BitVec 64) :=
.seq body2_311 body2_318

def body2_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 629 Flapjack.WordStore.heapLength

def body2_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 633 629 (Flapjack.WordRegImm.imm 1#64)))

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_320 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 637 633

def body2_324 : WordLangProgHOL (BitVec 64) :=
.seq body2_322 body2_323

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_325

def body2_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_326 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
.seq body2_319 body2_328

def body2_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(649, 645)]

def body2_331 : WordLangProgHOL (BitVec 64) :=
.seq body2_329 body2_330

def body2_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625)]

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
.seq body2_331 body2_334

def body2_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_335 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (789, 649), (785, 649), (781, 657), (777, 565)]

def body2_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(797, 653)]

def body2_340 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_339

def body2_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(801, 653)]

def body2_342 : WordLangProgHOL (BitVec 64) :=
.seq body2_340 body2_341

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_338 body2_342

def body2_344 : WordLangProgHOL (BitVec 64) :=
.seq body2_337 body2_343

def body2_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 0#64)

def body2_346 : WordLangProgHOL (BitVec 64) :=
.seq body2_345 body2_2

def body2_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 665 0#64)

def body2_348 : WordLangProgHOL (BitVec 64) :=
.seq body2_346 body2_347

def body2_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body2_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 671), (685, 675)]

def body2_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def body2_352 : WordLangProgHOL (BitVec 64) :=
.seq body2_351 body2_4

def body2_353 : WordLangProgHOL (BitVec 64) :=
.seq body2_350 body2_352

def body2_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 681), (757, 685)]

def body2_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(769, 689)]

def body2_358 : WordLangProgHOL (BitVec 64) :=
.seq body2_356 body2_357

def body2_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 773 0#64)

def body2_360 : WordLangProgHOL (BitVec 64) :=
.seq body2_358 body2_359

def body2_361 : WordLangProgHOL (BitVec 64) :=
.seq body2_354 body2_360

def body2_362 : WordLangProgHOL (BitVec 64) :=
.seq body2_353 body2_361

def body2_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2)]

def body2_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body2_365 : WordLangProgHOL (BitVec 64) :=
.seq body2_364 body2_146

def body2_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 681), (745, 693), (741, 685)]

def body2_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 753 0#64)

def body2_368 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_367

def body2_369 : WordLangProgHOL (BitVec 64) :=
.seq body2_366 body2_368

def body2_370 : WordLangProgHOL (BitVec 64) :=
.seq body2_365 body2_369

def body2_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body2_372 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_371

def body2_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body2_374 : WordLangProgHOL (BitVec 64) :=
.seq body2_372 body2_373

def body2_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(707, 681), (711, 685)]

def body2_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 701)]

def body2_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body2_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(725, 2)]

def body2_379 : WordLangProgHOL (BitVec 64) :=
.seq body2_378 body2_4

def body2_380 : WordLangProgHOL (BitVec 64) :=
.seq body2_377 body2_379

def body2_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body2_382 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_381

def body2_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(737, 725)]

def body2_384 : WordLangProgHOL (BitVec 64) :=
.seq body2_382 body2_383

def body2_385 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_384

def body2_386 : WordLangProgHOL (BitVec 64) :=
.seq body2_380 body2_385

def body2_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(729, 2)]

def body2_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 729)]

def body2_389 : WordLangProgHOL (BitVec 64) :=
.seq body2_388 body2_146

def body2_390 : WordLangProgHOL (BitVec 64) :=
.seq body2_387 body2_389

def body2_391 : WordLangProgHOL (BitVec 64) :=
.seq body2_377 body2_390

def body2_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 729)]

def body2_393 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_392

def body2_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body2_395 : WordLangProgHOL (BitVec 64) :=
.seq body2_393 body2_394

def body2_396 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_395

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_391 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_386, 604, 9)) (some 599) ([2]) (some (2, body2_397, 604, 10))

def body2_399 : WordLangProgHOL (BitVec 64) :=
.seq body2_376 body2_398

def body2_400 : WordLangProgHOL (BitVec 64) :=
.seq body2_375 body2_399

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_374 body2_400

def body2_402 : WordLangProgHOL (BitVec 64) :=
.seq body2_401 body2_2

def body2_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (745, 737), (741, 721)]

def body2_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(753, 733)]

def body2_405 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_404

def body2_406 : WordLangProgHOL (BitVec 64) :=
.seq body2_403 body2_405

def body2_407 : WordLangProgHOL (BitVec 64) :=
.seq body2_402 body2_406

def body2_408 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body2_370 body2_407

def body2_409 : WordLangProgHOL (BitVec 64) :=
.seq body2_408 body2_2

def body2_410 : WordLangProgHOL (BitVec 64) :=
.seq body2_363 body2_409

def body2_411 : WordLangProgHOL (BitVec 64) :=
.seq body2_350 body2_410

def body2_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body2_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(765, 753)]

def body2_414 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_413

def body2_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 769 0#64)

def body2_416 : WordLangProgHOL (BitVec 64) :=
.seq body2_414 body2_415

def body2_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(773, 745)]

def body2_418 : WordLangProgHOL (BitVec 64) :=
.seq body2_416 body2_417

def body2_419 : WordLangProgHOL (BitVec 64) :=
.seq body2_412 body2_418

def body2_420 : WordLangProgHOL (BitVec 64) :=
.seq body2_411 body2_419

def body2_421 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_362, 604, 8)) (some 603) ([]) (some (2, body2_420, 604, 11))

def body2_422 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_421

def body2_423 : WordLangProgHOL (BitVec 64) :=
.seq body2_349 body2_422

def body2_424 : WordLangProgHOL (BitVec 64) :=
.seq body2_348 body2_423

def body2_425 : WordLangProgHOL (BitVec 64) :=
.seq body2_424 body2_2

def body2_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (789, 773), (785, 769), (781, 757), (777, 765)]

def body2_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 797 0#64)

def body2_428 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_427

def body2_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 801 0#64)

def body2_430 : WordLangProgHOL (BitVec 64) :=
.seq body2_428 body2_429

def body2_431 : WordLangProgHOL (BitVec 64) :=
.seq body2_426 body2_430

def body2_432 : WordLangProgHOL (BitVec 64) :=
.seq body2_425 body2_431

def body2_433 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body2_344 body2_432

def body2_434 : WordLangProgHOL (BitVec 64) :=
.seq body2_283 body2_433

def body2_435 : WordLangProgHOL (BitVec 64) :=
.seq body2_434 body2_2

def body2_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(837, 801), (833, 793), (829, 789), (825, 797), (821, 785), (817, 781), (813, 777)]

def body2_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 0#64)

def body2_438 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_437

def body2_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64)

def body2_440 : WordLangProgHOL (BitVec 64) :=
.seq body2_438 body2_439

def body2_441 : WordLangProgHOL (BitVec 64) :=
.seq body2_436 body2_440

def body2_442 : WordLangProgHOL (BitVec 64) :=
.seq body2_435 body2_441

def body2_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 805 0#64)

def body2_444 : WordLangProgHOL (BitVec 64) :=
.seq body2_443 body2_2

def body2_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 0#64)

def body2_446 : WordLangProgHOL (BitVec 64) :=
.seq body2_444 body2_445

def body2_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(837, 477), (833, 473), (829, 489), (825, 465), (821, 805), (817, 453), (813, 809)]

def body2_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(841, 481)]

def body2_449 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_448

def body2_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(845, 485)]

def body2_451 : WordLangProgHOL (BitVec 64) :=
.seq body2_449 body2_450

def body2_452 : WordLangProgHOL (BitVec 64) :=
.seq body2_447 body2_451

def body2_453 : WordLangProgHOL (BitVec 64) :=
.seq body2_446 body2_452

def body2_454 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body2_442 body2_453

def body2_455 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_454

def body2_456 : WordLangProgHOL (BitVec 64) :=
.seq body2_455 body2_2

def body2_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body2_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body2_459 : WordLangProgHOL (BitVec 64) :=
.seq body2_457 body2_458

def body2_460 : WordLangProgHOL (BitVec 64) :=
.seq body2_456 body2_459

def body2_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 833), (869, 829), (865, 825), (861, 821), (857, 817)]

def body2_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(877, 813)]

def body2_463 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_462

def body2_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(881, 841)]

def body2_465 : WordLangProgHOL (BitVec 64) :=
.seq body2_463 body2_464

def body2_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(885, 845)]

def body2_467 : WordLangProgHOL (BitVec 64) :=
.seq body2_465 body2_466

def body2_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(889, 837)]

def body2_469 : WordLangProgHOL (BitVec 64) :=
.seq body2_467 body2_468

def body2_470 : WordLangProgHOL (BitVec 64) :=
.seq body2_461 body2_469

def body2_471 : WordLangProgHOL (BitVec 64) :=
.seq body2_460 body2_470

def body2_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 0#64)

def body2_473 : WordLangProgHOL (BitVec 64) :=
.seq body2_472 body2_2

def body2_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 853 0#64)

def body2_475 : WordLangProgHOL (BitVec 64) :=
.seq body2_473 body2_474

def body2_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body2_477 : WordLangProgHOL (BitVec 64) :=
.seq body2_475 body2_476

def body2_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (869, 853), (865, 849), (861, 41), (857, 37)]

def body2_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 877 0#64)

def body2_480 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_479

def body2_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 881 0#64)

def body2_482 : WordLangProgHOL (BitVec 64) :=
.seq body2_480 body2_481

def body2_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 885 0#64)

def body2_484 : WordLangProgHOL (BitVec 64) :=
.seq body2_482 body2_483

def body2_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 0#64)

def body2_486 : WordLangProgHOL (BitVec 64) :=
.seq body2_484 body2_485

def body2_487 : WordLangProgHOL (BitVec 64) :=
.seq body2_478 body2_486

def body2_488 : WordLangProgHOL (BitVec 64) :=
.seq body2_477 body2_487

def body2_489 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body2_471 body2_488

def body2_490 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_489

def body2_491 : WordLangProgHOL (BitVec 64) :=
.seq body2_490 body2_2

def body2_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body2_493 : WordLangProgHOL (BitVec 64) :=
.seq body2_491 body2_492

def body2_494 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body2_493 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body2_495 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_494

def body2_496 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_495

def body2_497 : WordLangProgHOL (BitVec 64) :=
.seq body2_496 body2_2

def body2_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body2_499 : WordLangProgHOL (BitVec 64) :=
.seq body2_497 body2_498

def body2_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body2_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body2_502 : WordLangProgHOL (BitVec 64) :=
.seq body2_500 body2_501

def body2_503 : WordLangProgHOL (BitVec 64) :=
.seq body2_499 body2_502

def body2_504 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_503

def pass2 : WordLangProgHOL (BitVec 64) := body2_504
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 29), (461, 89), (453, 37)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 101 Flapjack.WordStore.heapLength

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 105 101 (Flapjack.WordRegImm.imm 1#64)))

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 109 105

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 29), (425, 133), (417, 37)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 145 Flapjack.WordStore.heapLength

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 149 145 (Flapjack.WordRegImm.imm 1#64)))

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 153 149

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 157 (Flapjack.WordLangAddr.addr 153 18446744073709551360#64))

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 181 (Flapjack.WordLangAddr.addr 177 18446744073709551360#64))

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (389, 197), (381, 37)]

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 165)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 213 Flapjack.WordStore.heapLength

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 221 217

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 225 (Flapjack.WordLangAddr.addr 221 18446744073709551360#64))

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(247, 29), (251, 53), (255, 37)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241)]

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 247), (265, 251), (269, 255)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 261), (357, 265), (353, 269)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 261), (341, 265), (337, 269)]

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body3_98 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_97

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(291, 261), (295, 265), (299, 269)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_93

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
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_103, 604, 3)) (some 599) ([2]) (some (2, body3_108, 604, 4))

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_2

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313)]

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body3_96 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_2

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body3_90, 604, 2)) (some 597) ([2]) (some (2, body3_121, 604, 5))

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_123

def body3_125 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_2

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (389, 357), (381, 353)]

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body3_67 body3_128

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_2

def body3_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 397), (425, 389), (417, 381)]

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body3_41 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_135 body3_2

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 437), (461, 425), (453, 417)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body3_25 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_2

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_142

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body3_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_149 body3_93

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_147, 604, 6)) (some 602) ([]) (some (2, body3_152, 604, 7))

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_153

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_155 body3_2

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_159 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_161 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_165

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body3_168 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_167

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 569 Flapjack.WordStore.heapLength

def body3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 573 569 (Flapjack.WordRegImm.imm 1#64)))

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_170

def body3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 577 573

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_171 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_173 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 585 Flapjack.WordStore.heapLength

def body3_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 589 585 (Flapjack.WordRegImm.imm 1#64)))

def body3_179 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_178

def body3_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 593 589

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_179 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 597 (Flapjack.WordLangAddr.addr 593 18446744073709551328#64))

def body3_183 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_182

def body3_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body3_185 : WordLangProgHOL (BitVec 64) :=
.seq body3_183 body3_184

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_176 body3_185

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581)]

def body3_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_189 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_191

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 613 Flapjack.WordStore.heapLength

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 617 613 (Flapjack.WordRegImm.imm 1#64)))

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 621 617

def body3_197 : WordLangProgHOL (BitVec 64) :=
.seq body3_195 body3_196

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body3_199 : WordLangProgHOL (BitVec 64) :=
.seq body3_197 body3_198

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_199

def body3_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 629 Flapjack.WordStore.heapLength

def body3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 633 629 (Flapjack.WordRegImm.imm 1#64)))

def body3_203 : WordLangProgHOL (BitVec 64) :=
.seq body3_201 body3_202

def body3_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 637 633

def body3_205 : WordLangProgHOL (BitVec 64) :=
.seq body3_203 body3_204

def body3_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body3_207 : WordLangProgHOL (BitVec 64) :=
.seq body3_205 body3_206

def body3_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body3_209 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_208

def body3_210 : WordLangProgHOL (BitVec 64) :=
.seq body3_200 body3_209

def body3_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(649, 645)]

def body3_212 : WordLangProgHOL (BitVec 64) :=
.seq body3_210 body3_211

def body3_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625)]

def body3_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_213 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
.seq body3_212 body3_215

def body3_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body3_218 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_217

def body3_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (781, 657)]

def body3_220 : WordLangProgHOL (BitVec 64) :=
.seq body3_218 body3_219

def body3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body3_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 671), (685, 675)]

def body3_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 681), (757, 685)]

def body3_224 : WordLangProgHOL (BitVec 64) :=
.seq body3_222 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2)]

def body3_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body3_227 : WordLangProgHOL (BitVec 64) :=
.seq body3_226 body3_93

def body3_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 681), (741, 685)]

def body3_229 : WordLangProgHOL (BitVec 64) :=
.seq body3_227 body3_228

def body3_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body3_233 : WordLangProgHOL (BitVec 64) :=
.seq body3_231 body3_232

def body3_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(707, 681), (711, 685)]

def body3_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 701)]

def body3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body3_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(729, 2)]

def body3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 729)]

def body3_239 : WordLangProgHOL (BitVec 64) :=
.seq body3_238 body3_93

def body3_240 : WordLangProgHOL (BitVec 64) :=
.seq body3_237 body3_239

def body3_241 : WordLangProgHOL (BitVec 64) :=
.seq body3_236 body3_240

def body3_242 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_236, 604, 9)) (some 599) ([2]) (some (2, body3_241, 604, 10))

def body3_243 : WordLangProgHOL (BitVec 64) :=
.seq body3_235 body3_242

def body3_244 : WordLangProgHOL (BitVec 64) :=
.seq body3_234 body3_243

def body3_245 : WordLangProgHOL (BitVec 64) :=
.seq body3_233 body3_244

def body3_246 : WordLangProgHOL (BitVec 64) :=
.seq body3_245 body3_2

def body3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (741, 721)]

def body3_248 : WordLangProgHOL (BitVec 64) :=
.seq body3_246 body3_247

def body3_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body3_229 body3_248

def body3_250 : WordLangProgHOL (BitVec 64) :=
.seq body3_249 body3_2

def body3_251 : WordLangProgHOL (BitVec 64) :=
.seq body3_225 body3_250

def body3_252 : WordLangProgHOL (BitVec 64) :=
.seq body3_222 body3_251

def body3_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body3_254 : WordLangProgHOL (BitVec 64) :=
.seq body3_252 body3_253

def body3_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_224, 604, 8)) (some 603) ([]) (some (2, body3_254, 604, 11))

def body3_256 : WordLangProgHOL (BitVec 64) :=
.seq body3_221 body3_255

def body3_257 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_256

def body3_258 : WordLangProgHOL (BitVec 64) :=
.seq body3_257 body3_2

def body3_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (781, 757)]

def body3_260 : WordLangProgHOL (BitVec 64) :=
.seq body3_258 body3_259

def body3_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body3_220 body3_260

def body3_262 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_261

def body3_263 : WordLangProgHOL (BitVec 64) :=
.seq body3_262 body3_2

def body3_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 793), (817, 781)]

def body3_265 : WordLangProgHOL (BitVec 64) :=
.seq body3_263 body3_264

def body3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 473), (817, 453)]

def body3_267 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_266

def body3_268 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body3_265 body3_267

def body3_269 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_268

def body3_270 : WordLangProgHOL (BitVec 64) :=
.seq body3_269 body3_2

def body3_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body3_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body3_273 : WordLangProgHOL (BitVec 64) :=
.seq body3_271 body3_272

def body3_274 : WordLangProgHOL (BitVec 64) :=
.seq body3_270 body3_273

def body3_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 833), (857, 817)]

def body3_276 : WordLangProgHOL (BitVec 64) :=
.seq body3_274 body3_275

def body3_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body3_278 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_277

def body3_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (857, 37)]

def body3_280 : WordLangProgHOL (BitVec 64) :=
.seq body3_278 body3_279

def body3_281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body3_276 body3_280

def body3_282 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_281

def body3_283 : WordLangProgHOL (BitVec 64) :=
.seq body3_282 body3_2

def body3_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body3_285 : WordLangProgHOL (BitVec 64) :=
.seq body3_283 body3_284

def body3_286 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body3_285 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body3_287 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_286

def body3_288 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_287

def body3_289 : WordLangProgHOL (BitVec 64) :=
.seq body3_288 body3_2

def body3_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body3_291 : WordLangProgHOL (BitVec 64) :=
.seq body3_289 body3_290

def body3_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body3_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body3_294 : WordLangProgHOL (BitVec 64) :=
.seq body3_292 body3_293

def body3_295 : WordLangProgHOL (BitVec 64) :=
.seq body3_291 body3_294

def body3_296 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_295

def pass3 : WordLangProgHOL (BitVec 64) := body3_296
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 29), (461, 89), (453, 37)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 57)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 61)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 65)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 29), (425, 133), (417, 37)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 101)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 105)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 109)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 113)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 157)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (389, 197), (381, 37)]

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 165)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 169)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 173)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(247, 29), (251, 53), (255, 37)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241)]

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 247), (265, 251), (269, 255)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 261), (357, 265), (353, 269)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 261), (341, 265), (337, 269)]

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body4_98 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_97

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(291, 261), (295, 265), (299, 269)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_93

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
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_103, 604, 3)) (some 599) ([2]) (some (2, body4_108, 604, 4))

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_2

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313)]

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body4_96 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_2

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body4_90, 604, 2)) (some 597) ([2]) (some (2, body4_121, 604, 5))

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_123

def body4_125 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_2

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (389, 357), (381, 353)]

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body4_67 body4_128

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_2

def body4_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 397), (425, 389), (417, 381)]

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body4_41 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_135 body4_2

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 437), (461, 425), (453, 417)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body4_25 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_2

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_142

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body4_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_149 body4_93

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_147, 604, 6)) (some 602) ([]) (some (2, body4_152, 604, 7))

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_153

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_155 body4_2

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_159 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_161 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_165

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body4_168 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_167

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 537)]

def body4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(573, 541)]

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_170

def body4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(577, 545)]

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_171 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_173 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 569)]

def body4_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 573)]

def body4_179 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_178

def body4_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(593, 577)]

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_179 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 549)]

def body4_183 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_182

def body4_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body4_185 : WordLangProgHOL (BitVec 64) :=
.seq body4_183 body4_184

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_176 body4_185

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581)]

def body4_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_189 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_191

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 585)]

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(617, 589)]

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 593)]

def body4_197 : WordLangProgHOL (BitVec 64) :=
.seq body4_195 body4_196

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body4_199 : WordLangProgHOL (BitVec 64) :=
.seq body4_197 body4_198

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_199

def body4_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 613)]

def body4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 617)]

def body4_203 : WordLangProgHOL (BitVec 64) :=
.seq body4_201 body4_202

def body4_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(637, 621)]

def body4_205 : WordLangProgHOL (BitVec 64) :=
.seq body4_203 body4_204

def body4_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body4_207 : WordLangProgHOL (BitVec 64) :=
.seq body4_205 body4_206

def body4_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body4_209 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_208

def body4_210 : WordLangProgHOL (BitVec 64) :=
.seq body4_200 body4_209

def body4_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(649, 645)]

def body4_212 : WordLangProgHOL (BitVec 64) :=
.seq body4_210 body4_211

def body4_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625)]

def body4_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_213 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
.seq body4_212 body4_215

def body4_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body4_218 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_217

def body4_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (781, 657)]

def body4_220 : WordLangProgHOL (BitVec 64) :=
.seq body4_218 body4_219

def body4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body4_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 671), (685, 675)]

def body4_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 681), (757, 685)]

def body4_224 : WordLangProgHOL (BitVec 64) :=
.seq body4_222 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2)]

def body4_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body4_227 : WordLangProgHOL (BitVec 64) :=
.seq body4_226 body4_93

def body4_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 681), (741, 685)]

def body4_229 : WordLangProgHOL (BitVec 64) :=
.seq body4_227 body4_228

def body4_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body4_233 : WordLangProgHOL (BitVec 64) :=
.seq body4_231 body4_232

def body4_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(707, 681), (711, 685)]

def body4_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 701)]

def body4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body4_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(729, 2)]

def body4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 729)]

def body4_239 : WordLangProgHOL (BitVec 64) :=
.seq body4_238 body4_93

def body4_240 : WordLangProgHOL (BitVec 64) :=
.seq body4_237 body4_239

def body4_241 : WordLangProgHOL (BitVec 64) :=
.seq body4_236 body4_240

def body4_242 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_236, 604, 9)) (some 599) ([2]) (some (2, body4_241, 604, 10))

def body4_243 : WordLangProgHOL (BitVec 64) :=
.seq body4_235 body4_242

def body4_244 : WordLangProgHOL (BitVec 64) :=
.seq body4_234 body4_243

def body4_245 : WordLangProgHOL (BitVec 64) :=
.seq body4_233 body4_244

def body4_246 : WordLangProgHOL (BitVec 64) :=
.seq body4_245 body4_2

def body4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (741, 721)]

def body4_248 : WordLangProgHOL (BitVec 64) :=
.seq body4_246 body4_247

def body4_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body4_229 body4_248

def body4_250 : WordLangProgHOL (BitVec 64) :=
.seq body4_249 body4_2

def body4_251 : WordLangProgHOL (BitVec 64) :=
.seq body4_225 body4_250

def body4_252 : WordLangProgHOL (BitVec 64) :=
.seq body4_222 body4_251

def body4_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body4_254 : WordLangProgHOL (BitVec 64) :=
.seq body4_252 body4_253

def body4_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_224, 604, 8)) (some 603) ([]) (some (2, body4_254, 604, 11))

def body4_256 : WordLangProgHOL (BitVec 64) :=
.seq body4_221 body4_255

def body4_257 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_256

def body4_258 : WordLangProgHOL (BitVec 64) :=
.seq body4_257 body4_2

def body4_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (781, 757)]

def body4_260 : WordLangProgHOL (BitVec 64) :=
.seq body4_258 body4_259

def body4_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body4_220 body4_260

def body4_262 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_261

def body4_263 : WordLangProgHOL (BitVec 64) :=
.seq body4_262 body4_2

def body4_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 793), (817, 781)]

def body4_265 : WordLangProgHOL (BitVec 64) :=
.seq body4_263 body4_264

def body4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 473), (817, 453)]

def body4_267 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_266

def body4_268 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body4_265 body4_267

def body4_269 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_268

def body4_270 : WordLangProgHOL (BitVec 64) :=
.seq body4_269 body4_2

def body4_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body4_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body4_273 : WordLangProgHOL (BitVec 64) :=
.seq body4_271 body4_272

def body4_274 : WordLangProgHOL (BitVec 64) :=
.seq body4_270 body4_273

def body4_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 833), (857, 817)]

def body4_276 : WordLangProgHOL (BitVec 64) :=
.seq body4_274 body4_275

def body4_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body4_278 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_277

def body4_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (857, 37)]

def body4_280 : WordLangProgHOL (BitVec 64) :=
.seq body4_278 body4_279

def body4_281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body4_276 body4_280

def body4_282 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_281

def body4_283 : WordLangProgHOL (BitVec 64) :=
.seq body4_282 body4_2

def body4_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body4_285 : WordLangProgHOL (BitVec 64) :=
.seq body4_283 body4_284

def body4_286 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body4_285 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body4_287 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_286

def body4_288 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_287

def body4_289 : WordLangProgHOL (BitVec 64) :=
.seq body4_288 body4_2

def body4_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body4_291 : WordLangProgHOL (BitVec 64) :=
.seq body4_289 body4_290

def body4_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body4_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body4_294 : WordLangProgHOL (BitVec 64) :=
.seq body4_292 body4_293

def body4_295 : WordLangProgHOL (BitVec 64) :=
.seq body4_291 body4_294

def body4_296 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_295

def pass4 : WordLangProgHOL (BitVec 64) := body4_296
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 29), (461, 89), (453, 37)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 57)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 61)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 65)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 29), (425, 133), (417, 37)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 101)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 105)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 109)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 113)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 157)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (389, 197), (381, 37)]

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 165)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 169)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 173)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(247, 29), (251, 53), (255, 37)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241)]

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 247), (265, 251), (269, 255)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 261), (357, 265), (353, 269)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 261), (341, 265), (337, 269)]

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body5_98 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_97

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(291, 261), (295, 265), (299, 269)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_93

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
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_103, 604, 3)) (some 599) ([2]) (some (2, body5_108, 604, 4))

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_2

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313)]

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body5_96 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_2

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body5_90, 604, 2)) (some 597) ([2]) (some (2, body5_121, 604, 5))

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_123

def body5_125 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_2

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (389, 357), (381, 353)]

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body5_67 body5_128

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_2

def body5_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 397), (425, 389), (417, 381)]

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body5_41 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_135 body5_2

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 437), (461, 425), (453, 417)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body5_25 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_2

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_142

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body5_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_149 body5_93

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_147, 604, 6)) (some 602) ([]) (some (2, body5_152, 604, 7))

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_153

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_155 body5_2

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_159 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_161 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_165

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body5_168 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_167

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 537)]

def body5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(573, 541)]

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_170

def body5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(577, 545)]

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_171 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_173 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 569)]

def body5_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 573)]

def body5_179 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_178

def body5_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(593, 577)]

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_179 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 549)]

def body5_183 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_182

def body5_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body5_185 : WordLangProgHOL (BitVec 64) :=
.seq body5_183 body5_184

def body5_186 : WordLangProgHOL (BitVec 64) :=
.seq body5_176 body5_185

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581)]

def body5_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_189 body5_190

def body5_192 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_191

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 585)]

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(617, 589)]

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 593)]

def body5_197 : WordLangProgHOL (BitVec 64) :=
.seq body5_195 body5_196

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body5_199 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_198

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_199

def body5_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 613)]

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 617)]

def body5_203 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_202

def body5_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(637, 621)]

def body5_205 : WordLangProgHOL (BitVec 64) :=
.seq body5_203 body5_204

def body5_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_205 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body5_209 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_208

def body5_210 : WordLangProgHOL (BitVec 64) :=
.seq body5_200 body5_209

def body5_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(649, 645)]

def body5_212 : WordLangProgHOL (BitVec 64) :=
.seq body5_210 body5_211

def body5_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625)]

def body5_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_213 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
.seq body5_212 body5_215

def body5_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body5_218 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_217

def body5_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (781, 657)]

def body5_220 : WordLangProgHOL (BitVec 64) :=
.seq body5_218 body5_219

def body5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body5_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 671), (685, 675)]

def body5_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 681), (757, 685)]

def body5_224 : WordLangProgHOL (BitVec 64) :=
.seq body5_222 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2)]

def body5_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body5_227 : WordLangProgHOL (BitVec 64) :=
.seq body5_226 body5_93

def body5_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 681), (741, 685)]

def body5_229 : WordLangProgHOL (BitVec 64) :=
.seq body5_227 body5_228

def body5_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body5_233 : WordLangProgHOL (BitVec 64) :=
.seq body5_231 body5_232

def body5_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(707, 681), (711, 685)]

def body5_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 701)]

def body5_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body5_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(729, 2)]

def body5_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 729)]

def body5_239 : WordLangProgHOL (BitVec 64) :=
.seq body5_238 body5_93

def body5_240 : WordLangProgHOL (BitVec 64) :=
.seq body5_237 body5_239

def body5_241 : WordLangProgHOL (BitVec 64) :=
.seq body5_236 body5_240

def body5_242 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_236, 604, 9)) (some 599) ([2]) (some (2, body5_241, 604, 10))

def body5_243 : WordLangProgHOL (BitVec 64) :=
.seq body5_235 body5_242

def body5_244 : WordLangProgHOL (BitVec 64) :=
.seq body5_234 body5_243

def body5_245 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_244

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_245 body5_2

def body5_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (741, 721)]

def body5_248 : WordLangProgHOL (BitVec 64) :=
.seq body5_246 body5_247

def body5_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body5_229 body5_248

def body5_250 : WordLangProgHOL (BitVec 64) :=
.seq body5_249 body5_2

def body5_251 : WordLangProgHOL (BitVec 64) :=
.seq body5_225 body5_250

def body5_252 : WordLangProgHOL (BitVec 64) :=
.seq body5_222 body5_251

def body5_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body5_254 : WordLangProgHOL (BitVec 64) :=
.seq body5_252 body5_253

def body5_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_224, 604, 8)) (some 603) ([]) (some (2, body5_254, 604, 11))

def body5_256 : WordLangProgHOL (BitVec 64) :=
.seq body5_221 body5_255

def body5_257 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_256

def body5_258 : WordLangProgHOL (BitVec 64) :=
.seq body5_257 body5_2

def body5_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (781, 757)]

def body5_260 : WordLangProgHOL (BitVec 64) :=
.seq body5_258 body5_259

def body5_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body5_220 body5_260

def body5_262 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_261

def body5_263 : WordLangProgHOL (BitVec 64) :=
.seq body5_262 body5_2

def body5_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 793), (817, 781)]

def body5_265 : WordLangProgHOL (BitVec 64) :=
.seq body5_263 body5_264

def body5_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 473), (817, 453)]

def body5_267 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_266

def body5_268 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body5_265 body5_267

def body5_269 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_268

def body5_270 : WordLangProgHOL (BitVec 64) :=
.seq body5_269 body5_2

def body5_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body5_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body5_273 : WordLangProgHOL (BitVec 64) :=
.seq body5_271 body5_272

def body5_274 : WordLangProgHOL (BitVec 64) :=
.seq body5_270 body5_273

def body5_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (857, 33)]

def body5_276 : WordLangProgHOL (BitVec 64) :=
.seq body5_274 body5_275

def body5_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body5_278 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_277

def body5_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (857, 37)]

def body5_280 : WordLangProgHOL (BitVec 64) :=
.seq body5_278 body5_279

def body5_281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body5_276 body5_280

def body5_282 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_281

def body5_283 : WordLangProgHOL (BitVec 64) :=
.seq body5_282 body5_2

def body5_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body5_285 : WordLangProgHOL (BitVec 64) :=
.seq body5_283 body5_284

def body5_286 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body5_285 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body5_287 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_286

def body5_288 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_287

def body5_289 : WordLangProgHOL (BitVec 64) :=
.seq body5_288 body5_2

def body5_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body5_291 : WordLangProgHOL (BitVec 64) :=
.seq body5_289 body5_290

def body5_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body5_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body5_294 : WordLangProgHOL (BitVec 64) :=
.seq body5_292 body5_293

def body5_295 : WordLangProgHOL (BitVec 64) :=
.seq body5_291 body5_294

def body5_296 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_295

def pass5 : WordLangProgHOL (BitVec 64) := body5_296
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 29), (461, 89), (453, 37)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 57)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 61)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 65)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 29), (425, 133), (417, 37)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 101)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 105)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(153, 109)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 113)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 145)]

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 157)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (389, 197), (381, 37)]

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 165)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 169)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 173)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 177)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 181)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 237)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(247, 29), (251, 53), (255, 37)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 241)]

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(261, 247), (265, 251), (269, 255)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 261), (357, 265), (353, 269)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 261), (341, 265), (337, 269)]

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body6_98 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_97

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(291, 261), (295, 265), (299, 269)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 285)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 321)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_93

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
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_103, 604, 3)) (some 599) ([2]) (some (2, body6_108, 604, 4))

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_2

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313)]

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body6_96 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_2

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body6_90, 604, 2)) (some 597) ([2]) (some (2, body6_121, 604, 5))

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_123

def body6_125 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_2

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (389, 357), (381, 353)]

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body6_67 body6_128

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_2

def body6_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 397), (425, 389), (417, 381)]

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body6_41 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_135 body6_2

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 437), (461, 425), (453, 417)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body6_25 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_2

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_142

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body6_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 2)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 525)]

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_149 body6_93

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_147, 604, 6)) (some 602) ([]) (some (2, body6_152, 604, 7))

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_153

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_155 body6_2

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_159 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_161 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_165

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body6_168 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_167

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 537)]

def body6_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(573, 541)]

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_170

def body6_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(577, 545)]

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_171 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_173 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 569)]

def body6_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(589, 573)]

def body6_179 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_178

def body6_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(593, 577)]

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_179 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 549)]

def body6_183 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_182

def body6_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body6_185 : WordLangProgHOL (BitVec 64) :=
.seq body6_183 body6_184

def body6_186 : WordLangProgHOL (BitVec 64) :=
.seq body6_176 body6_185

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581)]

def body6_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_189 body6_190

def body6_192 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_191

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 585)]

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(617, 589)]

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 593)]

def body6_197 : WordLangProgHOL (BitVec 64) :=
.seq body6_195 body6_196

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body6_199 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_198

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_199

def body6_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(629, 613)]

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(633, 617)]

def body6_203 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_202

def body6_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(637, 621)]

def body6_205 : WordLangProgHOL (BitVec 64) :=
.seq body6_203 body6_204

def body6_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_205 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body6_209 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_208

def body6_210 : WordLangProgHOL (BitVec 64) :=
.seq body6_200 body6_209

def body6_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(649, 645)]

def body6_212 : WordLangProgHOL (BitVec 64) :=
.seq body6_210 body6_211

def body6_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625)]

def body6_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_213 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
.seq body6_212 body6_215

def body6_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body6_218 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_217

def body6_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (781, 657)]

def body6_220 : WordLangProgHOL (BitVec 64) :=
.seq body6_218 body6_219

def body6_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body6_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 671), (685, 675)]

def body6_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 681), (757, 685)]

def body6_224 : WordLangProgHOL (BitVec 64) :=
.seq body6_222 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2)]

def body6_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body6_227 : WordLangProgHOL (BitVec 64) :=
.seq body6_226 body6_93

def body6_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 681), (741, 685)]

def body6_229 : WordLangProgHOL (BitVec 64) :=
.seq body6_227 body6_228

def body6_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 697)]

def body6_233 : WordLangProgHOL (BitVec 64) :=
.seq body6_231 body6_232

def body6_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(707, 681), (711, 685)]

def body6_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 701)]

def body6_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body6_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(729, 2)]

def body6_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 729)]

def body6_239 : WordLangProgHOL (BitVec 64) :=
.seq body6_238 body6_93

def body6_240 : WordLangProgHOL (BitVec 64) :=
.seq body6_237 body6_239

def body6_241 : WordLangProgHOL (BitVec 64) :=
.seq body6_236 body6_240

def body6_242 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_236, 604, 9)) (some 599) ([2]) (some (2, body6_241, 604, 10))

def body6_243 : WordLangProgHOL (BitVec 64) :=
.seq body6_235 body6_242

def body6_244 : WordLangProgHOL (BitVec 64) :=
.seq body6_234 body6_243

def body6_245 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_244

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_245 body6_2

def body6_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (741, 721)]

def body6_248 : WordLangProgHOL (BitVec 64) :=
.seq body6_246 body6_247

def body6_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body6_229 body6_248

def body6_250 : WordLangProgHOL (BitVec 64) :=
.seq body6_249 body6_2

def body6_251 : WordLangProgHOL (BitVec 64) :=
.seq body6_225 body6_250

def body6_252 : WordLangProgHOL (BitVec 64) :=
.seq body6_222 body6_251

def body6_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body6_254 : WordLangProgHOL (BitVec 64) :=
.seq body6_252 body6_253

def body6_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_224, 604, 8)) (some 603) ([]) (some (2, body6_254, 604, 11))

def body6_256 : WordLangProgHOL (BitVec 64) :=
.seq body6_221 body6_255

def body6_257 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_256

def body6_258 : WordLangProgHOL (BitVec 64) :=
.seq body6_257 body6_2

def body6_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (781, 757)]

def body6_260 : WordLangProgHOL (BitVec 64) :=
.seq body6_258 body6_259

def body6_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body6_220 body6_260

def body6_262 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_261

def body6_263 : WordLangProgHOL (BitVec 64) :=
.seq body6_262 body6_2

def body6_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 793), (817, 781)]

def body6_265 : WordLangProgHOL (BitVec 64) :=
.seq body6_263 body6_264

def body6_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 473), (817, 453)]

def body6_267 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_266

def body6_268 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body6_265 body6_267

def body6_269 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_268

def body6_270 : WordLangProgHOL (BitVec 64) :=
.seq body6_269 body6_2

def body6_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body6_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body6_273 : WordLangProgHOL (BitVec 64) :=
.seq body6_271 body6_272

def body6_274 : WordLangProgHOL (BitVec 64) :=
.seq body6_270 body6_273

def body6_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (857, 33)]

def body6_276 : WordLangProgHOL (BitVec 64) :=
.seq body6_274 body6_275

def body6_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body6_278 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_277

def body6_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 29), (857, 37)]

def body6_280 : WordLangProgHOL (BitVec 64) :=
.seq body6_278 body6_279

def body6_281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body6_276 body6_280

def body6_282 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_281

def body6_283 : WordLangProgHOL (BitVec 64) :=
.seq body6_282 body6_2

def body6_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body6_285 : WordLangProgHOL (BitVec 64) :=
.seq body6_283 body6_284

def body6_286 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body6_285 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body6_287 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_286

def body6_288 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_287

def body6_289 : WordLangProgHOL (BitVec 64) :=
.seq body6_288 body6_2

def body6_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body6_291 : WordLangProgHOL (BitVec 64) :=
.seq body6_289 body6_290

def body6_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body6_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body6_294 : WordLangProgHOL (BitVec 64) :=
.seq body6_292 body6_293

def body6_295 : WordLangProgHOL (BitVec 64) :=
.seq body6_291 body6_294

def body6_296 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_295

def pass6 : WordLangProgHOL (BitVec 64) := body6_296
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 29), (461, 89), (453, 37)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 65), (105, 61), (101, 57)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 29), (425, 133), (417, 37)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 113), (153, 109), (149, 105), (145, 101)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 157), (177, 153), (173, 149), (169, 145), (165, 161)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (389, 197), (381, 37)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 181), (221, 177), (217, 173), (213, 169), (209, 165)]

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237), (247, 29), (251, 53), (255, 37), (241, 237)]

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 247), (357, 251), (353, 255), (261, 247), (265, 251), (269, 255)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2), (261, 247), (265, 251), (269, 255)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 281), (291, 261), (295, 265), (299, 269), (285, 281)]

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (321, 2), (305, 291), (309, 295), (313, 299)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_41

def body7_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_45, 604, 3)) (some 599) ([2]) (some (2, body7_47, 604, 4))

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313)]

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body7_42 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body7_38, 604, 2)) (some 597) ([2]) (some (2, body7_59, 604, 5))

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (389, 357), (381, 353)]

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body7_32 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 397), (425, 389), (417, 381)]

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body7_24 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 437), (461, 425), (453, 417)]

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body7_16 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body7_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body7_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body7_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body7_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (525, 2), (513, 503), (517, 507)]

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_93 body7_41

def body7_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_92, 604, 6)) (some 602) ([]) (some (2, body7_94, 604, 7))

def body7_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body7_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body7_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body7_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body7_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body7_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body7_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 545), (573, 541), (569, 537)]

def body7_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body7_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 549), (593, 577), (589, 573), (585, 569)]

def body7_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body7_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581), (605, 601)]

def body7_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body7_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 593), (617, 589), (613, 585)]

def body7_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body7_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(637, 621), (633, 617), (629, 613)]

def body7_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body7_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body7_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625), (649, 645)]

def body7_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body7_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body7_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (781, 657)]

def body7_117 : WordLangProgHOL (BitVec 64) :=
.seq body7_115 body7_116

def body7_118 : WordLangProgHOL (BitVec 64) :=
.seq body7_114 body7_117

def body7_119 : WordLangProgHOL (BitVec 64) :=
.seq body7_113 body7_118

def body7_120 : WordLangProgHOL (BitVec 64) :=
.seq body7_112 body7_119

def body7_121 : WordLangProgHOL (BitVec 64) :=
.seq body7_111 body7_120

def body7_122 : WordLangProgHOL (BitVec 64) :=
.seq body7_110 body7_121

def body7_123 : WordLangProgHOL (BitVec 64) :=
.seq body7_109 body7_122

def body7_124 : WordLangProgHOL (BitVec 64) :=
.seq body7_108 body7_123

def body7_125 : WordLangProgHOL (BitVec 64) :=
.seq body7_107 body7_124

def body7_126 : WordLangProgHOL (BitVec 64) :=
.seq body7_106 body7_125

def body7_127 : WordLangProgHOL (BitVec 64) :=
.seq body7_105 body7_126

def body7_128 : WordLangProgHOL (BitVec 64) :=
.seq body7_104 body7_127

def body7_129 : WordLangProgHOL (BitVec 64) :=
.seq body7_103 body7_128

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_102 body7_129

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body7_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 671), (757, 675), (681, 671), (685, 675)]

def body7_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2), (681, 671), (685, 675)]

def body7_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_135 body7_41

def body7_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body7_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 697), (707, 681), (711, 685), (701, 697)]

def body7_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body7_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (729, 2), (717, 707), (721, 711)]

def body7_141 : WordLangProgHOL (BitVec 64) :=
.seq body7_140 body7_41

def body7_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_139, 604, 9)) (some 599) ([2]) (some (2, body7_141, 604, 10))

def body7_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (741, 721)]

def body7_144 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_143

def body7_145 : WordLangProgHOL (BitVec 64) :=
.seq body7_142 body7_144

def body7_146 : WordLangProgHOL (BitVec 64) :=
.seq body7_138 body7_145

def body7_147 : WordLangProgHOL (BitVec 64) :=
.seq body7_137 body7_146

def body7_148 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_147

def body7_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body7_136 body7_148

def body7_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_150

def body7_152 : WordLangProgHOL (BitVec 64) :=
.seq body7_149 body7_151

def body7_153 : WordLangProgHOL (BitVec 64) :=
.seq body7_134 body7_152

def body7_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_133, 604, 8)) (some 603) ([]) (some (2, body7_153, 604, 11))

def body7_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (781, 757)]

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_154 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_132 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body7_131 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 793), (817, 781)]

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_160 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_101 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_100 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_99 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_98 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_97 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_96 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_95 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_91 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 473), (817, 453)]

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body7_173 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body7_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_177 body7_178

def body7_180 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_179

def body7_181 : WordLangProgHOL (BitVec 64) :=
.seq body7_176 body7_180

def body7_182 : WordLangProgHOL (BitVec 64) :=
.seq body7_90 body7_181

def body7_183 : WordLangProgHOL (BitVec 64) :=
.seq body7_89 body7_182

def body7_184 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_183

def body7_185 : WordLangProgHOL (BitVec 64) :=
.seq body7_88 body7_184

def body7_186 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_185

def body7_187 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_186

def body7_188 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_187

def body7_189 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_188

def body7_190 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_189

def body7_191 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_190

def body7_192 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_191

def body7_193 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_192

def body7_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body7_195 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_194

def body7_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body7_193 body7_195

def body7_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body7_198 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_197

def body7_199 : WordLangProgHOL (BitVec 64) :=
.seq body7_196 body7_198

def body7_200 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_199

def body7_201 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_200

def body7_202 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body7_201 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body7_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body7_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body7_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body7_206 : WordLangProgHOL (BitVec 64) :=
.seq body7_204 body7_205

def body7_207 : WordLangProgHOL (BitVec 64) :=
.seq body7_203 body7_206

def body7_208 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_207

def body7_209 : WordLangProgHOL (BitVec 64) :=
.seq body7_202 body7_208

def body7_210 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_209

def body7_211 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_210

def body7_212 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_211

def body7_213 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_212

def pass7 : WordLangProgHOL (BitVec 64) := body7_213
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(21, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 1#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(29, 21), (33, 25)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 33)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551328#64))

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 32#64))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 1#64)

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 29), (461, 89), (453, 37)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 65)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 113 (Flapjack.WordLangAddr.addr 109 18446744073709551360#64))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 104#64))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 29), (425, 133), (417, 37)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 113)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 161 (Flapjack.WordLangAddr.addr 157 0#64))

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 157), (165, 161)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 185 (Flapjack.WordLangAddr.addr 181 56#64))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 1#64)

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 29), (389, 197), (381, 37)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 181), (209, 165)]

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 229 (Flapjack.WordLangAddr.addr 225 48#64))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 233 209 (Flapjack.WordRegImm.reg 229)))

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 237 (Flapjack.WordLangAddr.addr 233 0#64))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237), (247, 29), (251, 53), (255, 37)]

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 247), (357, 251), (353, 255)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 2), (261, 247), (265, 251), (269, 255)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 281 (Flapjack.WordStore.temp 0#5)

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 281), (291, 261), (295, 265), (299, 269)]

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 291), (309, 295), (313, 299)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (305, 291), (309, 295), (313, 299)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_41

def body8_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_45, 604, 3)) (some 599) ([2]) (some (2, body8_47, 604, 4))

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(345, 305), (341, 309), (337, 313)]

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 277 (Flapjack.WordRegImm.imm 8#64) body8_42 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 345), (357, 341), (353, 337)]

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body8_38, 604, 2)) (some 597) ([2]) (some (2, body8_59, 604, 5))

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(397, 361), (389, 357), (381, 353)]

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 165 (Flapjack.WordRegImm.reg 185) body8_32 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 397), (425, 389), (417, 381)]

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 117 (Flapjack.WordRegImm.reg 121) body8_24 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 437), (461, 425), (453, 417)]

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 73 (Flapjack.WordRegImm.reg 77) body8_16 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 461)]

def body8_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body8_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 473), (507, 453)]

def body8_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 503), (517, 507)]

def body8_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (513, 503), (517, 507)]

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_93 body8_41

def body8_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_92, 604, 6)) (some 602) ([]) (some (2, body8_94, 604, 7))

def body8_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 537 Flapjack.WordStore.heapLength

def body8_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 541 537 (Flapjack.WordRegImm.imm 1#64)))

def body8_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 545 541

def body8_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 549 (Flapjack.WordLangAddr.addr 545 18446744073709551328#64))

def body8_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 553 (Flapjack.WordLangAddr.addr 549 16#64))

def body8_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)

def body8_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(577, 545)]

def body8_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 581 577 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body8_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 549), (593, 577)]

def body8_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 601 (Flapjack.WordLangAddr.addr 597 0#64))

def body8_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 581), (605, 601)]

def body8_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body8_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 593)]

def body8_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body8_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(637, 621)]

def body8_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 18446744073709551328#64))

def body8_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 645 (Flapjack.WordLangAddr.addr 641 8#64))

def body8_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 625), (649, 645)]

def body8_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))

def body8_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)

def body8_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 513), (781, 657)]

def body8_117 : WordLangProgHOL (BitVec 64) :=
.seq body8_115 body8_116

def body8_118 : WordLangProgHOL (BitVec 64) :=
.seq body8_114 body8_117

def body8_119 : WordLangProgHOL (BitVec 64) :=
.seq body8_113 body8_118

def body8_120 : WordLangProgHOL (BitVec 64) :=
.seq body8_112 body8_119

def body8_121 : WordLangProgHOL (BitVec 64) :=
.seq body8_111 body8_120

def body8_122 : WordLangProgHOL (BitVec 64) :=
.seq body8_110 body8_121

def body8_123 : WordLangProgHOL (BitVec 64) :=
.seq body8_109 body8_122

def body8_124 : WordLangProgHOL (BitVec 64) :=
.seq body8_108 body8_123

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_107 body8_124

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_106 body8_125

def body8_127 : WordLangProgHOL (BitVec 64) :=
.seq body8_105 body8_126

def body8_128 : WordLangProgHOL (BitVec 64) :=
.seq body8_104 body8_127

def body8_129 : WordLangProgHOL (BitVec 64) :=
.seq body8_103 body8_128

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_102 body8_129

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(671, 513), (675, 517)]

def body8_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 671), (757, 675)]

def body8_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 2), (681, 671), (685, 675)]

def body8_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 693)]

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_135 body8_41

def body8_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 697 (Flapjack.WordStore.temp 0#5)

def body8_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 697), (707, 681), (711, 685)]

def body8_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 707), (721, 711)]

def body8_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (717, 707), (721, 711)]

def body8_141 : WordLangProgHOL (BitVec 64) :=
.seq body8_140 body8_41

def body8_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_139, 604, 9)) (some 599) ([2]) (some (2, body8_141, 604, 10))

def body8_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(749, 717), (741, 721)]

def body8_144 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_143

def body8_145 : WordLangProgHOL (BitVec 64) :=
.seq body8_142 body8_144

def body8_146 : WordLangProgHOL (BitVec 64) :=
.seq body8_138 body8_145

def body8_147 : WordLangProgHOL (BitVec 64) :=
.seq body8_137 body8_146

def body8_148 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_147

def body8_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 693 (Flapjack.WordRegImm.imm 8#64) body8_136 body8_148

def body8_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(761, 749), (757, 741)]

def body8_151 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_150

def body8_152 : WordLangProgHOL (BitVec 64) :=
.seq body8_149 body8_151

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_134 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_133, 604, 8)) (some 603) ([]) (some (2, body8_153, 604, 11))

def body8_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(793, 761), (781, 757)]

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_154 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_132 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 553 (Flapjack.WordRegImm.reg 557) body8_131 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 793), (817, 781)]

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_160 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_101 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_100 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_99 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_98 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_97 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_96 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_95 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_91 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(833, 473), (817, 453)]

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 485 (Flapjack.WordRegImm.reg 489) body8_173 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 833), (33, 817)]

def body8_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_177 body8_178

def body8_180 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_179

def body8_181 : WordLangProgHOL (BitVec 64) :=
.seq body8_176 body8_180

def body8_182 : WordLangProgHOL (BitVec 64) :=
.seq body8_90 body8_181

def body8_183 : WordLangProgHOL (BitVec 64) :=
.seq body8_89 body8_182

def body8_184 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_183

def body8_185 : WordLangProgHOL (BitVec 64) :=
.seq body8_88 body8_184

def body8_186 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_185

def body8_187 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_186

def body8_188 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_187

def body8_189 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_188

def body8_190 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_189

def body8_191 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_190

def body8_192 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_191

def body8_193 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_192

def body8_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body8_195 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_194

def body8_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 37 (Flapjack.WordRegImm.reg 41) body8_193 body8_195

def body8_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 873), (33, 857)]

def body8_198 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_197

def body8_199 : WordLangProgHOL (BitVec 64) :=
.seq body8_196 body8_198

def body8_200 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_199

def body8_201 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_200

def body8_202 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
    Flapjack.Spt.ln)) body8_201 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body8_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def body8_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 893)]

def body8_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 29 [2]

def body8_206 : WordLangProgHOL (BitVec 64) :=
.seq body8_204 body8_205

def body8_207 : WordLangProgHOL (BitVec 64) :=
.seq body8_203 body8_206

def body8_208 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_207

def body8_209 : WordLangProgHOL (BitVec 64) :=
.seq body8_202 body8_208

def body8_210 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_209

def body8_211 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_210

def body8_212 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_211

def body8_213 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_212

def pass8 : WordLangProgHOL (BitVec 64) := body8_213
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (4, 4)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551328#64))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 4)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 104#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 56#64))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (46, 48)]

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 44), (44, 46), (52, 48)]

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50), (0, 44), (52, 52)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (0, 44), (52, 52)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_29

def body10_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_33, 604, 3)) (some 599) ([2]) (some (2, body10_35, 604, 4))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (0, 0), (52, 52)]

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) body10_30 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 50), (0, 0), (46, 52)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_27, 604, 2)) (some 597) ([2]) (some (2, body10_47, 604, 5))

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 46)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 8) body10_16 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_50

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) body10_16 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_50

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) body10_16 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def body10_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_29

def body10_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_75, 604, 6)) (some 602) ([]) (some (2, body10_77, 604, 7))

def body10_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def body10_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body10_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def body10_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def body10_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body10_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551328#64))

def body10_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def body10_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def body10_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_89 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_88 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_87 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_86 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_85 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_84 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_83 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_82 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_81 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_80 body10_102

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_103

def body10_105 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_104

def body10_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46)]

def body10_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def body10_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_108 body10_29

def body10_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_107, 604, 9)) (some 599) ([2]) (some (2, body10_109, 604, 10))

def body10_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
.seq body10_110 body10_112

def body10_114 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_113

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) body10_30 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_117 body10_112

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_106, 604, 8)) (some 603) ([]) (some (2, body10_119, 604, 11))

def body10_121 : WordLangProgHOL (BitVec 64) :=
.seq body10_120 body10_112

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) body10_105 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_124 body10_112

def body10_126 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_125

def body10_127 : WordLangProgHOL (BitVec 64) :=
.seq body10_79 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_127

def body10_129 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_128

def body10_130 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_129

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_130

def body10_132 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_131

def body10_133 : WordLangProgHOL (BitVec 64) :=
.seq body10_78 body10_132

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_106

def body10_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_135 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4)]

def body10_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_138 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_137 body10_141

def body10_143 : WordLangProgHOL (BitVec 64) :=
.seq body10_74 body10_142

def body10_144 : WordLangProgHOL (BitVec 64) :=
.seq body10_73 body10_143

def body10_145 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_144

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_72 body10_145

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_151

def body10_153 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_152

def body10_154 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_153

def body10_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body10_156 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_155

def body10_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) body10_154 body10_156

def body10_158 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_138

def body10_159 : WordLangProgHOL (BitVec 64) :=
.seq body10_157 body10_158

def body10_160 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_159

def body10_161 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_160

def body10_162 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln) ()
      Flapjack.Spt.ln))
  Flapjack.Spt.ln) body10_161 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def body10_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def body10_165 : WordLangProgHOL (BitVec 64) :=
.seq body10_163 body10_164

def body10_166 : WordLangProgHOL (BitVec 64) :=
.seq body10_74 body10_165

def body10_167 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_166

def body10_168 : WordLangProgHOL (BitVec 64) :=
.seq body10_162 body10_167

def body10_169 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_168

def body10_170 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_169

def body10_171 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_170

def body10_172 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_171

def pass10 : WordLangProgHOL (BitVec 64) := body10_172
end InitECandidate.Proofs.SmallStages.Compact604
