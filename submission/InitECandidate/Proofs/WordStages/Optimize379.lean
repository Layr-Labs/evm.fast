import InitECandidate.Proofs.WordStages.Optimize363
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source379
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody379_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (50, 2), (52, 6)]

def optimizedBody379_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody379_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody379_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody379_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_2 optimizedBody379_3

def optimizedBody379_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody379_1, 379, 2)) (some 69) ([]) (some (2, optimizedBody379_4, 379, 3))

def optimizedBody379_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody379_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody379_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52)]

def optimizedBody379_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (46, 48), (0, 50), (52, 52)]

def optimizedBody379_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50), (52, 52)]

def optimizedBody379_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_10 optimizedBody379_3

def optimizedBody379_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody379_9, 379, 4)) (some 68) ([2]) (some (2, optimizedBody379_11, 379, 5))

def optimizedBody379_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 0), (52, 52)]

def optimizedBody379_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 2), (44, 44), (46, 46), (4, 48), (0, 50), (22, 52)]

def optimizedBody379_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (22, 52)]

def optimizedBody379_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_15 optimizedBody379_3

def optimizedBody379_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody379_14, 379, 6)) (some 378) ([2, 4, 6]) (some (2, optimizedBody379_16, 379, 7))

def optimizedBody379_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody379_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 320#64))

def optimizedBody379_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody379_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 328#64))

def optimizedBody379_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 336#64))

def optimizedBody379_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 344#64))

def optimizedBody379_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 352#64))

def optimizedBody379_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 360#64))

def optimizedBody379_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 368#64))

def optimizedBody379_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 376#64))

def optimizedBody379_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (44, 44),
    (46, 46)]

def optimizedBody379_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody379_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody379_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_30 optimizedBody379_3

def optimizedBody379_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody379_29, 379, 8)) (some 231) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]) (some (2, optimizedBody379_31, 379, 9))

def optimizedBody379_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody379_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody379_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody379_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_35 optimizedBody379_3

def optimizedBody379_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody379_34, 379, 10)) (some 70) ([2]) (some (2, optimizedBody379_36, 379, 11))

def optimizedBody379_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody379_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 46#64)

def optimizedBody379_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody379_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody379_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody379_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_42 optimizedBody379_3

def optimizedBody379_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_41 optimizedBody379_43

def optimizedBody379_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_40 optimizedBody379_44

def optimizedBody379_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_45

def optimizedBody379_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_39 optimizedBody379_46

def optimizedBody379_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_47

def optimizedBody379_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody379_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody379_48 optimizedBody379_49

def optimizedBody379_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody379_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody379_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_51 optimizedBody379_52

def optimizedBody379_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_38 optimizedBody379_53

def optimizedBody379_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_54

def optimizedBody379_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_55

def optimizedBody379_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_50 optimizedBody379_56

def optimizedBody379_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_38 optimizedBody379_57

def optimizedBody379_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_58

def optimizedBody379_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_59

def optimizedBody379_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_37 optimizedBody379_60

def optimizedBody379_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_33 optimizedBody379_61

def optimizedBody379_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_62

def optimizedBody379_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_32 optimizedBody379_63

def optimizedBody379_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_28 optimizedBody379_64

def optimizedBody379_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_27 optimizedBody379_65

def optimizedBody379_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_66

def optimizedBody379_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_26 optimizedBody379_67

def optimizedBody379_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_68

def optimizedBody379_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_25 optimizedBody379_69

def optimizedBody379_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_70

def optimizedBody379_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_24 optimizedBody379_71

def optimizedBody379_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_72

def optimizedBody379_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_23 optimizedBody379_73

def optimizedBody379_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_74

def optimizedBody379_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_22 optimizedBody379_75

def optimizedBody379_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_76

def optimizedBody379_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_21 optimizedBody379_77

def optimizedBody379_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_20 optimizedBody379_78

def optimizedBody379_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_19 optimizedBody379_79

def optimizedBody379_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_18 optimizedBody379_80

def optimizedBody379_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_81

def optimizedBody379_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_17 optimizedBody379_82

def optimizedBody379_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_13 optimizedBody379_83

def optimizedBody379_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_84

def optimizedBody379_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_12 optimizedBody379_85

def optimizedBody379_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_8 optimizedBody379_86

def optimizedBody379_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_7 optimizedBody379_87

def optimizedBody379_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_6 optimizedBody379_88

def optimizedBody379_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_5 optimizedBody379_89

def optimizedBody379_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody379_0 optimizedBody379_90

def oracle379 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.ls 25)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 26 (Flapjack.Spt.ls 26))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.ls 24))))))))
def optimized379 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(379, 4, optimizedBody379_91)
theorem optimize379_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source379, oracle379) = optimized379 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize379_eq
end InitECandidate.Proofs.WordStages
