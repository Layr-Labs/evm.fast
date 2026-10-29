import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles416
def optimizedBody416_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody416_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody416_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody416_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody416_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody416_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody416_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody416_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (8, 44), (0, 46)]

def optimizedBody416_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46)]

def optimizedBody416_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody416_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_8 optimizedBody416_9

def optimizedBody416_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody416_7, 416, 2)) (some 186) ([2, 4]) (some (2, optimizedBody416_10, 416, 3))

def optimizedBody416_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody416_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody416_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody416_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody416_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody416_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody416_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody416_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody416_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_18 optimizedBody416_19

def optimizedBody416_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_17 optimizedBody416_20

def optimizedBody416_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_21

def optimizedBody416_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody416_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody416_22 optimizedBody416_23

def optimizedBody416_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_12

def optimizedBody416_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_24 optimizedBody416_25

def optimizedBody416_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_16 optimizedBody416_26

def optimizedBody416_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_15 optimizedBody416_27

def optimizedBody416_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_14 optimizedBody416_28

def optimizedBody416_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_29

def optimizedBody416_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody416_30 optimizedBody416_12

def optimizedBody416_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody416_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 0)]

def optimizedBody416_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def optimizedBody416_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody416_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_35 optimizedBody416_9

def optimizedBody416_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody416_34, 416, 4)) (some 186) ([2, 4]) (some (2, optimizedBody416_36, 416, 5))

def optimizedBody416_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody416_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody416_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody416_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody416_22 optimizedBody416_23

def optimizedBody416_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_41 optimizedBody416_25

def optimizedBody416_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_40 optimizedBody416_42

def optimizedBody416_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_15 optimizedBody416_43

def optimizedBody416_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_39 optimizedBody416_44

def optimizedBody416_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_45

def optimizedBody416_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody416_46 optimizedBody416_12

def optimizedBody416_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def optimizedBody416_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody416_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody416_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_50 optimizedBody416_9

def optimizedBody416_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody416_49, 416, 6)) (some 398) ([2]) (some (2, optimizedBody416_51, 416, 7))

def optimizedBody416_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody416_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody416_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody416_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_55 optimizedBody416_9

def optimizedBody416_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody416_54, 416, 8)) (some 405) ([2]) (some (2, optimizedBody416_56, 416, 9))

def optimizedBody416_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody416_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody416_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_58 optimizedBody416_59

def optimizedBody416_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_60

def optimizedBody416_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_57 optimizedBody416_61

def optimizedBody416_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_53 optimizedBody416_62

def optimizedBody416_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_63

def optimizedBody416_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_52 optimizedBody416_64

def optimizedBody416_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_48 optimizedBody416_65

def optimizedBody416_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_66

def optimizedBody416_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_47 optimizedBody416_67

def optimizedBody416_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_14 optimizedBody416_68

def optimizedBody416_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_38 optimizedBody416_69

def optimizedBody416_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_70

def optimizedBody416_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_37 optimizedBody416_71

def optimizedBody416_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_33 optimizedBody416_72

def optimizedBody416_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_5 optimizedBody416_73

def optimizedBody416_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_32 optimizedBody416_74

def optimizedBody416_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_75

def optimizedBody416_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_2 optimizedBody416_76

def optimizedBody416_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_1 optimizedBody416_77

def optimizedBody416_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_78

def optimizedBody416_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_31 optimizedBody416_79

def optimizedBody416_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_14 optimizedBody416_80

def optimizedBody416_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_13 optimizedBody416_81

def optimizedBody416_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_82

def optimizedBody416_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_11 optimizedBody416_83

def optimizedBody416_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_6 optimizedBody416_84

def optimizedBody416_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_5 optimizedBody416_85

def optimizedBody416_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_4 optimizedBody416_86

def optimizedBody416_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_87

def optimizedBody416_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_2 optimizedBody416_88

def optimizedBody416_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_1 optimizedBody416_89

def optimizedBody416_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_0 optimizedBody416_90

def oracle416 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized416 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(416, 2, optimizedBody416_91)
end InitECandidate.Proofs.SmallStages.Oracles416
