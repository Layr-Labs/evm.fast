import InitECandidate.Proofs.WordStages.Optimize435
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source451
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody451_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6)]

def optimizedBody451_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody451_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody451_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody451_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody451_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody451_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (10, 10), (16, 4), (8, 8), (46, 2), (12, 12), (2, 6)]

def optimizedBody451_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody451_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 12), (4, 16), (16, 16), (12, 12)]

def optimizedBody451_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody451_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody451_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody451_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody451_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 12)]

def optimizedBody451_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody451_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 16), (16, 16)]

def optimizedBody451_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 16), (16, 16), (48, 8), (2, 0)]

def optimizedBody451_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2), (0, 0)]

def optimizedBody451_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody451_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody451_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody451_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 16), (44, 44), (46, 48), (48, 46)]

def optimizedBody451_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (8, 46), (4, 48)]

def optimizedBody451_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (4, 48)]

def optimizedBody451_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody451_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_23 optimizedBody451_24

def optimizedBody451_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_22, 451, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody451_25, 451, 3))

def optimizedBody451_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8), (4, 4)]

def optimizedBody451_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_27

def optimizedBody451_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_26 optimizedBody451_28

def optimizedBody451_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_21 optimizedBody451_29

def optimizedBody451_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_20 optimizedBody451_30

def optimizedBody451_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_19 optimizedBody451_31

def optimizedBody451_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_18 optimizedBody451_32

def optimizedBody451_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_17 optimizedBody451_33

def optimizedBody451_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_9 optimizedBody451_34

def optimizedBody451_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_35

def optimizedBody451_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_9 optimizedBody451_36

def optimizedBody451_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_15 optimizedBody451_37

def optimizedBody451_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_38

def optimizedBody451_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (8, 8), (4, 46)]

def optimizedBody451_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_40

def optimizedBody451_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody451_39 optimizedBody451_41

def optimizedBody451_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody451_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody451_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody451_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody451_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody451_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody451_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody451_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_2 optimizedBody451_49

def optimizedBody451_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_48 optimizedBody451_50

def optimizedBody451_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_47 optimizedBody451_51

def optimizedBody451_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_46 optimizedBody451_52

def optimizedBody451_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_53

def optimizedBody451_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_45 optimizedBody451_54

def optimizedBody451_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_44 optimizedBody451_55

def optimizedBody451_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_43 optimizedBody451_56

def optimizedBody451_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_57

def optimizedBody451_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_42 optimizedBody451_58

def optimizedBody451_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_59

def optimizedBody451_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_60

def optimizedBody451_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_61

def optimizedBody451_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(28, 44), (26, 10), (24, 16), (22, 8), (20, 46), (14, 12), (18, 2)]

def optimizedBody451_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody451_62 optimizedBody451_63

def optimizedBody451_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody451_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody451_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 28), (10, 26), (16, 24), (8, 22), (46, 20), (12, 12), (2, 18)]

def optimizedBody451_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody451_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_67 optimizedBody451_68

def optimizedBody451_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_66 optimizedBody451_69

def optimizedBody451_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_65 optimizedBody451_70

def optimizedBody451_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_71

def optimizedBody451_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_72

def optimizedBody451_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_64 optimizedBody451_73

def optimizedBody451_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_2 optimizedBody451_74

def optimizedBody451_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_12 optimizedBody451_75

def optimizedBody451_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_11 optimizedBody451_76

def optimizedBody451_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_10 optimizedBody451_77

def optimizedBody451_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_9 optimizedBody451_78

def optimizedBody451_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_8 optimizedBody451_79

def optimizedBody451_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_80

def optimizedBody451_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody451_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_82

def optimizedBody451_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 8) optimizedBody451_81 optimizedBody451_83

def optimizedBody451_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (10, 10), (16, 16), (8, 8), (46, 4), (12, 12), (2, 2)]

def optimizedBody451_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_85

def optimizedBody451_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_84 optimizedBody451_86

def optimizedBody451_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_7 optimizedBody451_87

def optimizedBody451_89 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody451_88 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody451_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody451_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_2 optimizedBody451_90

def optimizedBody451_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_48 optimizedBody451_91

def optimizedBody451_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_92

def optimizedBody451_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_89 optimizedBody451_93

def optimizedBody451_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_6 optimizedBody451_94

def optimizedBody451_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_95

def optimizedBody451_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_4 optimizedBody451_96

def optimizedBody451_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_3 optimizedBody451_97

def optimizedBody451_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_2 optimizedBody451_98

def optimizedBody451_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_1 optimizedBody451_99

def optimizedBody451_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_0 optimizedBody451_100

def oracle451 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
              1 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 8 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)) 6
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 6 (Flapjack.Spt.ls 4)) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 6
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 1)) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8 (Flapjack.Spt.ls 0)))
              4 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 2)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
def optimized451 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(451, 4, optimizedBody451_101)
theorem optimize451_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source451, oracle451) = optimized451 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize451_eq
end InitECandidate.Proofs.WordStages
