import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source841
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles841
def optimizedBody841_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody841_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18#64)

def optimizedBody841_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody841_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (4, 46)]

def optimizedBody841_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46)]

def optimizedBody841_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody841_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_4 optimizedBody841_5

def optimizedBody841_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody841_3, 841, 2)) (some 80) ([2, 4]) (some (2, optimizedBody841_6, 841, 3))

def optimizedBody841_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody841_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody841_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody841_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody841_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody841_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_11 optimizedBody841_12

def optimizedBody841_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_10 optimizedBody841_13

def optimizedBody841_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_14

def optimizedBody841_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody841_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody841_15 optimizedBody841_16

def optimizedBody841_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody841_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 18#64)))

def optimizedBody841_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody841_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody841_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody841_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody841_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody841_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody841_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody841_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18#64)

def optimizedBody841_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_27 optimizedBody841_13

def optimizedBody841_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_28

def optimizedBody841_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody841_29 optimizedBody841_16

def optimizedBody841_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_15

def optimizedBody841_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_30 optimizedBody841_31

def optimizedBody841_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_26 optimizedBody841_32

def optimizedBody841_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_11 optimizedBody841_33

def optimizedBody841_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_34

def optimizedBody841_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody841_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody841_35 optimizedBody841_36

def optimizedBody841_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody841_15 optimizedBody841_16

def optimizedBody841_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody841_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody841_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody841_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody841_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_41 optimizedBody841_42

def optimizedBody841_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_43

def optimizedBody841_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_10 optimizedBody841_42

def optimizedBody841_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_45

def optimizedBody841_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody841_44 optimizedBody841_46

def optimizedBody841_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody841_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody841_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_40 optimizedBody841_49

def optimizedBody841_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_50

def optimizedBody841_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody841_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_52 optimizedBody841_49

def optimizedBody841_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_53

def optimizedBody841_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody841_51 optimizedBody841_54

def optimizedBody841_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody841_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody841_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody841_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_58 optimizedBody841_12

def optimizedBody841_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody841_59 optimizedBody841_16

def optimizedBody841_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_60 optimizedBody841_15

def optimizedBody841_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_57 optimizedBody841_61

def optimizedBody841_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_56 optimizedBody841_62

def optimizedBody841_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_63

def optimizedBody841_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_55 optimizedBody841_64

def optimizedBody841_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_39 optimizedBody841_65

def optimizedBody841_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_48 optimizedBody841_66

def optimizedBody841_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_67

def optimizedBody841_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_47 optimizedBody841_68

def optimizedBody841_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_40 optimizedBody841_69

def optimizedBody841_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_39 optimizedBody841_70

def optimizedBody841_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_71

def optimizedBody841_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_72

def optimizedBody841_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_38 optimizedBody841_73

def optimizedBody841_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_10 optimizedBody841_74

def optimizedBody841_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_9 optimizedBody841_75

def optimizedBody841_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_76

def optimizedBody841_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_77

def optimizedBody841_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_37 optimizedBody841_78

def optimizedBody841_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_25 optimizedBody841_79

def optimizedBody841_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_24 optimizedBody841_80

def optimizedBody841_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_23 optimizedBody841_81

def optimizedBody841_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_22 optimizedBody841_82

def optimizedBody841_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_21 optimizedBody841_83

def optimizedBody841_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_20 optimizedBody841_84

def optimizedBody841_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_19 optimizedBody841_85

def optimizedBody841_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_18 optimizedBody841_86

def optimizedBody841_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_87

def optimizedBody841_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_88

def optimizedBody841_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_17 optimizedBody841_89

def optimizedBody841_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_10 optimizedBody841_90

def optimizedBody841_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_9 optimizedBody841_91

def optimizedBody841_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_92

def optimizedBody841_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_7 optimizedBody841_93

def optimizedBody841_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_2 optimizedBody841_94

def optimizedBody841_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_1 optimizedBody841_95

def optimizedBody841_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_0 optimizedBody841_96

def oracle841 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
def optimized841 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(841, 2, optimizedBody841_97)
end InitECandidate.Proofs.SmallStages.Oracles841
