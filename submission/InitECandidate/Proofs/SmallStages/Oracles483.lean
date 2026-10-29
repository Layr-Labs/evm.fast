import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles483
def optimizedBody483_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 32), (48, 24), (52, 20),
    (54, 28), (56, 18), (58, 26), (60, 22), (62, 30)]

def optimizedBody483_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (18, 2), (20, 44), (16, 46), (8, 48), (22, 52), (12, 54), (24, 56), (10, 58), (6, 60), (14, 62)]

def optimizedBody483_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (20, 44), (16, 46), (8, 48), (22, 52), (12, 54), (24, 56), (10, 58), (6, 60), (14, 62)]

def optimizedBody483_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody483_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_2 optimizedBody483_3

def optimizedBody483_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody483_1, 483, 2)) (some 482) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody483_4, 483, 3))

def optimizedBody483_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody483_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody483_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody483_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 4)]

def optimizedBody483_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2, 4]

def optimizedBody483_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_9 optimizedBody483_10

def optimizedBody483_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_11

def optimizedBody483_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 4), (50, 18)]

def optimizedBody483_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 2) optimizedBody483_12 optimizedBody483_13

def optimizedBody483_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody483_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody483_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody483_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody483_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody483_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody483_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody483_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody483_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody483_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (4, 4)]

def optimizedBody483_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody483_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 22), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 20), (46, 0), (48, 2), (50, 50)]

def optimizedBody483_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (4, 4), (16, 44), (6, 46), (14, 48), (10, 50)]

def optimizedBody483_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (6, 46), (14, 48), (10, 50)]

def optimizedBody483_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_28 optimizedBody483_3

def optimizedBody483_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody483_27, 483, 4)) (some 482) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody483_29, 483, 5))

def optimizedBody483_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody483_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody483_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody483_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody483_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody483_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 4)]

def optimizedBody483_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody483_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_36 optimizedBody483_37

def optimizedBody483_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_38

def optimizedBody483_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 12), (0, 4)]

def optimizedBody483_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody483_39 optimizedBody483_40

def optimizedBody483_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody483_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody483_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody483_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody483_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody483_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_46 optimizedBody483_37

def optimizedBody483_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_45 optimizedBody483_47

def optimizedBody483_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_44 optimizedBody483_48

def optimizedBody483_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_43 optimizedBody483_49

def optimizedBody483_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_42 optimizedBody483_50

def optimizedBody483_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_51

def optimizedBody483_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_52

def optimizedBody483_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_41 optimizedBody483_53

def optimizedBody483_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_8 optimizedBody483_54

def optimizedBody483_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_35 optimizedBody483_55

def optimizedBody483_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_34 optimizedBody483_56

def optimizedBody483_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_33 optimizedBody483_57

def optimizedBody483_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_32 optimizedBody483_58

def optimizedBody483_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_31 optimizedBody483_59

def optimizedBody483_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_17 optimizedBody483_60

def optimizedBody483_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_16 optimizedBody483_61

def optimizedBody483_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_15 optimizedBody483_62

def optimizedBody483_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_63

def optimizedBody483_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_30 optimizedBody483_64

def optimizedBody483_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_26 optimizedBody483_65

def optimizedBody483_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_25 optimizedBody483_66

def optimizedBody483_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_24 optimizedBody483_67

def optimizedBody483_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_23 optimizedBody483_68

def optimizedBody483_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_22 optimizedBody483_69

def optimizedBody483_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_21 optimizedBody483_70

def optimizedBody483_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_20 optimizedBody483_71

def optimizedBody483_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_19 optimizedBody483_72

def optimizedBody483_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_18 optimizedBody483_73

def optimizedBody483_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_17 optimizedBody483_74

def optimizedBody483_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_16 optimizedBody483_75

def optimizedBody483_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_15 optimizedBody483_76

def optimizedBody483_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_77

def optimizedBody483_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_78

def optimizedBody483_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_14 optimizedBody483_79

def optimizedBody483_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_8 optimizedBody483_80

def optimizedBody483_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_7 optimizedBody483_81

def optimizedBody483_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_82

def optimizedBody483_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_5 optimizedBody483_83

def optimizedBody483_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_0 optimizedBody483_84

def oracle483 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 16)))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 9)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 11 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 12 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))))
def optimized483 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(483, 17, optimizedBody483_85)
end InitECandidate.Proofs.SmallStages.Oracles483
