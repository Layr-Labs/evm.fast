import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles393
def optimizedBody393_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody393_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody393_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (0, 2)]

def optimizedBody393_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody393_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody393_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody393_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody393_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551600#64))

def optimizedBody393_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody393_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody393_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody393_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody393_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody393_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody393_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody393_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551416#64))

def optimizedBody393_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody393_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody393_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody393_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody393_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody393_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody393_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4), (2, 2)]

def optimizedBody393_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody393_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def optimizedBody393_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody393_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody393_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody393_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_26 optimizedBody393_27

def optimizedBody393_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody393_25, 393, 2)) (some 190) ([2, 4, 6]) (some (2, optimizedBody393_28, 393, 3))

def optimizedBody393_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody393_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_30

def optimizedBody393_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_29 optimizedBody393_31

def optimizedBody393_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_24 optimizedBody393_32

def optimizedBody393_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_23 optimizedBody393_33

def optimizedBody393_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_22 optimizedBody393_34

def optimizedBody393_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_35

def optimizedBody393_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody393_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody393_25, 393, 4)) (some 191) ([2, 4]) (some (2, optimizedBody393_28, 393, 5))

def optimizedBody393_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_38 optimizedBody393_31

def optimizedBody393_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_37 optimizedBody393_39

def optimizedBody393_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_40

def optimizedBody393_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 10) optimizedBody393_36 optimizedBody393_41

def optimizedBody393_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (0, 0)]

def optimizedBody393_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody393_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_43 optimizedBody393_44

def optimizedBody393_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_45

def optimizedBody393_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_42 optimizedBody393_46

def optimizedBody393_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_21 optimizedBody393_47

def optimizedBody393_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_20 optimizedBody393_48

def optimizedBody393_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_17 optimizedBody393_49

def optimizedBody393_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_19 optimizedBody393_50

def optimizedBody393_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_17 optimizedBody393_51

def optimizedBody393_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_18 optimizedBody393_52

def optimizedBody393_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_17 optimizedBody393_53

def optimizedBody393_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_16 optimizedBody393_54

def optimizedBody393_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_15 optimizedBody393_55

def optimizedBody393_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_8 optimizedBody393_56

def optimizedBody393_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_14 optimizedBody393_57

def optimizedBody393_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_7 optimizedBody393_58

def optimizedBody393_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_8 optimizedBody393_59

def optimizedBody393_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_13 optimizedBody393_60

def optimizedBody393_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_12 optimizedBody393_61

def optimizedBody393_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_11 optimizedBody393_62

def optimizedBody393_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_10 optimizedBody393_63

def optimizedBody393_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_9 optimizedBody393_64

def optimizedBody393_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_8 optimizedBody393_65

def optimizedBody393_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_66

def optimizedBody393_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody393_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_68

def optimizedBody393_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody393_67 optimizedBody393_69

def optimizedBody393_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0)]

def optimizedBody393_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_71

def optimizedBody393_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_70 optimizedBody393_72

def optimizedBody393_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_7 optimizedBody393_73

def optimizedBody393_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_6 optimizedBody393_74

def optimizedBody393_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_5 optimizedBody393_75

def optimizedBody393_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_4 optimizedBody393_76

def optimizedBody393_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_3 optimizedBody393_77

def optimizedBody393_79 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody393_78 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody393_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody393_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody393_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody393_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_81 optimizedBody393_82

def optimizedBody393_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_80 optimizedBody393_83

def optimizedBody393_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_84

def optimizedBody393_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_79 optimizedBody393_85

def optimizedBody393_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_2 optimizedBody393_86

def optimizedBody393_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_87

def optimizedBody393_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_0 optimizedBody393_88

def oracle393 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
            22
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
              0 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 0
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))
def optimized393 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(393, 2, optimizedBody393_89)
end InitECandidate.Proofs.SmallStages.Oracles393
