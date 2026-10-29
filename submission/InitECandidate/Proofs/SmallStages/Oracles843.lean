import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source843
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles843
def optimizedBody843_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody843_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody843_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody843_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody843_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody843_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody843_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody843_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody843_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2)]

def optimizedBody843_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody843_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody843_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody843_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_10 optimizedBody843_11

def optimizedBody843_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_9, 843, 2)) (some 467) ([2]) (some (2, optimizedBody843_12, 843, 3))

def optimizedBody843_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody843_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody843_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12#64)

def optimizedBody843_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody843_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody843_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 60#64)))

def optimizedBody843_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody843_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_20, 843, 4)) (some 472) ([2]) (some (2, optimizedBody843_12, 843, 5))

def optimizedBody843_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody843_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody843_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody843_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_24 optimizedBody843_11

def optimizedBody843_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_23, 843, 6)) (some 68) ([2]) (some (2, optimizedBody843_25, 843, 7))

def optimizedBody843_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody843_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody843_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody843_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody843_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_30 optimizedBody843_11

def optimizedBody843_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_29, 843, 8)) (some 153) ([2, 4, 6]) (some (2, optimizedBody843_31, 843, 9))

def optimizedBody843_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody843_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody843_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody843_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody843_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody843_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody843_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody843_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody843_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody843_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody843_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody843_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody843_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody843_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_44 optimizedBody843_45

def optimizedBody843_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_43 optimizedBody843_46

def optimizedBody843_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_42 optimizedBody843_47

def optimizedBody843_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_15 optimizedBody843_48

def optimizedBody843_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_22 optimizedBody843_49

def optimizedBody843_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_41 optimizedBody843_50

def optimizedBody843_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_40 optimizedBody843_51

def optimizedBody843_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_0 optimizedBody843_52

def optimizedBody843_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_39 optimizedBody843_53

def optimizedBody843_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_38 optimizedBody843_54

def optimizedBody843_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_37 optimizedBody843_55

def optimizedBody843_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_36 optimizedBody843_56

def optimizedBody843_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_35 optimizedBody843_57

def optimizedBody843_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_34 optimizedBody843_58

def optimizedBody843_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_33 optimizedBody843_59

def optimizedBody843_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_14 optimizedBody843_60

def optimizedBody843_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_32 optimizedBody843_61

def optimizedBody843_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_28 optimizedBody843_62

def optimizedBody843_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_27 optimizedBody843_63

def optimizedBody843_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_15 optimizedBody843_64

def optimizedBody843_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_14 optimizedBody843_65

def optimizedBody843_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_26 optimizedBody843_66

def optimizedBody843_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_10 optimizedBody843_67

def optimizedBody843_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_22 optimizedBody843_68

def optimizedBody843_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_14 optimizedBody843_69

def optimizedBody843_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_21 optimizedBody843_70

def optimizedBody843_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_10 optimizedBody843_71

def optimizedBody843_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_19 optimizedBody843_72

def optimizedBody843_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_0 optimizedBody843_73

def optimizedBody843_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_18 optimizedBody843_74

def optimizedBody843_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_17 optimizedBody843_75

def optimizedBody843_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_16 optimizedBody843_76

def optimizedBody843_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_15 optimizedBody843_77

def optimizedBody843_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_14 optimizedBody843_78

def optimizedBody843_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_13 optimizedBody843_79

def optimizedBody843_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_8 optimizedBody843_80

def optimizedBody843_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_7 optimizedBody843_81

def optimizedBody843_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_82

def optimizedBody843_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_5 optimizedBody843_83

def optimizedBody843_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_4 optimizedBody843_84

def optimizedBody843_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_3 optimizedBody843_85

def optimizedBody843_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_2 optimizedBody843_86

def optimizedBody843_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_1 optimizedBody843_87

def optimizedBody843_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_0 optimizedBody843_88

def oracle843 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23 (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))))
            0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 22 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 22 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))))))
def optimized843 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(843, 1, optimizedBody843_89)
end InitECandidate.Proofs.SmallStages.Oracles843
