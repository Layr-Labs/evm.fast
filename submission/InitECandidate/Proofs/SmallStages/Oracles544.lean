import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles544
def optimizedBody544_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody544_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody544_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody544_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody544_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody544_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody544_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_4 optimizedBody544_5

def optimizedBody544_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_3, 544, 2)) (some 472) ([2]) (some (2, optimizedBody544_6, 544, 3))

def optimizedBody544_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody544_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody544_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_9, 544, 4)) (some 542) ([]) (some (2, optimizedBody544_6, 544, 5))

def optimizedBody544_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody544_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44)]

def optimizedBody544_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_12, 544, 6)) (some 543) ([2]) (some (2, optimizedBody544_6, 544, 7))

def optimizedBody544_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody544_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody544_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody544_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody544_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody544_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody544_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody544_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody544_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody544_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody544_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody544_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_24 optimizedBody544_5

def optimizedBody544_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_23 optimizedBody544_25

def optimizedBody544_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_22 optimizedBody544_26

def optimizedBody544_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_21 optimizedBody544_27

def optimizedBody544_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_20 optimizedBody544_28

def optimizedBody544_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_29

def optimizedBody544_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody544_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody544_30 optimizedBody544_31

def optimizedBody544_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 0)]

def optimizedBody544_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody544_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody544_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody544_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody544_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody544_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody544_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody544_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody544_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody544_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody544_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody544_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_3, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody544_6, 544, 9))

def optimizedBody544_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody544_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody544_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_47 optimizedBody544_5

def optimizedBody544_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_46, 544, 10)) (some 492) ([2]) (some (2, optimizedBody544_48, 544, 11))

def optimizedBody544_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody544_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody544_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_21 optimizedBody544_51

def optimizedBody544_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_50 optimizedBody544_52

def optimizedBody544_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_53

def optimizedBody544_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_49 optimizedBody544_54

def optimizedBody544_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_4 optimizedBody544_55

def optimizedBody544_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_20 optimizedBody544_56

def optimizedBody544_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_57

def optimizedBody544_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_45 optimizedBody544_58

def optimizedBody544_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_44 optimizedBody544_59

def optimizedBody544_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_43 optimizedBody544_60

def optimizedBody544_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_0 optimizedBody544_61

def optimizedBody544_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_42 optimizedBody544_62

def optimizedBody544_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_0 optimizedBody544_63

def optimizedBody544_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_41 optimizedBody544_64

def optimizedBody544_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_40 optimizedBody544_65

def optimizedBody544_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_39 optimizedBody544_66

def optimizedBody544_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_38 optimizedBody544_67

def optimizedBody544_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_37 optimizedBody544_68

def optimizedBody544_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_36 optimizedBody544_69

def optimizedBody544_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_0 optimizedBody544_70

def optimizedBody544_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_35 optimizedBody544_71

def optimizedBody544_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_34 optimizedBody544_72

def optimizedBody544_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_33 optimizedBody544_73

def optimizedBody544_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_74

def optimizedBody544_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_75

def optimizedBody544_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_32 optimizedBody544_76

def optimizedBody544_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_19 optimizedBody544_77

def optimizedBody544_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_18 optimizedBody544_78

def optimizedBody544_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_17 optimizedBody544_79

def optimizedBody544_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_16 optimizedBody544_80

def optimizedBody544_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_15 optimizedBody544_81

def optimizedBody544_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_14 optimizedBody544_82

def optimizedBody544_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_83

def optimizedBody544_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_13 optimizedBody544_84

def optimizedBody544_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_11 optimizedBody544_85

def optimizedBody544_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_86

def optimizedBody544_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_10 optimizedBody544_87

def optimizedBody544_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_3 optimizedBody544_88

def optimizedBody544_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_89

def optimizedBody544_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_7 optimizedBody544_90

def optimizedBody544_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_2 optimizedBody544_91

def optimizedBody544_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_1 optimizedBody544_92

def optimizedBody544_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_0 optimizedBody544_93

def oracle544 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.ls 22))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized544 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(544, 1, optimizedBody544_94)
end InitECandidate.Proofs.SmallStages.Oracles544
