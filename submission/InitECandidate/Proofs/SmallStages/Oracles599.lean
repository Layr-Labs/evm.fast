import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles599
def optimizedBody599_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody599_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody599_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody599_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody599_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_2 optimizedBody599_3

def optimizedBody599_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody599_1, 599, 2)) (some 476) ([]) (some (2, optimizedBody599_4, 599, 3))

def optimizedBody599_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody599_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody599_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody599_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody599_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody599_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody599_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_11 optimizedBody599_3

def optimizedBody599_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody599_10, 599, 4)) (some 606) ([2]) (some (2, optimizedBody599_12, 599, 5))

def optimizedBody599_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody599_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody599_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody599_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody599_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody599_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody599_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody599_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody599_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody599_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody599_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody599_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody599_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody599_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody599_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody599_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_27 optimizedBody599_28

def optimizedBody599_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_26 optimizedBody599_29

def optimizedBody599_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_25 optimizedBody599_30

def optimizedBody599_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_24 optimizedBody599_31

def optimizedBody599_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_23 optimizedBody599_32

def optimizedBody599_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_19 optimizedBody599_33

def optimizedBody599_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_22 optimizedBody599_34

def optimizedBody599_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_21 optimizedBody599_35

def optimizedBody599_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_20 optimizedBody599_36

def optimizedBody599_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_19 optimizedBody599_37

def optimizedBody599_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_18 optimizedBody599_38

def optimizedBody599_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_17 optimizedBody599_39

def optimizedBody599_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_16 optimizedBody599_40

def optimizedBody599_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_15 optimizedBody599_41

def optimizedBody599_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_14 optimizedBody599_42

def optimizedBody599_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_6 optimizedBody599_43

def optimizedBody599_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_13 optimizedBody599_44

def optimizedBody599_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_9 optimizedBody599_45

def optimizedBody599_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_6 optimizedBody599_46

def optimizedBody599_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody599_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody599_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody599_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody599_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody599_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody599_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody599_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody599_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_54 optimizedBody599_55

def optimizedBody599_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_53 optimizedBody599_56

def optimizedBody599_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_52 optimizedBody599_57

def optimizedBody599_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_51 optimizedBody599_58

def optimizedBody599_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_50 optimizedBody599_59

def optimizedBody599_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_49 optimizedBody599_60

def optimizedBody599_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_48 optimizedBody599_61

def optimizedBody599_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_6 optimizedBody599_62

def optimizedBody599_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody599_47 optimizedBody599_63

def optimizedBody599_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody599_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody599_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody599_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody599_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody599_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_26 optimizedBody599_69

def optimizedBody599_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_68 optimizedBody599_70

def optimizedBody599_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_27 optimizedBody599_71

def optimizedBody599_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_26 optimizedBody599_72

def optimizedBody599_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_67 optimizedBody599_73

def optimizedBody599_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_66 optimizedBody599_74

def optimizedBody599_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_65 optimizedBody599_75

def optimizedBody599_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_16 optimizedBody599_76

def optimizedBody599_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_15 optimizedBody599_77

def optimizedBody599_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_14 optimizedBody599_78

def optimizedBody599_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_6 optimizedBody599_79

def optimizedBody599_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_64 optimizedBody599_80

def optimizedBody599_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_8 optimizedBody599_81

def optimizedBody599_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_7 optimizedBody599_82

def optimizedBody599_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_6 optimizedBody599_83

def optimizedBody599_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_5 optimizedBody599_84

def optimizedBody599_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody599_0 optimizedBody599_85

def oracle599 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 0
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def optimized599 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(599, 2, optimizedBody599_86)
end InitECandidate.Proofs.SmallStages.Oracles599
