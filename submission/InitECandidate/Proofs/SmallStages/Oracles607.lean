import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source607
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles607
def optimizedBody607_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody607_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody607_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody607_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody607_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody607_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody607_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody607_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody607_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody607_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 152#64))

def optimizedBody607_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody607_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody607_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 2)]

def optimizedBody607_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody607_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody607_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody607_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_14 optimizedBody607_15

def optimizedBody607_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_13, 607, 2)) (some 595) ([]) (some (2, optimizedBody607_16, 607, 3))

def optimizedBody607_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody607_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody607_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody607_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody607_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46)]

def optimizedBody607_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody607_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_23 optimizedBody607_15

def optimizedBody607_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_22, 607, 4)) (some 475) ([2]) (some (2, optimizedBody607_24, 607, 5))

def optimizedBody607_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 200#64)))

def optimizedBody607_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody607_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody607_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody607_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody607_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody607_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody607_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody607_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody607_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody607_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody607_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody607_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody607_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_37 optimizedBody607_38

def optimizedBody607_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_36 optimizedBody607_39

def optimizedBody607_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_35 optimizedBody607_40

def optimizedBody607_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_34 optimizedBody607_41

def optimizedBody607_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_33 optimizedBody607_42

def optimizedBody607_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_0 optimizedBody607_43

def optimizedBody607_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_32 optimizedBody607_44

def optimizedBody607_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_31 optimizedBody607_45

def optimizedBody607_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_30 optimizedBody607_46

def optimizedBody607_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_21 optimizedBody607_47

def optimizedBody607_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_0 optimizedBody607_48

def optimizedBody607_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_29 optimizedBody607_49

def optimizedBody607_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_8 optimizedBody607_50

def optimizedBody607_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_28 optimizedBody607_51

def optimizedBody607_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_27 optimizedBody607_52

def optimizedBody607_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_26 optimizedBody607_53

def optimizedBody607_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_21 optimizedBody607_54

def optimizedBody607_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_20 optimizedBody607_55

def optimizedBody607_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_19 optimizedBody607_56

def optimizedBody607_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_18 optimizedBody607_57

def optimizedBody607_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_58

def optimizedBody607_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_25 optimizedBody607_59

def optimizedBody607_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_14 optimizedBody607_60

def optimizedBody607_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_21 optimizedBody607_61

def optimizedBody607_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_20 optimizedBody607_62

def optimizedBody607_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_19 optimizedBody607_63

def optimizedBody607_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_18 optimizedBody607_64

def optimizedBody607_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_65

def optimizedBody607_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_17 optimizedBody607_66

def optimizedBody607_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_12 optimizedBody607_67

def optimizedBody607_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_68

def optimizedBody607_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody607_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_70

def optimizedBody607_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody607_69 optimizedBody607_71

def optimizedBody607_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody607_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody607_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody607_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_75 optimizedBody607_15

def optimizedBody607_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_74, 607, 6)) (some 596) ([]) (some (2, optimizedBody607_76, 607, 7))

def optimizedBody607_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody607_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_6 optimizedBody607_78

def optimizedBody607_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_35 optimizedBody607_79

def optimizedBody607_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_80

def optimizedBody607_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_77 optimizedBody607_81

def optimizedBody607_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_73 optimizedBody607_82

def optimizedBody607_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_83

def optimizedBody607_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_72 optimizedBody607_84

def optimizedBody607_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_10 optimizedBody607_85

def optimizedBody607_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_9 optimizedBody607_86

def optimizedBody607_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_8 optimizedBody607_87

def optimizedBody607_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_7 optimizedBody607_88

def optimizedBody607_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_6 optimizedBody607_89

def optimizedBody607_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_90

def optimizedBody607_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_4 optimizedBody607_91

def optimizedBody607_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_3 optimizedBody607_92

def optimizedBody607_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_2 optimizedBody607_93

def optimizedBody607_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_1 optimizedBody607_94

def optimizedBody607_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_0 optimizedBody607_95

def oracle607 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 3)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.ls 23)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))
def optimized607 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(607, 1, optimizedBody607_96)
end InitECandidate.Proofs.SmallStages.Oracles607
