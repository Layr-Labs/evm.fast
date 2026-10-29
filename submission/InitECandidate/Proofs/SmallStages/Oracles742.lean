import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles742
def optimizedBody742_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody742_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody742_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody742_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody742_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody742_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody742_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody742_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody742_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody742_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody742_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody742_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody742_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 2 80#64))

def optimizedBody742_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody742_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (2, 2)]

def optimizedBody742_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 24)))

def optimizedBody742_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody742_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 22)))

def optimizedBody742_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody742_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 20)))

def optimizedBody742_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody742_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody742_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody742_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody742_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody742_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody742_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody742_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody742_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody742_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody742_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody742_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody742_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody742_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody742_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody742_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody742_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody742_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody742_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody742_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody742_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_39

def optimizedBody742_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_38 optimizedBody742_40

def optimizedBody742_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_37 optimizedBody742_41

def optimizedBody742_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody742_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody742_42 optimizedBody742_43

def optimizedBody742_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody742_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_45 optimizedBody742_40

def optimizedBody742_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_37 optimizedBody742_46

def optimizedBody742_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_37 optimizedBody742_47

def optimizedBody742_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_44 optimizedBody742_48

def optimizedBody742_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_36 optimizedBody742_49

def optimizedBody742_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_35 optimizedBody742_50

def optimizedBody742_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_34 optimizedBody742_51

def optimizedBody742_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_33 optimizedBody742_52

def optimizedBody742_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_32 optimizedBody742_53

def optimizedBody742_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_31 optimizedBody742_54

def optimizedBody742_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_30 optimizedBody742_55

def optimizedBody742_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_29 optimizedBody742_56

def optimizedBody742_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_28 optimizedBody742_57

def optimizedBody742_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_27 optimizedBody742_58

def optimizedBody742_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_26 optimizedBody742_59

def optimizedBody742_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_25 optimizedBody742_60

def optimizedBody742_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_24 optimizedBody742_61

def optimizedBody742_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_23 optimizedBody742_62

def optimizedBody742_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_22 optimizedBody742_63

def optimizedBody742_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_21 optimizedBody742_64

def optimizedBody742_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_20 optimizedBody742_65

def optimizedBody742_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_19 optimizedBody742_66

def optimizedBody742_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_18 optimizedBody742_67

def optimizedBody742_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_17 optimizedBody742_68

def optimizedBody742_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_16 optimizedBody742_69

def optimizedBody742_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_15 optimizedBody742_70

def optimizedBody742_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_14 optimizedBody742_71

def optimizedBody742_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_13 optimizedBody742_72

def optimizedBody742_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_73

def optimizedBody742_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_12 optimizedBody742_74

def optimizedBody742_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_75

def optimizedBody742_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_11 optimizedBody742_76

def optimizedBody742_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_77

def optimizedBody742_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_10 optimizedBody742_78

def optimizedBody742_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_79

def optimizedBody742_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_9 optimizedBody742_80

def optimizedBody742_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_81

def optimizedBody742_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_8 optimizedBody742_82

def optimizedBody742_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_83

def optimizedBody742_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_7 optimizedBody742_84

def optimizedBody742_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_85

def optimizedBody742_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_6 optimizedBody742_86

def optimizedBody742_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_87

def optimizedBody742_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_5 optimizedBody742_88

def optimizedBody742_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_89

def optimizedBody742_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_90

def optimizedBody742_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_91

def optimizedBody742_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_3 optimizedBody742_92

def optimizedBody742_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_93

def optimizedBody742_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_1 optimizedBody742_94

def optimizedBody742_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_0 optimizedBody742_95

def oracle742 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 7)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.ls 11)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 8))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 9)) 6
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 12)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 9 (Flapjack.Spt.ls 10))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 12)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))))
      Flapjack.Spt.ln))
def optimized742 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(742, 2, optimizedBody742_96)
end InitECandidate.Proofs.SmallStages.Oracles742
