import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact834
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 0))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 23)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 2))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 23)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 1#64)

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 1#64)

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 89), (97, 77)]

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 81)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 93)]

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_34 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(101, 61), (97, 69)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 0#64)

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body2_42 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_19

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_19

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 160#64)

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(135, 37), (139, 61)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 135), (149, 139)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2), (157, 4)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_36

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 157)]

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_32

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 161)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_78, 834, 2)) (some 94) ([2, 4]) (some (2, body2_91, 834, 3))

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_19

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 1#64)

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_19

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 1#64)

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_32

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(209, 201), (205, 185)]

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 189)]

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 197)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(209, 165), (205, 177)]

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64)

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body2_122 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 0#64)

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_19

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_19

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 173)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 145), (243, 149), (247, 233)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 239), (257, 243), (261, 247)]

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_36

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 265)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 269)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_32

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 269)]

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_153, 834, 4)) (some 831) ([2]) (some (2, body2_164, 834, 5))

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_19

def body2_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 0), (289, 6)]

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_177

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 293)]

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 273)]

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 297), (4, 301)]

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 0), (305, 6)]

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 309)]

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 1000#64)

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_191

def body2_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(327, 253), (331, 257), (335, 281)]

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321)]

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 327), (345, 331), (349, 335)]

def body2_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 2), (357, 4)]

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_198 body2_36

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 357)]

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_202 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_200 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 2)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 361)]

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_32

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_197 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 361)]

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_215 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_220

def body2_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_208, 834, 6)) (some 94) ([2, 4]) (some (2, body2_221, 834, 7))

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_19

def body2_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 373)]

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_226 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(383, 341), (387, 345), (391, 349)]

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 377)]

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(409, 2)]

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_36

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64)

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 409)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2)]

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_242 body2_32

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(417, 413)]

def body2_247 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_246

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body2_240, 834, 8)) (some 472) ([2]) (some (2, body2_251, 834, 9))

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_228 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_19

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 128#64)

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 397), (439, 401), (443, 405)]

def body2_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429)]

def body2_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 435), (453, 439), (457, 443)]

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_36

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 0#64)

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 461)]

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_268 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_270

def body2_272 : WordLangProgHOL (BitVec 64) :=
.seq body2_266 body2_271

def body2_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 2)]

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_32

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_275

def body2_277 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_276

def body2_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 465)]

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_278

def body2_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_279 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_281

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_277 body2_282

def body2_284 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_272, 834, 10)) (some 68) ([2]) (some (2, body2_283, 834, 11))

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_262 body2_284

def body2_286 : WordLangProgHOL (BitVec 64) :=
.seq body2_261 body2_285

def body2_287 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_286

def body2_288 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_19

def body2_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body2_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_289 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
.seq body2_288 body2_291

def body2_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 457)]

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_292 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 473)]

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_294 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 449), (499, 489)]

def body2_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 485), (6, 489)]

def body2_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body2_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_300 body2_36

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body2_304 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_303

def body2_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 0#64)

def body2_306 : WordLangProgHOL (BitVec 64) :=
.seq body2_304 body2_305

def body2_307 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_306

def body2_308 : WordLangProgHOL (BitVec 64) :=
.seq body2_302 body2_307

def body2_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body2_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body2_311 : WordLangProgHOL (BitVec 64) :=
.seq body2_310 body2_32

def body2_312 : WordLangProgHOL (BitVec 64) :=
.seq body2_309 body2_311

def body2_313 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_312

def body2_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body2_315 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_314

def body2_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(525, 517)]

def body2_317 : WordLangProgHOL (BitVec 64) :=
.seq body2_315 body2_316

def body2_318 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_317

def body2_319 : WordLangProgHOL (BitVec 64) :=
.seq body2_313 body2_318

def body2_320 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body2_308, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body2_319, 834, 13))

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_298 body2_320

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_297 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
.seq body2_296 body2_322

def body2_324 : WordLangProgHOL (BitVec 64) :=
.seq body2_323 body2_19

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_325

def body2_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_326 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 1#64)

def body2_330 : WordLangProgHOL (BitVec 64) :=
.seq body2_329 body2_19

def body2_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 1#64)

def body2_332 : WordLangProgHOL (BitVec 64) :=
.seq body2_330 body2_331

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body2_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_335 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
.seq body2_334 body2_337

def body2_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body2_340 : WordLangProgHOL (BitVec 64) :=
.seq body2_338 body2_339

def body2_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body2_342 : WordLangProgHOL (BitVec 64) :=
.seq body2_341 body2_32

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_340 body2_342

def body2_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(561, 553), (557, 537)]

def body2_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(565, 541)]

def body2_346 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_345

def body2_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 549)]

def body2_348 : WordLangProgHOL (BitVec 64) :=
.seq body2_346 body2_347

def body2_349 : WordLangProgHOL (BitVec 64) :=
.seq body2_344 body2_348

def body2_350 : WordLangProgHOL (BitVec 64) :=
.seq body2_343 body2_349

def body2_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(561, 525), (557, 529)]

def body2_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)

def body2_353 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_352

def body2_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64)

def body2_355 : WordLangProgHOL (BitVec 64) :=
.seq body2_353 body2_354

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_351 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_356

def body2_358 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body2_350 body2_357

def body2_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64)

def body2_360 : WordLangProgHOL (BitVec 64) :=
.seq body2_359 body2_19

def body2_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)

def body2_362 : WordLangProgHOL (BitVec 64) :=
.seq body2_360 body2_361

def body2_363 : WordLangProgHOL (BitVec 64) :=
.seq body2_358 body2_362

def body2_364 : WordLangProgHOL (BitVec 64) :=
.seq body2_328 body2_363

def body2_365 : WordLangProgHOL (BitVec 64) :=
.seq body2_364 body2_19

def body2_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body2_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body2_368 : WordLangProgHOL (BitVec 64) :=
.seq body2_366 body2_367

def body2_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body2_370 : WordLangProgHOL (BitVec 64) :=
.seq body2_368 body2_369

def body2_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body2_372 : WordLangProgHOL (BitVec 64) :=
.seq body2_370 body2_371

def body2_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body2_374 : WordLangProgHOL (BitVec 64) :=
.seq body2_372 body2_373

def body2_375 : WordLangProgHOL (BitVec 64) :=
.seq body2_365 body2_374

def body2_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 509)]

def body2_377 : WordLangProgHOL (BitVec 64) :=
.seq body2_375 body2_376

def body2_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body2_379 : WordLangProgHOL (BitVec 64) :=
.seq body2_377 body2_378

def body2_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597)]

def body2_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body2_382 : WordLangProgHOL (BitVec 64) :=
.seq body2_380 body2_381

def body2_383 : WordLangProgHOL (BitVec 64) :=
.seq body2_379 body2_382

def body2_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 613 Flapjack.WordStore.heapLength

def body2_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 617 613 (Flapjack.WordRegImm.imm 1#64)))

def body2_386 : WordLangProgHOL (BitVec 64) :=
.seq body2_384 body2_385

def body2_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 621 617

def body2_388 : WordLangProgHOL (BitVec 64) :=
.seq body2_386 body2_387

def body2_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body2_390 : WordLangProgHOL (BitVec 64) :=
.seq body2_388 body2_389

def body2_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body2_392 : WordLangProgHOL (BitVec 64) :=
.seq body2_390 body2_391

def body2_393 : WordLangProgHOL (BitVec 64) :=
.seq body2_383 body2_392

def body2_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 128#64)

def body2_395 : WordLangProgHOL (BitVec 64) :=
.seq body2_393 body2_394

def body2_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_395 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body2_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body2_400 : WordLangProgHOL (BitVec 64) :=
.seq body2_398 body2_399

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_397 body2_400

def body2_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body2_403 : WordLangProgHOL (BitVec 64) :=
.seq body2_401 body2_402

def body2_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body2_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body2_406 : WordLangProgHOL (BitVec 64) :=
.seq body2_404 body2_405

def body2_407 : WordLangProgHOL (BitVec 64) :=
.seq body2_403 body2_406

def body2_408 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_407

def pass2 : WordLangProgHOL (BitVec 64) := body2_408
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_14

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_18

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_18

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(135, 37), (139, 61)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 135), (149, 139)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2), (157, 4)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 157)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_28

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_48, 834, 2)) (some 94) ([2, 4]) (some (2, body3_57, 834, 3))

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_18

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_28

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body3_77 body3_31

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_18

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_18

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 173)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 145), (243, 149), (247, 233)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 239), (257, 243), (261, 247)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 265)]

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 269)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_28

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_92, 834, 4)) (some 831) ([2]) (some (2, body3_99, 834, 5))

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_18

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_106 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 0)]

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 293)]

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 273)]

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 297), (4, 301)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 0)]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 309)]

def body3_125 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(327, 253), (331, 257), (335, 281)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 327), (345, 331), (349, 335)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 2)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353)]

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 2)]

def body3_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 361)]

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_28

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_135 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_134, 834, 6)) (some 94) ([2, 4]) (some (2, body3_141, 834, 7))

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_142

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_18

def body3_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 373)]

def body3_148 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_147

def body3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(383, 341), (387, 345), (391, 349)]

def body3_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 377)]

def body3_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2)]

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413)]

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_28

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_151 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body3_151, 834, 8)) (some 472) ([2]) (some (2, body3_156, 834, 9))

def body3_158 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_157

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_149 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_160 body3_18

def body3_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_161 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 397), (439, 401), (443, 405)]

def body3_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429)]

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 435), (453, 439), (457, 443)]

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_167

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 461)]

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_169

def body3_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 2)]

def body3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_172 body3_28

def body3_174 : WordLangProgHOL (BitVec 64) :=
.seq body3_171 body3_173

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_175 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_170, 834, 10)) (some 68) ([2]) (some (2, body3_177, 834, 11))

def body3_179 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_178

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_164 body3_179

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_18

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body3_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body3_185 : WordLangProgHOL (BitVec 64) :=
.seq body3_183 body3_184

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_185

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 457)]

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 473)]

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_189

def body3_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 449), (499, 489)]

def body3_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 485), (6, 489)]

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body3_197 : WordLangProgHOL (BitVec 64) :=
.seq body3_195 body3_196

def body3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_199 body3_28

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_198 body3_200

def body3_202 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_201

def body3_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_202 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body3_197, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body3_204, 834, 13))

def body3_206 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_205

def body3_207 : WordLangProgHOL (BitVec 64) :=
.seq body3_191 body3_206

def body3_208 : WordLangProgHOL (BitVec 64) :=
.seq body3_190 body3_207

def body3_209 : WordLangProgHOL (BitVec 64) :=
.seq body3_208 body3_18

def body3_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body3_211 : WordLangProgHOL (BitVec 64) :=
.seq body3_209 body3_210

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_212

def body3_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body3_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body3_218 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_217

def body3_219 : WordLangProgHOL (BitVec 64) :=
.seq body3_215 body3_218

def body3_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body3_221 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_220

def body3_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body3_223 : WordLangProgHOL (BitVec 64) :=
.seq body3_222 body3_28

def body3_224 : WordLangProgHOL (BitVec 64) :=
.seq body3_221 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body3_224 body3_31

def body3_226 : WordLangProgHOL (BitVec 64) :=
.seq body3_225 body3_18

def body3_227 : WordLangProgHOL (BitVec 64) :=
.seq body3_213 body3_226

def body3_228 : WordLangProgHOL (BitVec 64) :=
.seq body3_227 body3_18

def body3_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body3_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_229 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body3_233 : WordLangProgHOL (BitVec 64) :=
.seq body3_231 body3_232

def body3_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body3_235 : WordLangProgHOL (BitVec 64) :=
.seq body3_233 body3_234

def body3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body3_237 : WordLangProgHOL (BitVec 64) :=
.seq body3_235 body3_236

def body3_238 : WordLangProgHOL (BitVec 64) :=
.seq body3_228 body3_237

def body3_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 509)]

def body3_240 : WordLangProgHOL (BitVec 64) :=
.seq body3_238 body3_239

def body3_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body3_242 : WordLangProgHOL (BitVec 64) :=
.seq body3_240 body3_241

def body3_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597)]

def body3_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body3_245 : WordLangProgHOL (BitVec 64) :=
.seq body3_243 body3_244

def body3_246 : WordLangProgHOL (BitVec 64) :=
.seq body3_242 body3_245

def body3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 613 Flapjack.WordStore.heapLength

def body3_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 617 613 (Flapjack.WordRegImm.imm 1#64)))

def body3_249 : WordLangProgHOL (BitVec 64) :=
.seq body3_247 body3_248

def body3_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 621 617

def body3_251 : WordLangProgHOL (BitVec 64) :=
.seq body3_249 body3_250

def body3_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body3_253 : WordLangProgHOL (BitVec 64) :=
.seq body3_251 body3_252

def body3_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body3_255 : WordLangProgHOL (BitVec 64) :=
.seq body3_253 body3_254

def body3_256 : WordLangProgHOL (BitVec 64) :=
.seq body3_246 body3_255

def body3_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body3_258 : WordLangProgHOL (BitVec 64) :=
.seq body3_256 body3_257

def body3_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body3_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body3_261 : WordLangProgHOL (BitVec 64) :=
.seq body3_259 body3_260

def body3_262 : WordLangProgHOL (BitVec 64) :=
.seq body3_258 body3_261

def body3_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body3_264 : WordLangProgHOL (BitVec 64) :=
.seq body3_262 body3_263

def body3_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body3_267 : WordLangProgHOL (BitVec 64) :=
.seq body3_265 body3_266

def body3_268 : WordLangProgHOL (BitVec 64) :=
.seq body3_264 body3_267

def body3_269 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_268

def pass3 : WordLangProgHOL (BitVec 64) := body3_269
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_14

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_18

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_18

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(135, 37), (139, 61)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 135), (149, 139)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2), (157, 4)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 157)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_28

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_48, 834, 2)) (some 94) ([2, 4]) (some (2, body4_57, 834, 3))

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_18

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_28

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body4_77 body4_31

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_18

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_18

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 173)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 145), (243, 149), (247, 233)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 239), (257, 243), (261, 247)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 265)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 269)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_28

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_92, 834, 4)) (some 831) ([2]) (some (2, body4_99, 834, 5))

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_18

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_106 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 0)]

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 293)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 273)]

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 297), (4, 301)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 0)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 309)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(327, 253), (331, 257), (335, 281)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 327), (345, 331), (349, 335)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 2)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353)]

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 2)]

def body4_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 361)]

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_28

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_135 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_134, 834, 6)) (some 94) ([2, 4]) (some (2, body4_141, 834, 7))

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_142

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_18

def body4_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 373)]

def body4_148 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_147

def body4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(383, 341), (387, 345), (391, 349)]

def body4_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 377)]

def body4_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2)]

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413)]

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_28

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_151 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body4_151, 834, 8)) (some 472) ([2]) (some (2, body4_156, 834, 9))

def body4_158 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_157

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_149 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_160 body4_18

def body4_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_161 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 397), (439, 401), (443, 405)]

def body4_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429)]

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 435), (453, 439), (457, 443)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_167

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 461)]

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_169

def body4_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 2)]

def body4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_172 body4_28

def body4_174 : WordLangProgHOL (BitVec 64) :=
.seq body4_171 body4_173

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_175 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_170, 834, 10)) (some 68) ([2]) (some (2, body4_177, 834, 11))

def body4_179 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_178

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_164 body4_179

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_18

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body4_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body4_185 : WordLangProgHOL (BitVec 64) :=
.seq body4_183 body4_184

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_185

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 457)]

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 473)]

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_189

def body4_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 449), (499, 489)]

def body4_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 485), (6, 489)]

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body4_197 : WordLangProgHOL (BitVec 64) :=
.seq body4_195 body4_196

def body4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_199 body4_28

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_198 body4_200

def body4_202 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_201

def body4_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_202 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body4_197, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body4_204, 834, 13))

def body4_206 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_205

def body4_207 : WordLangProgHOL (BitVec 64) :=
.seq body4_191 body4_206

def body4_208 : WordLangProgHOL (BitVec 64) :=
.seq body4_190 body4_207

def body4_209 : WordLangProgHOL (BitVec 64) :=
.seq body4_208 body4_18

def body4_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body4_211 : WordLangProgHOL (BitVec 64) :=
.seq body4_209 body4_210

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_212

def body4_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body4_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body4_218 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_217

def body4_219 : WordLangProgHOL (BitVec 64) :=
.seq body4_215 body4_218

def body4_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body4_221 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_220

def body4_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body4_223 : WordLangProgHOL (BitVec 64) :=
.seq body4_222 body4_28

def body4_224 : WordLangProgHOL (BitVec 64) :=
.seq body4_221 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body4_224 body4_31

def body4_226 : WordLangProgHOL (BitVec 64) :=
.seq body4_225 body4_18

def body4_227 : WordLangProgHOL (BitVec 64) :=
.seq body4_213 body4_226

def body4_228 : WordLangProgHOL (BitVec 64) :=
.seq body4_227 body4_18

def body4_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body4_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_229 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body4_233 : WordLangProgHOL (BitVec 64) :=
.seq body4_231 body4_232

def body4_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body4_235 : WordLangProgHOL (BitVec 64) :=
.seq body4_233 body4_234

def body4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body4_237 : WordLangProgHOL (BitVec 64) :=
.seq body4_235 body4_236

def body4_238 : WordLangProgHOL (BitVec 64) :=
.seq body4_228 body4_237

def body4_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 509)]

def body4_240 : WordLangProgHOL (BitVec 64) :=
.seq body4_238 body4_239

def body4_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body4_242 : WordLangProgHOL (BitVec 64) :=
.seq body4_240 body4_241

def body4_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597)]

def body4_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body4_245 : WordLangProgHOL (BitVec 64) :=
.seq body4_243 body4_244

def body4_246 : WordLangProgHOL (BitVec 64) :=
.seq body4_242 body4_245

def body4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 581)]

def body4_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(617, 585)]

def body4_249 : WordLangProgHOL (BitVec 64) :=
.seq body4_247 body4_248

def body4_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 589)]

def body4_251 : WordLangProgHOL (BitVec 64) :=
.seq body4_249 body4_250

def body4_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body4_253 : WordLangProgHOL (BitVec 64) :=
.seq body4_251 body4_252

def body4_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body4_255 : WordLangProgHOL (BitVec 64) :=
.seq body4_253 body4_254

def body4_256 : WordLangProgHOL (BitVec 64) :=
.seq body4_246 body4_255

def body4_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body4_258 : WordLangProgHOL (BitVec 64) :=
.seq body4_256 body4_257

def body4_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body4_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body4_261 : WordLangProgHOL (BitVec 64) :=
.seq body4_259 body4_260

def body4_262 : WordLangProgHOL (BitVec 64) :=
.seq body4_258 body4_261

def body4_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body4_264 : WordLangProgHOL (BitVec 64) :=
.seq body4_262 body4_263

def body4_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body4_267 : WordLangProgHOL (BitVec 64) :=
.seq body4_265 body4_266

def body4_268 : WordLangProgHOL (BitVec 64) :=
.seq body4_264 body4_267

def body4_269 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_268

def pass4 : WordLangProgHOL (BitVec 64) := body4_269
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_14

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_18

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_18

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(135, 37), (139, 61)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 135), (149, 139)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2), (157, 4)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 157)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_28

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_48, 834, 2)) (some 94) ([2, 4]) (some (2, body5_57, 834, 3))

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_18

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_28

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body5_77 body5_31

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_18

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_18

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 173)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 145), (243, 149), (247, 233)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 239), (257, 243), (261, 247)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 265)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 269)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_28

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_92, 834, 4)) (some 831) ([2]) (some (2, body5_99, 834, 5))

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_18

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_106 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 0)]

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 293)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 273)]

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 297), (4, 301)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 0)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 309)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(327, 253), (331, 257), (335, 281)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 327), (345, 331), (349, 335)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 2)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353)]

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 2)]

def body5_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 361)]

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_28

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_135 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_134, 834, 6)) (some 94) ([2, 4]) (some (2, body5_141, 834, 7))

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_142

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_18

def body5_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 373)]

def body5_148 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_147

def body5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(383, 341), (387, 345), (391, 349)]

def body5_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 377)]

def body5_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body5_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2)]

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413)]

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_28

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_151 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body5_151, 834, 8)) (some 472) ([2]) (some (2, body5_156, 834, 9))

def body5_158 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_157

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_149 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_160 body5_18

def body5_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_161 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 397), (439, 401), (443, 405)]

def body5_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429)]

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 435), (453, 439), (457, 443)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_167

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 461)]

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_169

def body5_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 2)]

def body5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_172 body5_28

def body5_174 : WordLangProgHOL (BitVec 64) :=
.seq body5_171 body5_173

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_175 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_170, 834, 10)) (some 68) ([2]) (some (2, body5_177, 834, 11))

def body5_179 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_178

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_164 body5_179

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_18

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body5_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body5_185 : WordLangProgHOL (BitVec 64) :=
.seq body5_183 body5_184

def body5_186 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_185

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 457)]

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 473)]

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_189

def body5_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 449), (499, 489)]

def body5_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 485), (6, 489)]

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body5_197 : WordLangProgHOL (BitVec 64) :=
.seq body5_195 body5_196

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body5_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_199 body5_28

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_198 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_201

def body5_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body5_204 : WordLangProgHOL (BitVec 64) :=
.seq body5_202 body5_203

def body5_205 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body5_197, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body5_204, 834, 13))

def body5_206 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_205

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_191 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
.seq body5_190 body5_207

def body5_209 : WordLangProgHOL (BitVec 64) :=
.seq body5_208 body5_18

def body5_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body5_211 : WordLangProgHOL (BitVec 64) :=
.seq body5_209 body5_210

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body5_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body5_218 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_217

def body5_219 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_218

def body5_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body5_221 : WordLangProgHOL (BitVec 64) :=
.seq body5_219 body5_220

def body5_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body5_223 : WordLangProgHOL (BitVec 64) :=
.seq body5_222 body5_28

def body5_224 : WordLangProgHOL (BitVec 64) :=
.seq body5_221 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body5_224 body5_31

def body5_226 : WordLangProgHOL (BitVec 64) :=
.seq body5_225 body5_18

def body5_227 : WordLangProgHOL (BitVec 64) :=
.seq body5_213 body5_226

def body5_228 : WordLangProgHOL (BitVec 64) :=
.seq body5_227 body5_18

def body5_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body5_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_229 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body5_233 : WordLangProgHOL (BitVec 64) :=
.seq body5_231 body5_232

def body5_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body5_235 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_234

def body5_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body5_237 : WordLangProgHOL (BitVec 64) :=
.seq body5_235 body5_236

def body5_238 : WordLangProgHOL (BitVec 64) :=
.seq body5_228 body5_237

def body5_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 509)]

def body5_240 : WordLangProgHOL (BitVec 64) :=
.seq body5_238 body5_239

def body5_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body5_242 : WordLangProgHOL (BitVec 64) :=
.seq body5_240 body5_241

def body5_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597)]

def body5_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body5_245 : WordLangProgHOL (BitVec 64) :=
.seq body5_243 body5_244

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_242 body5_245

def body5_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 581)]

def body5_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(617, 585)]

def body5_249 : WordLangProgHOL (BitVec 64) :=
.seq body5_247 body5_248

def body5_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 589)]

def body5_251 : WordLangProgHOL (BitVec 64) :=
.seq body5_249 body5_250

def body5_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body5_253 : WordLangProgHOL (BitVec 64) :=
.seq body5_251 body5_252

def body5_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body5_255 : WordLangProgHOL (BitVec 64) :=
.seq body5_253 body5_254

def body5_256 : WordLangProgHOL (BitVec 64) :=
.seq body5_246 body5_255

def body5_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body5_258 : WordLangProgHOL (BitVec 64) :=
.seq body5_256 body5_257

def body5_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body5_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body5_261 : WordLangProgHOL (BitVec 64) :=
.seq body5_259 body5_260

def body5_262 : WordLangProgHOL (BitVec 64) :=
.seq body5_258 body5_261

def body5_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body5_264 : WordLangProgHOL (BitVec 64) :=
.seq body5_262 body5_263

def body5_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body5_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body5_267 : WordLangProgHOL (BitVec 64) :=
.seq body5_265 body5_266

def body5_268 : WordLangProgHOL (BitVec 64) :=
.seq body5_264 body5_267

def body5_269 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_268

def pass5 : WordLangProgHOL (BitVec 64) := body5_269
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_14

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_18

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_18

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(135, 37), (139, 61)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(145, 135), (149, 139)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2), (157, 4)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 157)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 153)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_28

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_48, 834, 2)) (some 94) ([2, 4]) (some (2, body6_57, 834, 3))

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_18

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_28

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body6_77 body6_31

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_18

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_18

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(229, 173)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 229)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 145), (243, 149), (247, 233)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 239), (257, 243), (261, 247)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 265)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 269)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_28

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_92, 834, 4)) (some 831) ([2]) (some (2, body6_99, 834, 5))

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_18

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_106 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body6_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 0)]

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(297, 293)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 273)]

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 297), (4, 301)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 0)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 309)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(327, 253), (331, 257), (335, 281)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 327), (345, 331), (349, 335)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(353, 2)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 353)]

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 2)]

def body6_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 361)]

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_28

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_135 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_134, 834, 6)) (some 94) ([2, 4]) (some (2, body6_141, 834, 7))

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_142

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_18

def body6_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 373)]

def body6_148 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_147

def body6_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(383, 341), (387, 345), (391, 349)]

def body6_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 377)]

def body6_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body6_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2)]

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 413)]

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_28

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_151 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body6_151, 834, 8)) (some 472) ([2]) (some (2, body6_156, 834, 9))

def body6_158 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_157

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_149 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_160 body6_18

def body6_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_161 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(435, 397), (439, 401), (443, 405)]

def body6_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429)]

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(449, 435), (453, 439), (457, 443)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_167

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 461)]

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_169

def body6_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 2)]

def body6_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 465)]

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_172 body6_28

def body6_174 : WordLangProgHOL (BitVec 64) :=
.seq body6_171 body6_173

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_175 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_170, 834, 10)) (some 68) ([2]) (some (2, body6_177, 834, 11))

def body6_179 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_178

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_164 body6_179

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_18

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body6_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body6_185 : WordLangProgHOL (BitVec 64) :=
.seq body6_183 body6_184

def body6_186 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_185

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(485, 457)]

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 473)]

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_189

def body6_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(495, 449), (499, 489)]

def body6_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 485), (6, 489)]

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(505, 495), (509, 499)]

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 2)]

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 513)]

def body6_197 : WordLangProgHOL (BitVec 64) :=
.seq body6_195 body6_196

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(517, 2)]

def body6_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 517)]

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_199 body6_28

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_198 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_201

def body6_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def body6_204 : WordLangProgHOL (BitVec 64) :=
.seq body6_202 body6_203

def body6_205 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body6_197, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body6_204, 834, 13))

def body6_206 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_205

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_191 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
.seq body6_190 body6_207

def body6_209 : WordLangProgHOL (BitVec 64) :=
.seq body6_208 body6_18

def body6_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body6_211 : WordLangProgHOL (BitVec 64) :=
.seq body6_209 body6_210

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body6_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body6_218 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_217

def body6_219 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_218

def body6_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body6_221 : WordLangProgHOL (BitVec 64) :=
.seq body6_219 body6_220

def body6_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body6_223 : WordLangProgHOL (BitVec 64) :=
.seq body6_222 body6_28

def body6_224 : WordLangProgHOL (BitVec 64) :=
.seq body6_221 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body6_224 body6_31

def body6_226 : WordLangProgHOL (BitVec 64) :=
.seq body6_225 body6_18

def body6_227 : WordLangProgHOL (BitVec 64) :=
.seq body6_213 body6_226

def body6_228 : WordLangProgHOL (BitVec 64) :=
.seq body6_227 body6_18

def body6_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body6_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_229 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body6_233 : WordLangProgHOL (BitVec 64) :=
.seq body6_231 body6_232

def body6_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body6_235 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_234

def body6_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body6_237 : WordLangProgHOL (BitVec 64) :=
.seq body6_235 body6_236

def body6_238 : WordLangProgHOL (BitVec 64) :=
.seq body6_228 body6_237

def body6_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 509)]

def body6_240 : WordLangProgHOL (BitVec 64) :=
.seq body6_238 body6_239

def body6_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 601)]

def body6_242 : WordLangProgHOL (BitVec 64) :=
.seq body6_240 body6_241

def body6_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597)]

def body6_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body6_245 : WordLangProgHOL (BitVec 64) :=
.seq body6_243 body6_244

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_242 body6_245

def body6_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 581)]

def body6_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(617, 585)]

def body6_249 : WordLangProgHOL (BitVec 64) :=
.seq body6_247 body6_248

def body6_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 589)]

def body6_251 : WordLangProgHOL (BitVec 64) :=
.seq body6_249 body6_250

def body6_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body6_253 : WordLangProgHOL (BitVec 64) :=
.seq body6_251 body6_252

def body6_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body6_255 : WordLangProgHOL (BitVec 64) :=
.seq body6_253 body6_254

def body6_256 : WordLangProgHOL (BitVec 64) :=
.seq body6_246 body6_255

def body6_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body6_258 : WordLangProgHOL (BitVec 64) :=
.seq body6_256 body6_257

def body6_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body6_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body6_261 : WordLangProgHOL (BitVec 64) :=
.seq body6_259 body6_260

def body6_262 : WordLangProgHOL (BitVec 64) :=
.seq body6_258 body6_261

def body6_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body6_264 : WordLangProgHOL (BitVec 64) :=
.seq body6_262 body6_263

def body6_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body6_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body6_267 : WordLangProgHOL (BitVec 64) :=
.seq body6_265 body6_266

def body6_268 : WordLangProgHOL (BitVec 64) :=
.seq body6_264 body6_267

def body6_269 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_268

def pass6 : WordLangProgHOL (BitVec 64) := body6_269
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_16

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_19

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body7_22 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129), (135, 37), (139, 61)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2), (169, 4), (153, 2), (157, 4), (145, 135), (149, 139)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (161, 2), (145, 135), (149, 139)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_16

def body7_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_28, 834, 2)) (some 94) ([2, 4]) (some (2, body7_30, 834, 3))

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_16

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body7_44 body7_23

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 173), (239, 145), (243, 149), (247, 173), (233, 173), (229, 173)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2), (265, 2), (253, 239), (257, 243), (261, 247)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (269, 2), (253, 239), (257, 243), (261, 247)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_16

def body7_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_47, 834, 4)) (some 831) ([2]) (some (2, body7_49, 834, 5))

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 273), (301, 273), (297, 0), (293, 0)]

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(313, 0), (309, 0)]

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321), (327, 253), (331, 257), (335, 281)]

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2), (353, 2), (341, 327), (345, 331), (349, 335)]

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (361, 2), (341, 327), (345, 331), (349, 335)]

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_16

def body7_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_59, 834, 6)) (some 94) ([2, 4]) (some (2, body7_61, 834, 7))

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373), (383, 341), (387, 345), (391, 349), (377, 373)]

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (413, 2), (397, 383), (401, 387), (405, 391)]

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_16

def body7_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body7_64, 834, 8)) (some 472) ([2]) (some (2, body7_66, 834, 9))

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429), (435, 397), (439, 401), (443, 405)]

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2), (461, 2), (449, 435), (453, 439), (457, 443)]

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (465, 2), (449, 435), (453, 439), (457, 443)]

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_16

def body7_73 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_70, 834, 10)) (some 68) ([2]) (some (2, body7_72, 834, 11))

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body7_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body7_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 457), (6, 473), (495, 449), (499, 473), (489, 473), (485, 457)]

def body7_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 2), (513, 2), (505, 495), (509, 499)]

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (517, 2), (505, 495), (509, 499)]

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_16

def body7_80 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body7_77, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body7_79, 834, 13))

def body7_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body7_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body7_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body7_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body7_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body7_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body7_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_87 body7_16

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_86 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_85 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_84 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_83 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body7_93 body7_23

def body7_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body7_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body7_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body7_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body7_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body7_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597), (605, 509), (601, 509)]

def body7_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body7_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 589), (617, 585), (613, 581)]

def body7_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body7_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body7_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body7_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body7_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body7_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body7_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body7_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body7_111 : WordLangProgHOL (BitVec 64) :=
.seq body7_109 body7_110

def body7_112 : WordLangProgHOL (BitVec 64) :=
.seq body7_108 body7_111

def body7_113 : WordLangProgHOL (BitVec 64) :=
.seq body7_107 body7_112

def body7_114 : WordLangProgHOL (BitVec 64) :=
.seq body7_106 body7_113

def body7_115 : WordLangProgHOL (BitVec 64) :=
.seq body7_105 body7_114

def body7_116 : WordLangProgHOL (BitVec 64) :=
.seq body7_104 body7_115

def body7_117 : WordLangProgHOL (BitVec 64) :=
.seq body7_103 body7_116

def body7_118 : WordLangProgHOL (BitVec 64) :=
.seq body7_102 body7_117

def body7_119 : WordLangProgHOL (BitVec 64) :=
.seq body7_101 body7_118

def body7_120 : WordLangProgHOL (BitVec 64) :=
.seq body7_100 body7_119

def body7_121 : WordLangProgHOL (BitVec 64) :=
.seq body7_99 body7_120

def body7_122 : WordLangProgHOL (BitVec 64) :=
.seq body7_98 body7_121

def body7_123 : WordLangProgHOL (BitVec 64) :=
.seq body7_97 body7_122

def body7_124 : WordLangProgHOL (BitVec 64) :=
.seq body7_96 body7_123

def body7_125 : WordLangProgHOL (BitVec 64) :=
.seq body7_95 body7_124

def body7_126 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_125

def body7_127 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_126

def body7_128 : WordLangProgHOL (BitVec 64) :=
.seq body7_94 body7_127

def body7_129 : WordLangProgHOL (BitVec 64) :=
.seq body7_82 body7_128

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_81 body7_129

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
.seq body7_80 body7_131

def body7_133 : WordLangProgHOL (BitVec 64) :=
.seq body7_76 body7_132

def body7_134 : WordLangProgHOL (BitVec 64) :=
.seq body7_75 body7_133

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_74 body7_134

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_135

def body7_137 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_136

def body7_138 : WordLangProgHOL (BitVec 64) :=
.seq body7_69 body7_137

def body7_139 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_138

def body7_140 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_139

def body7_141 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_140

def body7_142 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_141

def body7_143 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_142

def body7_144 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_143

def body7_145 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_144

def body7_146 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_145

def body7_147 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_146

def body7_148 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_147

def body7_149 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_148

def body7_150 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_149

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_150

def body7_152 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_151

def body7_153 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_152

def body7_154 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_153

def body7_155 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_154

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_160

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_173

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_176

def body7_178 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_177

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_178

def pass7 : WordLangProgHOL (BitVec 64) := body7_179
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(37, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 53 (Flapjack.WordLangAddr.addr 49 18446744073709551360#64))

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 57 (Flapjack.WordLangAddr.addr 53 112#64))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 65 (Flapjack.WordLangAddr.addr 61 96#64))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 65)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 0#64)

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 10#64)

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 85)]

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 89)

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 8#64)

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_16

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_19

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 69 (Flapjack.WordRegImm.reg 73) body8_22 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 69)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 160#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 121), (4, 129), (135, 37), (139, 61)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2), (169, 4), (145, 135), (149, 139)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (145, 135), (149, 139)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_16

def body8_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_28, 834, 2)) (some 94) ([2, 4]) (some (2, body8_30, 834, 3))

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 169)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 10#64)

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 193)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 197)

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 8#64)

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_16

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 177 (Flapjack.WordRegImm.reg 181) body8_44 body8_23

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 173), (239, 145), (243, 149), (247, 173)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2), (253, 239), (257, 243), (261, 247)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (253, 239), (257, 243), (261, 247)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_16

def body8_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_47, 834, 4)) (some 831) ([2]) (some (2, body8_49, 834, 5))

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 261)]

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 12000#64)

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 281), (4, 285)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 273)]

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(313, 0)]

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 321 1000#64)

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 313), (4, 321), (327, 253), (331, 257), (335, 281)]

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2), (341, 327), (345, 331), (349, 335)]

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (341, 327), (345, 331), (349, 335)]

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_16

def body8_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_59, 834, 6)) (some 94) ([2, 4]) (some (2, body8_61, 834, 7))

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373), (383, 341), (387, 345), (391, 349)]

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 383), (401, 387), (405, 391)]

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (397, 383), (401, 387), (405, 391)]

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_16

def body8_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body8_64, 834, 8)) (some 472) ([2]) (some (2, body8_66, 834, 9))

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 128#64)

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 429), (435, 397), (439, 401), (443, 405)]

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(473, 2), (449, 435), (453, 439), (457, 443)]

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (449, 435), (453, 439), (457, 443)]

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_16

def body8_73 : WordLangProgHOL (BitVec 64) :=
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
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_70, 834, 10)) (some 68) ([2]) (some (2, body8_72, 834, 11))

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 453)]

def body8_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 88#64))

def body8_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481), (4, 457), (6, 473), (495, 449), (499, 473)]

def body8_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 2), (505, 495), (509, 499)]

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (505, 495), (509, 499)]

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_16

def body8_80 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body8_77, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body8_79, 834, 13))

def body8_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 521)]

def body8_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)

def body8_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 10#64)

def body8_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 545)]

def body8_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 549)

def body8_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 8#64)

def body8_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 553)]

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_87 body8_16

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_86 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_85 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_84 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_83 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 529 (Flapjack.WordRegImm.reg 533) body8_93 body8_23

def body8_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 581 Flapjack.WordStore.heapLength

def body8_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 585 581 (Flapjack.WordRegImm.imm 1#64)))

def body8_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 589 585

def body8_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 593 (Flapjack.WordLangAddr.addr 589 18446744073709551360#64))

def body8_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 597 593 (Flapjack.WordRegImm.imm 120#64)))

def body8_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(609, 597), (605, 509)]

def body8_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 605 (Flapjack.WordLangAddr.addr 609 0#64))

def body8_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 589)]

def body8_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 18446744073709551360#64))

def body8_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 629 625 (Flapjack.WordRegImm.imm 128#64)))

def body8_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 128#64)

def body8_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body8_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))

def body8_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)

def body8_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 645)]

def body8_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 505 [2]

def body8_111 : WordLangProgHOL (BitVec 64) :=
.seq body8_109 body8_110

def body8_112 : WordLangProgHOL (BitVec 64) :=
.seq body8_108 body8_111

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_107 body8_112

def body8_114 : WordLangProgHOL (BitVec 64) :=
.seq body8_106 body8_113

def body8_115 : WordLangProgHOL (BitVec 64) :=
.seq body8_105 body8_114

def body8_116 : WordLangProgHOL (BitVec 64) :=
.seq body8_104 body8_115

def body8_117 : WordLangProgHOL (BitVec 64) :=
.seq body8_103 body8_116

def body8_118 : WordLangProgHOL (BitVec 64) :=
.seq body8_102 body8_117

def body8_119 : WordLangProgHOL (BitVec 64) :=
.seq body8_101 body8_118

def body8_120 : WordLangProgHOL (BitVec 64) :=
.seq body8_100 body8_119

def body8_121 : WordLangProgHOL (BitVec 64) :=
.seq body8_99 body8_120

def body8_122 : WordLangProgHOL (BitVec 64) :=
.seq body8_98 body8_121

def body8_123 : WordLangProgHOL (BitVec 64) :=
.seq body8_97 body8_122

def body8_124 : WordLangProgHOL (BitVec 64) :=
.seq body8_96 body8_123

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_95 body8_124

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_125

def body8_127 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_126

def body8_128 : WordLangProgHOL (BitVec 64) :=
.seq body8_94 body8_127

def body8_129 : WordLangProgHOL (BitVec 64) :=
.seq body8_82 body8_128

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_81 body8_129

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
.seq body8_80 body8_131

def body8_133 : WordLangProgHOL (BitVec 64) :=
.seq body8_76 body8_132

def body8_134 : WordLangProgHOL (BitVec 64) :=
.seq body8_75 body8_133

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_74 body8_134

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_135

def body8_137 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_136

def body8_138 : WordLangProgHOL (BitVec 64) :=
.seq body8_69 body8_137

def body8_139 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_138

def body8_140 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_139

def body8_141 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_140

def body8_142 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_141

def body8_143 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_142

def body8_144 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_143

def body8_145 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_144

def body8_146 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_145

def body8_147 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_146

def body8_148 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_147

def body8_149 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_148

def body8_150 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_149

def body8_151 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_150

def body8_152 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_151

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_153

def body8_155 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_154

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_160

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_173

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_176

def body8_178 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_177

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_178

def pass8 : WordLangProgHOL (BitVec 64) := body8_179
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) body10_22 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (46, 46)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_16

def body10_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_28, 834, 2)) (some 94) ([2, 4]) (some (2, body10_30, 834, 3))

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_18

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) body10_39 body10_23

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 6)]

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (8, 48)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_16

def body10_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_42, 834, 4)) (some 831) ([2]) (some (2, body10_44, 834, 5))

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12000#64)

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 10)]

def body10_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0)]

def body10_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1000#64)

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 8)]

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_16

def body10_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_54, 834, 6)) (some 94) ([2, 4]) (some (2, body10_56, 834, 7))

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def body10_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_59, 834, 8)) (some 472) ([2]) (some (2, body10_56, 834, 9))

def body10_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def body10_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def body10_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_16

def body10_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_62, 834, 10)) (some 68) ([2]) (some (2, body10_64, 834, 11))

def body10_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def body10_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def body10_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def body10_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_69 body10_16

def body10_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_68, 834, 12)) (some 823) ([2, 4, 6]) (some (2, body10_70, 834, 13))

def body10_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_39 body10_23

def body10_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def body10_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def body10_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def body10_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def body10_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_82 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_81 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_80 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_79 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_78 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_77 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_74 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_73 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_72 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_102

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_103

def body10_105 : WordLangProgHOL (BitVec 64) :=
.seq body10_71 body10_104

def body10_106 : WordLangProgHOL (BitVec 64) :=
.seq body10_67 body10_105

def body10_107 : WordLangProgHOL (BitVec 64) :=
.seq body10_66 body10_106

def body10_108 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_107

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_108

def body10_110 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_109

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_110

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_112

def body10_114 : WordLangProgHOL (BitVec 64) :=
.seq body10_60 body10_113

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_117

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_119

def body10_121 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_120

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_124

def body10_126 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_125

def body10_127 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_127

def body10_129 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_128

def body10_130 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_129

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_130

def body10_132 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_131

def body10_133 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_132

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_135

def body10_137 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_137

def body10_139 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_138

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_141

def body10_143 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_142

def body10_144 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_143

def body10_145 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_144

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_145

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_151

def pass10 : WordLangProgHOL (BitVec 64) := body10_152
end InitECandidate.Proofs.SmallStages.Compact834
