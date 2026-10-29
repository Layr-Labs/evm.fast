import InitECandidate.Proofs.WordStages.Optimize717
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source733
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody733_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(28, 2), (0, 0), (26, 4)]

def optimizedBody733_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody733_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody733_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 28 8#64))

def optimizedBody733_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 28 16#64))

def optimizedBody733_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 28 24#64))

def optimizedBody733_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 28 32#64))

def optimizedBody733_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 28 40#64))

def optimizedBody733_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody733_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody733_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 26 8#64))

def optimizedBody733_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 26 16#64))

def optimizedBody733_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 26 24#64))

def optimizedBody733_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 26 32#64))

def optimizedBody733_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 26 40#64))

def optimizedBody733_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 26), (48, 28)]

def optimizedBody733_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (24, 46), (12, 48)]

def optimizedBody733_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (24, 46), (12, 48)]

def optimizedBody733_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody733_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_17 optimizedBody733_18

def optimizedBody733_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody733_16, 733, 2)) (some 706) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody733_19, 733, 3))

def optimizedBody733_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody733_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody733_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody733_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody733_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody733_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_24 optimizedBody733_25

def optimizedBody733_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_23 optimizedBody733_26

def optimizedBody733_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_21 optimizedBody733_27

def optimizedBody733_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody733_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody733_28 optimizedBody733_29

def optimizedBody733_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody733_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody733_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody733_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 64#64))

def optimizedBody733_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody733_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody733_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody733_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody733_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 24 48#64))

def optimizedBody733_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 24 56#64))

def optimizedBody733_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 24 64#64))

def optimizedBody733_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 24 72#64))

def optimizedBody733_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 24 80#64))

def optimizedBody733_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 88#64))

def optimizedBody733_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody733_46 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 706) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody733_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_45 optimizedBody733_46

def optimizedBody733_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_44 optimizedBody733_47

def optimizedBody733_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_38 optimizedBody733_48

def optimizedBody733_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_43 optimizedBody733_49

def optimizedBody733_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_38 optimizedBody733_50

def optimizedBody733_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_42 optimizedBody733_51

def optimizedBody733_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_38 optimizedBody733_52

def optimizedBody733_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_41 optimizedBody733_53

def optimizedBody733_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_38 optimizedBody733_54

def optimizedBody733_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_40 optimizedBody733_55

def optimizedBody733_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_38 optimizedBody733_56

def optimizedBody733_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_39 optimizedBody733_57

def optimizedBody733_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_38 optimizedBody733_58

def optimizedBody733_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_37 optimizedBody733_59

def optimizedBody733_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_31 optimizedBody733_60

def optimizedBody733_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_36 optimizedBody733_61

def optimizedBody733_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_31 optimizedBody733_62

def optimizedBody733_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_35 optimizedBody733_63

def optimizedBody733_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_31 optimizedBody733_64

def optimizedBody733_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_34 optimizedBody733_65

def optimizedBody733_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_31 optimizedBody733_66

def optimizedBody733_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_33 optimizedBody733_67

def optimizedBody733_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_31 optimizedBody733_68

def optimizedBody733_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_32 optimizedBody733_69

def optimizedBody733_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_31 optimizedBody733_70

def optimizedBody733_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_21 optimizedBody733_71

def optimizedBody733_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_21 optimizedBody733_72

def optimizedBody733_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_30 optimizedBody733_73

def optimizedBody733_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_23 optimizedBody733_74

def optimizedBody733_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_22 optimizedBody733_75

def optimizedBody733_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_21 optimizedBody733_76

def optimizedBody733_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_20 optimizedBody733_77

def optimizedBody733_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_15 optimizedBody733_78

def optimizedBody733_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_14 optimizedBody733_79

def optimizedBody733_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_8 optimizedBody733_80

def optimizedBody733_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_13 optimizedBody733_81

def optimizedBody733_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_8 optimizedBody733_82

def optimizedBody733_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_12 optimizedBody733_83

def optimizedBody733_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_8 optimizedBody733_84

def optimizedBody733_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_11 optimizedBody733_85

def optimizedBody733_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_8 optimizedBody733_86

def optimizedBody733_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_10 optimizedBody733_87

def optimizedBody733_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_8 optimizedBody733_88

def optimizedBody733_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_9 optimizedBody733_89

def optimizedBody733_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_8 optimizedBody733_90

def optimizedBody733_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_7 optimizedBody733_91

def optimizedBody733_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_2 optimizedBody733_92

def optimizedBody733_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_6 optimizedBody733_93

def optimizedBody733_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_2 optimizedBody733_94

def optimizedBody733_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_5 optimizedBody733_95

def optimizedBody733_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_2 optimizedBody733_96

def optimizedBody733_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_4 optimizedBody733_97

def optimizedBody733_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_2 optimizedBody733_98

def optimizedBody733_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_3 optimizedBody733_99

def optimizedBody733_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_2 optimizedBody733_100

def optimizedBody733_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_1 optimizedBody733_101

def optimizedBody733_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody733_0 optimizedBody733_102

def oracle733 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)) 14 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 14
                (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 13 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 14 (Flapjack.Spt.ls 13))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 13 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 14 (Flapjack.Spt.ls 13))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 13 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 14 (Flapjack.Spt.ls 13))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 14 (Flapjack.Spt.ls 6))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 4 (Flapjack.Spt.ls 12))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 13
                (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 8 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 6 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 3 (Flapjack.Spt.ls 11))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 7 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 1 (Flapjack.Spt.ls 9))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 5 (Flapjack.Spt.ls 12)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized733 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(733, 3, optimizedBody733_103)
theorem optimize733_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source733, oracle733) = optimized733 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize733_eq
end InitECandidate.Proofs.WordStages
