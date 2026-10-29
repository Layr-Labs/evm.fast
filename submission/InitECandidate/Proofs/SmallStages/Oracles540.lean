import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles540
def optimizedBody540_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody540_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody540_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody540_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody540_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551360#64))

def optimizedBody540_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody540_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody540_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody540_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody540_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody540_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody540_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody540_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody540_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody540_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody540_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody540_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody540_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody540_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody540_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody540_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody540_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody540_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody540_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody540_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody540_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 20 8#64))

def optimizedBody540_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 20 16#64))

def optimizedBody540_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 20 24#64))

def optimizedBody540_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (18, 18), (12, 12), (14, 14), (16, 16)]

def optimizedBody540_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody540_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (16, 16)]

def optimizedBody540_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody540_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody540_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody540_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody540_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody540_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (2, 2), (8, 8), (6, 6), (4, 4)]

def optimizedBody540_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody540_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (4, 4)]

def optimizedBody540_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 20 8#64))

def optimizedBody540_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (6, 6)]

def optimizedBody540_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 20 16#64))

def optimizedBody540_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (8, 8)]

def optimizedBody540_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 20 24#64))

def optimizedBody540_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody540_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody540_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_10 optimizedBody540_45

def optimizedBody540_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_44 optimizedBody540_46

def optimizedBody540_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_43 optimizedBody540_47

def optimizedBody540_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_42 optimizedBody540_48

def optimizedBody540_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_41 optimizedBody540_49

def optimizedBody540_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_40 optimizedBody540_50

def optimizedBody540_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_39 optimizedBody540_51

def optimizedBody540_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_38 optimizedBody540_52

def optimizedBody540_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_37 optimizedBody540_53

def optimizedBody540_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_36 optimizedBody540_54

def optimizedBody540_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_35 optimizedBody540_55

def optimizedBody540_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_34 optimizedBody540_56

def optimizedBody540_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_33 optimizedBody540_57

def optimizedBody540_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_32 optimizedBody540_58

def optimizedBody540_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_31 optimizedBody540_59

def optimizedBody540_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_30 optimizedBody540_60

def optimizedBody540_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_29 optimizedBody540_61

def optimizedBody540_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_28 optimizedBody540_62

def optimizedBody540_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_27 optimizedBody540_63

def optimizedBody540_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_23 optimizedBody540_64

def optimizedBody540_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_26 optimizedBody540_65

def optimizedBody540_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_23 optimizedBody540_66

def optimizedBody540_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_25 optimizedBody540_67

def optimizedBody540_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_23 optimizedBody540_68

def optimizedBody540_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_24 optimizedBody540_69

def optimizedBody540_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_23 optimizedBody540_70

def optimizedBody540_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_22 optimizedBody540_71

def optimizedBody540_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_18 optimizedBody540_72

def optimizedBody540_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_21 optimizedBody540_73

def optimizedBody540_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_18 optimizedBody540_74

def optimizedBody540_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_20 optimizedBody540_75

def optimizedBody540_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_18 optimizedBody540_76

def optimizedBody540_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_19 optimizedBody540_77

def optimizedBody540_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_18 optimizedBody540_78

def optimizedBody540_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_17 optimizedBody540_79

def optimizedBody540_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_13 optimizedBody540_80

def optimizedBody540_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_12 optimizedBody540_81

def optimizedBody540_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_16 optimizedBody540_82

def optimizedBody540_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_15 optimizedBody540_83

def optimizedBody540_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_14 optimizedBody540_84

def optimizedBody540_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_13 optimizedBody540_85

def optimizedBody540_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_12 optimizedBody540_86

def optimizedBody540_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_11 optimizedBody540_87

def optimizedBody540_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_10 optimizedBody540_88

def optimizedBody540_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_9 optimizedBody540_89

def optimizedBody540_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_8 optimizedBody540_90

def optimizedBody540_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_7 optimizedBody540_91

def optimizedBody540_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_6 optimizedBody540_92

def optimizedBody540_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_5 optimizedBody540_93

def optimizedBody540_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_4 optimizedBody540_94

def optimizedBody540_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_3 optimizedBody540_95

def optimizedBody540_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_2 optimizedBody540_96

def optimizedBody540_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_1 optimizedBody540_97

def optimizedBody540_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_0 optimizedBody540_98

def oracle540 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 10))) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 10))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 10)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 4))) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 1)) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)))))))
      Flapjack.Spt.ln))
def optimized540 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(540, 3, optimizedBody540_99)
end InitECandidate.Proofs.SmallStages.Oracles540
