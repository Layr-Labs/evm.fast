import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles319
def optimizedBody319_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (12, 2), (4, 4), (6, 6)]

def optimizedBody319_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody319_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody319_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody319_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody319_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_3 optimizedBody319_4

def optimizedBody319_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_1 optimizedBody319_5

def optimizedBody319_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_6

def optimizedBody319_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody319_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody319_7 optimizedBody319_8

def optimizedBody319_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody319_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody319_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody319_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody319_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody319_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody319_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody319_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody319_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody319_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_18 optimizedBody319_4

def optimizedBody319_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_17 optimizedBody319_19

def optimizedBody319_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_16 optimizedBody319_20

def optimizedBody319_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_15 optimizedBody319_21

def optimizedBody319_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_14 optimizedBody319_22

def optimizedBody319_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_23

def optimizedBody319_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 8)]

def optimizedBody319_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody319_24 optimizedBody319_25

def optimizedBody319_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody319_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 46), (48, 4), (50, 10), (52, 6)]

def optimizedBody319_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody319_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody319_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody319_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_30 optimizedBody319_31

def optimizedBody319_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody319_29, 319, 2)) (some 288) ([2]) (some (2, optimizedBody319_32, 319, 3))

def optimizedBody319_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (4, 4), (48, 48), (6, 6)]

def optimizedBody319_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_34

def optimizedBody319_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_33 optimizedBody319_35

def optimizedBody319_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_28 optimizedBody319_36

def optimizedBody319_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_27 optimizedBody319_37

def optimizedBody319_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_38

def optimizedBody319_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (0, 46), (4, 4), (48, 10), (6, 6)]

def optimizedBody319_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_40

def optimizedBody319_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody319_39 optimizedBody319_41

def optimizedBody319_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 6), (2, 4)]

def optimizedBody319_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody319_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody319_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody319_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 48), (50, 4)]

def optimizedBody319_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 44), (8, 46), (10, 48), (4, 50)]

def optimizedBody319_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (10, 48), (4, 50)]

def optimizedBody319_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_49 optimizedBody319_31

def optimizedBody319_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody319_48, 319, 4)) (some 294) ([2, 4, 6, 8]) (some (2, optimizedBody319_50, 319, 5))

def optimizedBody319_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody319_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody319_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody319_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4), (2, 6)]

def optimizedBody319_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody319_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody319_58 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 299) ([0, 2, 4, 6]) (none)

def optimizedBody319_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_57 optimizedBody319_58

def optimizedBody319_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_56 optimizedBody319_59

def optimizedBody319_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_55 optimizedBody319_60

def optimizedBody319_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_61

def optimizedBody319_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (6, 6)]

def optimizedBody319_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody319_62 optimizedBody319_63

def optimizedBody319_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 56#64))

def optimizedBody319_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody319_67 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 298) ([0, 2, 4, 6, 8]) (none)

def optimizedBody319_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_66 optimizedBody319_67

def optimizedBody319_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_65 optimizedBody319_68

def optimizedBody319_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_10 optimizedBody319_69

def optimizedBody319_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_56 optimizedBody319_70

def optimizedBody319_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_55 optimizedBody319_71

def optimizedBody319_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_72

def optimizedBody319_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_73

def optimizedBody319_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_64 optimizedBody319_74

def optimizedBody319_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_27 optimizedBody319_75

def optimizedBody319_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_12 optimizedBody319_76

def optimizedBody319_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_54 optimizedBody319_77

def optimizedBody319_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_53 optimizedBody319_78

def optimizedBody319_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_52 optimizedBody319_79

def optimizedBody319_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_10 optimizedBody319_80

def optimizedBody319_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_81

def optimizedBody319_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_51 optimizedBody319_82

def optimizedBody319_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_47 optimizedBody319_83

def optimizedBody319_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_46 optimizedBody319_84

def optimizedBody319_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_45 optimizedBody319_85

def optimizedBody319_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_44 optimizedBody319_86

def optimizedBody319_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_43 optimizedBody319_87

def optimizedBody319_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_88

def optimizedBody319_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_42 optimizedBody319_89

def optimizedBody319_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_1 optimizedBody319_90

def optimizedBody319_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_12 optimizedBody319_91

def optimizedBody319_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_92

def optimizedBody319_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_93

def optimizedBody319_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_26 optimizedBody319_94

def optimizedBody319_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_13 optimizedBody319_95

def optimizedBody319_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_12 optimizedBody319_96

def optimizedBody319_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_11 optimizedBody319_97

def optimizedBody319_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_10 optimizedBody319_98

def optimizedBody319_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_99

def optimizedBody319_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_2 optimizedBody319_100

def optimizedBody319_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_9 optimizedBody319_101

def optimizedBody319_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_1 optimizedBody319_102

def optimizedBody319_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody319_0 optimizedBody319_103

def oracle319 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22)))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
              3
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 2)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
              4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              6 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized319 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(319, 5, optimizedBody319_104)
end InitECandidate.Proofs.SmallStages.Oracles319
