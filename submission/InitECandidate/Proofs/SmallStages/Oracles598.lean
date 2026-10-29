import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles598
def optimizedBody598_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody598_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody598_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody598_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody598_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551360#64))

def optimizedBody598_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (48, 4), (52, 2), (54, 6)]

def optimizedBody598_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (52, 52), (54, 54)]

def optimizedBody598_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52), (54, 54)]

def optimizedBody598_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody598_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_7 optimizedBody598_8

def optimizedBody598_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody598_6, 598, 2)) (some 491) ([2]) (some (2, optimizedBody598_9, 598, 3))

def optimizedBody598_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody598_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 104#64)

def optimizedBody598_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (52, 52), (54, 54)]

def optimizedBody598_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54)]

def optimizedBody598_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54)]

def optimizedBody598_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_15 optimizedBody598_8

def optimizedBody598_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody598_14, 598, 4)) (some 74) ([2]) (some (2, optimizedBody598_16, 598, 5))

def optimizedBody598_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody598_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 104#64)

def optimizedBody598_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52), (54, 54)]

def optimizedBody598_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 44), (0, 46), (6, 48), (4, 50), (12, 52), (8, 54)]

def optimizedBody598_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46), (6, 48), (4, 50), (12, 52), (8, 54)]

def optimizedBody598_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_22 optimizedBody598_8

def optimizedBody598_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody598_21, 598, 6)) (some 78) ([2, 4]) (some (2, optimizedBody598_23, 598, 7))

def optimizedBody598_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody598_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody598_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody598_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody598_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody598_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody598_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody598_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody598_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody598_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody598_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody598_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody598_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody598_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody598_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody598_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody598_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody598_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody598_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody598_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody598_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody598_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody598_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody598_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody598_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_18 optimizedBody598_48

def optimizedBody598_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_47 optimizedBody598_49

def optimizedBody598_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_46 optimizedBody598_50

def optimizedBody598_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_45 optimizedBody598_51

def optimizedBody598_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_41 optimizedBody598_52

def optimizedBody598_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_44 optimizedBody598_53

def optimizedBody598_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_43 optimizedBody598_54

def optimizedBody598_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_42 optimizedBody598_55

def optimizedBody598_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_41 optimizedBody598_56

def optimizedBody598_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_40 optimizedBody598_57

def optimizedBody598_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_39 optimizedBody598_58

def optimizedBody598_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_38 optimizedBody598_59

def optimizedBody598_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_27 optimizedBody598_60

def optimizedBody598_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_37 optimizedBody598_61

def optimizedBody598_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_36 optimizedBody598_62

def optimizedBody598_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_35 optimizedBody598_63

def optimizedBody598_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_27 optimizedBody598_64

def optimizedBody598_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_34 optimizedBody598_65

def optimizedBody598_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_33 optimizedBody598_66

def optimizedBody598_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_32 optimizedBody598_67

def optimizedBody598_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_31 optimizedBody598_68

def optimizedBody598_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_30 optimizedBody598_69

def optimizedBody598_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_29 optimizedBody598_70

def optimizedBody598_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_28 optimizedBody598_71

def optimizedBody598_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_27 optimizedBody598_72

def optimizedBody598_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_26 optimizedBody598_73

def optimizedBody598_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_25 optimizedBody598_74

def optimizedBody598_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_11 optimizedBody598_75

def optimizedBody598_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_24 optimizedBody598_76

def optimizedBody598_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_20 optimizedBody598_77

def optimizedBody598_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_19 optimizedBody598_78

def optimizedBody598_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_18 optimizedBody598_79

def optimizedBody598_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_11 optimizedBody598_80

def optimizedBody598_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_17 optimizedBody598_81

def optimizedBody598_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_13 optimizedBody598_82

def optimizedBody598_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_12 optimizedBody598_83

def optimizedBody598_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_11 optimizedBody598_84

def optimizedBody598_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_10 optimizedBody598_85

def optimizedBody598_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_5 optimizedBody598_86

def optimizedBody598_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_4 optimizedBody598_87

def optimizedBody598_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_3 optimizedBody598_88

def optimizedBody598_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_2 optimizedBody598_89

def optimizedBody598_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_1 optimizedBody598_90

def optimizedBody598_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_0 optimizedBody598_91

def oracle598 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            2
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 3
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))
              3 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 26
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              3 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 24 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.ls 27)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.ls 26))))))))
def optimized598 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(598, 3, optimizedBody598_92)
end InitECandidate.Proofs.SmallStages.Oracles598
